/*
 * Copyright (c) 1990 The Regents of the University of California.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms are permitted
 * provided that the above copyright notice and this paragraph are
 * duplicated in all such forms and that any documentation,
 * and/or other materials related to such
 * distribution and use acknowledge that the software was developed
 * by the University of California, Berkeley.  The name of the
 * University may not be used to endorse or promote products derived
 * from this software without specific prior written permission.
 * THIS SOFTWARE IS PROVIDED ``AS IS'' AND WITHOUT ANY EXPRESS OR
 * IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED
 * WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.
 */
/* No user fns here.  Pesch 15apr92. */

#define _DEFAULT_SOURCE
#include <_ansi.h>
#include <stdio.h>
#include <stdlib.h>
#include <errno.h>
#include <string.h>
#include <fcntl.h>
#include <sys/lock.h>
#include "local.h"

void (*__stdio_exit_handler) (void);

#if defined(_REENT_SMALL) && !defined(_REENT_GLOBAL_STDIO_STREAMS)
const struct __sFILE_fake __sf_fake_stdin =
    {_NULL, 0, 0, 0, 0, {_NULL, 0}, 0, _NULL};
const struct __sFILE_fake __sf_fake_stdout =
    {_NULL, 0, 0, 0, 0, {_NULL, 0}, 0, _NULL};
const struct __sFILE_fake __sf_fake_stderr =
    {_NULL, 0, 0, 0, 0, {_NULL, 0}, 0, _NULL};
#endif

#ifdef _REENT_GLOBAL_STDIO_STREAMS
__FILE __sf[3];
struct _glue __sglue = {NULL, 3, &__sf[0]};
#else
#ifdef _REENT_SMALL
struct _glue __sglue = {NULL, 0, NULL};
#else
struct _glue __sglue = {NULL, 3, &_GLOBAL_REENT->__sf[0]};
#endif
#endif

#ifdef _STDIO_BSD_SEMANTICS
  /* BSD and Glibc systems only flush streams which have been written to
     at exit time.  Calling flush rather than close for speed, as on
     the aforementioned systems. */
#define CLEANUP_FILE __sflushw_r
#else
  /* Otherwise close files and flush read streams, too.
     Note we call flush directly if "--enable-lite-exit" is in effect.  */
#ifdef _LITE_EXIT
#define CLEANUP_FILE _fflush_r
#else
#define CLEANUP_FILE _fclose_r
#endif
#endif

#if (defined (__OPTIMIZE_SIZE__) || defined (PREFER_SIZE_OVER_SPEED))
_NOINLINE_STATIC void
#else
static void
#endif
std (FILE *ptr,
            int flags,
            int file)
{
  ptr->_p = 0;
  ptr->_r = 0;
  ptr->_w = 0;
  ptr->_flags = flags;
  ptr->_flags2 = 0;
  ptr->_file = file;
  ptr->_bf._base = 0;
  ptr->_bf._size = 0;
  ptr->_lbfsize = 0;
  memset (&ptr->_mbstate, 0, sizeof (_mbstate_t));
  ptr->_cookie = ptr;
  ptr->_read = __sread;
#ifndef __LARGE64_FILES
  ptr->_write = __swrite;
#else /* __LARGE64_FILES */
  ptr->_write = __swrite64;
  ptr->_seek64 = __sseek64;
  ptr->_flags |= __SL64;
#endif /* __LARGE64_FILES */
  ptr->_seek = __sseek;
#ifdef _STDIO_CLOSE_PER_REENT_STD_STREAMS
  ptr->_close = __sclose;
#else /* _STDIO_CLOSE_STD_STREAMS */
  ptr->_close = NULL;
#endif /* _STDIO_CLOSE_STD_STREAMS */
#if !defined(__SINGLE_THREAD__) && !(defined(_REENT_SMALL) && !defined(_REENT_GLOBAL_STDIO_STREAMS))
  __lock_init_recursive (ptr->_lock);
  /*
   * #else
   * lock is already initialized in __sfp
   */
#endif

#ifdef __SCLE
  if (__stextmode (ptr->_file))
    ptr->_flags |= __SCLE;
#endif
}

static inline void
stdin_init(FILE *ptr)
{
  std (ptr,  __SRD, 0);
}

static inline void
stdout_init(FILE *ptr)
{
  /* On platforms that have true file system I/O, we can verify
     whether stdout is an interactive terminal or not, as part of
     __smakebuf on first use of the stream.  For all other platforms,
     we will default to line buffered mode here.  Technically, POSIX
     requires both stdin and stdout to be line-buffered, but tradition
     leaves stdin alone on systems without fcntl.  */
#ifdef _HAVE_FCNTL
  std (ptr, __SWR, 1);
#else
  std (ptr, __SWR | __SLBF, 1);
#endif
}

static inline void
stderr_init(FILE *ptr)
{
  /* POSIX requires stderr to be opened for reading and writing, even
     when the underlying fd 2 is write-only.  */
  std (ptr, __SRW | __SNBF, 2);
}

struct glue_with_file {
  struct _glue glue;
  FILE file;
};

static struct _glue *
sfmoreglue (struct _reent *d, int n)
{
  struct glue_with_file *g;

  (void) d;
  g = (struct glue_with_file *)
    malloc (sizeof (*g) + (n - 1) * sizeof (FILE));
  if (g == NULL)
    return NULL;
  g->glue._next = NULL;
  g->glue._niobs = n;
  g->glue._iobs = &g->file;
  memset (&g->file, 0, n * sizeof (FILE));
  return &g->glue;
}

static void
stdio_exit_handler (void)
{
  (void) _fwalk_sglue (_GLOBAL_REENT, CLEANUP_FILE, &__sglue);
}

static void
global_stdio_init (void)
{
  if (__stdio_exit_handler == NULL) {
    __stdio_exit_handler = stdio_exit_handler;
#ifdef _REENT_GLOBAL_STDIO_STREAMS
    stdin_init (&__sf[0]);
    stdout_init (&__sf[1]);
    stderr_init (&__sf[2]);
#endif
  }
}

/*
 * Find a free FILE for fopen et al.
 */

FILE *
__sfp (struct _reent *d)
{
  FILE *fp;
  int n;
  struct _glue *g;

  _newlib_sfp_lock_start ();
  global_stdio_init ();

  for (g = &__sglue;; g = g->_next)
    {
      for (fp = g->_iobs, n = g->_niobs; --n >= 0; fp++)
	if (fp->_flags == 0)
	  goto found;
      if (g->_next == NULL &&
	  (g->_next = sfmoreglue (d, NDYNAMIC)) == NULL)
	break;
    }
  _newlib_sfp_lock_exit ();
  __errno_r(d) = ENOMEM;
  return NULL;

found:
  fp->_file = -1;		/* no file */
  fp->_flags = 1;		/* reserve this slot; caller sets real flags */
  fp->_flags2 = 0;
#ifndef __SINGLE_THREAD__
  __lock_init_recursive (fp->_lock);
#endif
  _newlib_sfp_lock_end ();

  fp->_p = NULL;		/* no current pointer */
  fp->_w = 0;			/* nothing to read or write */
  fp->_r = 0;
  fp->_bf._base = NULL;		/* no buffer */
  fp->_bf._size = 0;
  fp->_lbfsize = 0;		/* not line buffered */
  memset (&fp->_mbstate, 0, sizeof (_mbstate_t));
  /* fp->_cookie = <any>; */	/* caller sets cookie, _read/_write etc */
  fp->_ub._base = NULL;		/* no ungetc buffer */
  fp->_ub._size = 0;
  fp->_lb._base = NULL;		/* no line buffer */
  fp->_lb._size = 0;

  return fp;
}

/*
 * exit() calls _cleanup() through *__cleanup, set whenever we
 * open or buffer a file.  This chicanery is done so that programs
 * that do not use stdio need not link it all in.
 *
 * The name `_cleanup' is, alas, fairly well known outside stdio.
 */

static void
cleanup_stdio (struct _reent *ptr)
{
#ifdef _REENT_GLOBAL_STDIO_STREAMS
  if (ptr->_stdin != &__sf[0])
    CLEANUP_FILE (ptr, ptr->_stdin);
  if (ptr->_stdout != &__sf[1])
    CLEANUP_FILE (ptr, ptr->_stdout);
  if (ptr->_stderr != &__sf[2])
    CLEANUP_FILE (ptr, ptr->_stderr);
#else
  (void) _fwalk_sglue (ptr, CLEANUP_FILE, &ptr->__sglue);
#endif
}

/*
 * __sinit() is called whenever stdio's internal variables must be set up.
 */

void
__sinit (struct _reent *s)
{
  __sfp_lock_acquire ();

  if (s->__cleanup)
    {
      __sfp_lock_release ();
      return;
    }

  /* make sure we clean up on exit */
  s->__cleanup = cleanup_stdio;	/* conservative */

#ifdef _REENT_SMALL
# ifndef _REENT_GLOBAL_STDIO_STREAMS
  s->_stdin = __sfp(s);
  s->_stdout = __sfp(s);
  s->_stderr = __sfp(s);
# endif /* _REENT_GLOBAL_STDIO_STREAMS */
#endif

  global_stdio_init ();

#ifndef _REENT_GLOBAL_STDIO_STREAMS
  stdin_init (s->_stdin);
  stdout_init (s->_stdout);
  stderr_init (s->_stderr);
#endif /* _REENT_GLOBAL_STDIO_STREAMS */

  __sfp_lock_release ();
}

#ifndef __SINGLE_THREAD__


/* Walkable file locking routine.  */
static int
__fp_lock (struct _reent * ptr __unused, FILE * fp)
{
  if (!(fp->_flags2 & __SNLK))
    _flockfile (fp);

  return 0;
}

/* Walkable file unlocking routine.  */
static int
__fp_unlock (struct _reent * ptr __unused, FILE * fp)
{
  if (!(fp->_flags2 & __SNLK))
    _funlockfile (fp);

  return 0;
}

void
__fp_lock_all (void)
{
#ifndef _REENT_GLOBAL_STDIO_STREAMS
  struct _reent *ptr;
#endif

  __sfp_lock_acquire ();

#ifndef _REENT_GLOBAL_STDIO_STREAMS
  ptr = _REENT;
  (void) _fwalk_sglue (ptr, __fp_lock, &ptr->__sglue);
#endif
}

void
__fp_unlock_all (void)
{
#ifndef _REENT_GLOBAL_STDIO_STREAMS
  struct _reent *ptr;

  ptr = _REENT;
  (void) _fwalk_sglue (ptr, __fp_unlock, &ptr->__sglue);
#endif

  __sfp_lock_release ();
}
#endif
