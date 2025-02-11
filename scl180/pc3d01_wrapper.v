`include "pc3d01.v"
module pc3d01_wrapper(output IN, input PAD);

         pc3d01 pad ( 
	 .CIN(IN), 
	 .PAD(PAD)
          );
endmodule
