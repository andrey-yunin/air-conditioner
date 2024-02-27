
#include "HLS/hls.h"
#include <stdio.h>
#include "HLS/ac_int.h"
#include "HLS/ac_fixed.h"

// Declaration of data types
 // typedef ac_fixed<16,4,false>ac_16_4_f;
  typedef ac_fixed<32,16,false>ac_32_16_f;
 // typedef ac_fixed<16,2,true>ac_16_2_t;
 // typedef ac_fixed<32,6,true>ac_32_6_t; 

#define SIZE 64


hls_avalon_slave_component component
float average_value(hls_avalon_slave_memory_argument((SIZE)*sizeof(int)) float* a,
                    hls_avalon_slave_register_argument hls_stable_argument int N){
	
	ac_32_16_f temp = 0;
    ac_32_16_f sum = 0;
	ac_32_16_f b = 0;
    float average_result = 0;
    ac_32_16_f c[64];
    
    
#pragma unroll   

for (int i = 0; i < N; i++){
            c[i] = a[i];
  		    b  = c[i] + temp;
       		temp = b;
       	}
        
        sum = b;          
        
        average_result = sum.to_double()/N;        
              		
        return average_result;
		  	      	  	}
				
				
int main() {
  
    float result_comporation = 14.33; // result of function execution for comporasion    
    	
	float test[64] = {7.4, 6.12, 17.0, 2.24, 8.3, 56.67, 13.89, 3.01, 7.4, 6.12, 17.0, 2.24, 8.3, 56.67, 13.89, 3.01, 7.4, 6.12, 17.0, 2.24, 8.3, 56.67, 13.89, 3.01, 7.4, 6.12, 17.0, 2.24, 8.3, 56.67, 13.89, 3.01,7.4, 6.12, 17.0, 2.24, 8.3, 56.67, 13.89, 3.01, 7.4, 6.12, 17.0, 2.24, 8.3, 56.67, 13.89, 3.01, 7.4, 6.12, 17.0, 2.24, 8.3, 56.67, 13.89, 3.01, 7.4, 6.12, 17.0, 2.24, 8.3, 56.67, 13.89, 3.01};

	float result = average_value(test, 64);
    
   	printf("\n result is: %.2f\n", result);
    
    //check result:
	
	float total_diff = result_comporation - result;
    	
	if ((total_diff < 0.02) && (total_diff > -0.02)){
		printf ("\n TEST IS PASSED! GOOD JOB BUDDY!\n");
	}
	else{
		printf("TEST IS FAILED!\n");
	}

return 0;

}
	