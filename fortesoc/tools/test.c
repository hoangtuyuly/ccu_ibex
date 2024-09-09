void main(void)
	{
		unsigned int test;
		while(1)
		{
            unsigned int hold1 = 0;
            while(hold1 < 5000000)
                hold1++;            
		
			 int a,b;
 			 a = 0xFFFFFFFF;
 			 b = 0x00000000;
  			// asm volatile
  			// (
			//  "efpga   %[z], %[x], %[y]\n\t"
			//  : [z] "=r" (test)
			//  : [x] "r" (a), [y] "r" (b)
			// );

            hold1 = 0;
            while(hold1 < 5000000)
                hold1++;

            a = 0x00000000;
            b = 0xFFFFFFFF;
            // asm volatile
            // (
            //  "efpga   %[z], %[x], %[y]\n\t"
            //  : [z] "=r" (test)
            //  : [x] "r" (a), [y] "r" (b)
            // );

             unsigned int *var = (int*)0x140;
             *var = 0xDEADBEEF;
		}
	}
