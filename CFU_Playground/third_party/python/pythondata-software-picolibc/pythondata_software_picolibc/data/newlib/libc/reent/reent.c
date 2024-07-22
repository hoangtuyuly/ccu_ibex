/*
Copyright (c) 1994 Cygnus Support.
All rights reserved.

Redistribution and use in source and binary forms are permitted
provided that the above copyright notice and this paragraph are
duplicated in all such forms and that any documentation,
and/or other materials related to such
distribution and use acknowledge that the software was developed
at Cygnus Support, Inc.  Cygnus Support, Inc. may not be used to
endorse or promote products derived from this software without
specific prior written permission.
THIS SOFTWARE IS PROVIDED ``AS IS'' AND WITHOUT ANY EXPRESS OR
IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.
*/
/*
FUNCTION
	<<reent>>---definition of impure data.
	
INDEX
	reent

DESCRIPTION
	This module defines the impure data area used by the
	non-reentrant functions, such as strtok.
*/

#include <stdlib.h>
#include <reent.h>

#ifdef _REENT_ONLY
#ifndef REENTRANT_SYSCALLS_PROVIDED
#define REENTRANT_SYSCALLS_PROVIDED
#endif
#endif


#ifndef TINY_STDIO
#ifndef _REENT_GLOBAL_STDIO_STREAMS
/* Interim cleanup code */

static void
cleanup_glue (struct _reent *ptr,
     struct _glue *glue)
{
  /* Have to reclaim these in reverse order: */
  if (glue->_next)
    cleanup_glue (ptr, glue->_next);

  free (glue);
}
#endif
#endif

void
_reclaim_reent (struct _reent *ptr)
{
  if (ptr != _impure_ptr)
    {
#ifndef TINY_STDIO
      if (ptr->__cleanup)
	{
	  /* cleanup won't reclaim memory 'coz usually it's run
	     before the program exits, and who wants to wait for that? */
	  ptr->__cleanup (ptr);

#ifndef _REENT_GLOBAL_STDIO_STREAMS
	  if (ptr->__sglue._next)
	    cleanup_glue (ptr, ptr->__sglue._next);
#endif
	}
#endif
      /* Malloc memory not reclaimed; no good way to return memory anyway. */

    }
}
