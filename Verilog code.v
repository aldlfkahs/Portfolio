module elevator(
   input request_out1,
   input request_out2,
   input request_out3,
   input request_out4,
   input request_out5,
   input request_in1,
   input request_in2,
   input request_in3,
   input request_in4,
   input request_in5,
   input clk,
   input resetn,
   output reg current_1,
   output reg current_2,
   output reg current_3,
   output reg current_4,
   output reg current_5,
   output reg output_request_out1,
   output reg output_request_out2,
   output reg output_request_out3,
   output reg output_request_out4,
   output reg output_request_out5,
   output reg output_request_in1,
   output reg output_request_in2,
   output reg output_request_in3,
   output reg output_request_in4,
   output reg output_request_in5
);
   reg move = 0;    
   
   always @(posedge clk) begin
      if(!resetn) begin
       current_1 <= 1; current_2 <= 0; current_3 <= 0; current_4 <= 0; current_5 <= 0;
       move <= 0;
      end
      else begin
            
         if(move == 0 && request_in1 == 0) begin
         output_request_in1 <= 1;
         move <= 1;
         if(current_2 == 1) begin
         #2000000000
             current_2 <= 0;
             current_1 <= 1;
         end
			
         if(current_3 == 1) begin
           #2000000000
             current_3 <= 0;
             current_2 <= 1;
           #2000000000
             current_2 <= 0;
             current_1 <= 1;
         end
         if(current_4 == 1) begin
           #2000000000
             current_4 <= 0;
             current_3 <= 1;
           #2000000000
             current_3 <= 0;
             current_2 <= 1;
           #2000000000
             current_2 <= 0;
             current_1 <= 1;
         end
         if(current_5 == 1) begin
           #2000000000
             current_5 <= 0;
             current_4 <= 1;
           #2000000000
             current_4 <= 0;
             current_3 <= 1;
           #2000000000
             current_3 <= 0;
             current_2 <= 1;
           #2000000000
             current_2 <= 0;
             current_1 <= 1;
         end
         #5000000000
         move <= 0;
         output_request_in1 <= 0;
         end

         if(move == 0 && request_in2 == 0) begin
         output_request_in2 <= 1;
         move <= 1;
         if(current_1 == 1) begin
           #2000000000
             current_1 <= 0;
             current_2 <= 1;
         end
         if(current_3 == 1) begin
           #2000000000
             current_3 <= 0;
             current_2 <= 1;
         end
         if(current_4 == 1) begin
           #2000000000
             current_4 <= 0;
             current_3 <= 1;
           #2000000000
             current_3 <= 0;
             current_2 <= 1;
         end
         if(current_5 == 1) begin
           #2000000000
             current_5 <= 0;
             current_4 <= 1;
           #2000000000
             current_4 <= 0;
             current_3 <= 1;
           #2000000000
             current_3 <= 0;
             current_2 <= 1;
         end
         #5000000000
         move <= 0;
         output_request_in2 <= 0;
         end
      
         if(move == 0 && request_in3 == 0) begin
         output_request_in3 <= 1;
         move <= 1;
         if(current_1 == 1) begin
           #2000000000
             current_1 <= 0;
             current_2 <= 1;
           #2000000000
             current_2 <= 0;
             current_3 <= 1;
         end
         if(current_2 == 1) begin
           #2000000000
             current_2 <= 0;
             current_3 <= 1;
         end
         if(current_4 == 1) begin
           #2000000000
             current_4 <= 0;
             current_3 <= 1;
         end
         if(current_5 == 1) begin
           #2000000000
             current_5 <= 0;
             current_4 <= 1;
           #2000000000
             current_4 <= 0;
             current_3 <= 1;
         end
         #5000000000
         move <= 0;
         output_request_in3 <= 0;
         end      

         if(move == 0 && request_in4 == 0) begin
         output_request_in4 <= 1;
         move <= 1;
         if(current_1 == 1) begin
           #2000000000
             current_1 <= 0;
             current_2 <= 1;
           #2000000000
             current_2 <= 0;
             current_3 <= 1;
           #2000000000
             current_3 <= 0;
             current_4 <= 1;
         end
         if(current_2 == 1) begin
           #2000000000
             current_2 <= 0;
             current_3 <= 1;
           #2000000000
             current_3 <= 0;
             current_4 <= 1;
         end
         if(current_3 == 1) begin
           #2000000000
             current_3 <= 0;
             current_4 <= 1;
         end
         if(current_5 == 1) begin
           #2000000000
             current_5 <= 0;
             current_4 <= 1;
         end
         #5000000000
         move <= 0;
         output_request_in4 <= 0;
         end   

         if(move == 0 && request_in5 == 0) begin
         output_request_in5 <= 1;
         move <= 1;
         if(current_1 == 1) begin
           #2000000000
             current_1 <= 0;
             current_2 <= 1;
           #2000000000
             current_2 <= 0;
             current_3 <= 1;
           #2000000000
             current_3 <= 0;
             current_4 <= 1;
           #2000000000
             current_4 <= 0;
             current_5 <= 1;
         end
         if(current_2 == 1) begin
           #2000000000
             current_2 <= 0;
             current_3 <= 1;
           #2000000000
             current_3 <= 0;
             current_4 <= 1;
           #2000000000
             current_4 <= 0;
             current_5 <= 1;
         end
         if(current_3 == 1) begin
           #2000000000
             current_3 <= 0;
             current_4 <= 1;
           #2000000000
             current_4 <= 0;
             current_5 <= 1;
         end
         if(current_4 == 1) begin
           #2000000000
             current_4 <= 0;
             current_5 <= 1;
         end
         #5000000000
         move <= 0;
         output_request_in5 <= 0;
         end
         
         
         /************************************************************/
         
         if(move == 0 && request_out1 == 0) begin
         output_request_out1 <= 1;
         move <= 1;
         if(current_2 == 1) begin
         #2000000000
             current_2 <= 0;
             current_1 <= 1;
         end
			
         if(current_3 == 1) begin
           #2000000000
             current_3 <= 0;
             current_2 <= 1;
           #2000000000
             current_2 <= 0;
             current_1 <= 1;
         end
         if(current_4 == 1) begin
           #2000000000
             current_4 <= 0;
             current_3 <= 1;
           #2000000000
             current_3 <= 0;
             current_2 <= 1;
           #2000000000
             current_2 <= 0;
             current_1 <= 1;
         end
         if(current_5 == 1) begin
           #2000000000
             current_5 <= 0;
             current_4 <= 1;
           #2000000000
             current_4 <= 0;
             current_3 <= 1;
           #2000000000
             current_3 <= 0;
             current_2 <= 1;
           #2000000000
             current_2 <= 0;
             current_1 <= 1;
         end
         #5000000000
         move <= 0;
         output_request_out1 <= 0;
         end

         if(move == 0 && request_out2 == 0) begin
         output_request_out2 <= 1;
         move <= 1;
         if(current_1 == 1) begin
           #2000000000
             current_1 <= 0;
             current_2 <= 1;
         end
         if(current_3 == 1) begin
           #2000000000
             current_3 <= 0;
             current_2 <= 1;
         end
         if(current_4 == 1) begin
           #2000000000
             current_4 <= 0;
             current_3 <= 1;
           #2000000000
             current_3 <= 0;
             current_2 <= 1;
         end
         if(current_5 == 1) begin
           #2000000000
             current_5 <= 0;
             current_4 <= 1;
           #2000000000
             current_4 <= 0;
             current_3 <= 1;
           #2000000000
             current_3 <= 0;
             current_2 <= 1;
         end
         #5000000000
         move <= 0;
         output_request_out2 <= 0;
         end
      
         if(move == 0 && request_out3 == 0) begin
         output_request_out3 <= 1;
         move <= 1;
         if(current_1 == 1) begin
           #2000000000
             current_1 <= 0;
             current_2 <= 1;
           #2000000000
             current_2 <= 0;
             current_3 <= 1;
         end
         if(current_2 == 1) begin
           #2000000000
             current_2 <= 0;
             current_3 <= 1;
         end
         if(current_4 == 1) begin
           #2000000000
             current_4 <= 0;
             current_3 <= 1;
         end
         if(current_5 == 1) begin
           #2000000000
             current_5 <= 0;
             current_4 <= 1;
           #2000000000
             current_4 <= 0;
             current_3 <= 1;
         end
         #5000000000
         move <= 0;
         output_request_out3 <= 0;
         end      

         if(move == 0 && request_out4 == 0) begin
         output_request_out4 <= 1;
         move <= 1;
         if(current_1 == 1) begin
           #2000000000
             current_1 <= 0;
             current_2 <= 1;
           #2000000000
             current_2 <= 0;
             current_3 <= 1;
           #2000000000
             current_3 <= 0;
             current_4 <= 1;
         end
         if(current_2 == 1) begin
           #2000000000
             current_2 <= 0;
             current_3 <= 1;
           #2000000000
             current_3 <= 0;
             current_4 <= 1;
         end
         if(current_3 == 1) begin
           #2000000000
             current_3 <= 0;
             current_4 <= 1;
         end
         if(current_5 == 1) begin
           #2000000000
             current_5 <= 0;
             current_4 <= 1;
         end
         #5000000000
         move <= 0;
         output_request_out4 <= 0;
         end   

         if(move == 0 && request_out5 == 0) begin
         output_request_out5 <= 1;
         move <= 1;
         if(current_1 == 1) begin
           #2000000000
             current_1 <= 0;
             current_2 <= 1;
           #2000000000
             current_2 <= 0;
             current_3 <= 1;
           #2000000000
             current_3 <= 0;
             current_4 <= 1;
           #2000000000
             current_4 <= 0;
             current_5 <= 1;
         end
         if(current_2 == 1) begin
           #2000000000
             current_2 <= 0;
             current_3 <= 1;
           #2000000000
             current_3 <= 0;
             current_4 <= 1;
           #2000000000
             current_4 <= 0;
             current_5 <= 1;
         end
         if(current_3 == 1) begin
           #2000000000
             current_3 <= 0;
             current_4 <= 1;
           #2000000000
             current_4 <= 0;
             current_5 <= 1;
         end
         if(current_4 == 1) begin
           #2000000000
             current_4 <= 0;
             current_5 <= 1;
         end
         #5000000000
         move <= 0;
         output_request_out5 <= 0;
         end
			
			
			
			
      end
      
   end
   
   
endmodule
   