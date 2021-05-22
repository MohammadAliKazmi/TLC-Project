`define s0 5'd0
`define s1 5'd1
`define s2 5'd2
`define s3 5'd3
`define s4 5'd4
`define s5 5'd5
`define s6 5'd6
`define s7 5'd7
`define s8 5'd8
`define s9 5'd9
`define s10 5'd10
`define s11 5'd11
`define s12 5'd12
`define s13 5'd13
`define s14 5'd14
`define s15 5'd15
`define s16 5'd16
`define s17 5'd17
`define s18 5'd18
`define s19 5'd19
`define s20 5'd20
`define s21 5'd21
`define s22 5'd22
`define s23 5'd23
`define s24 5'd24
`define s25 5'd25
`define s26 5'd26
 


module TLC(road_A,road_B,road_C,road_D,ID,count_next,count,camera,state,next_state,maxoutput,clock,clear,a1,a2,a3,b1,b2,b3,c1,c2,c3,d1,d2,d3,cam_A,cam_B,cam_C,cam_D,Snd_A,Snd_B,Snd_C,Snd_D);
  
  input clock,clear,a1,a2,a3,b1,b2,b3,c1,c2,c3,d1,d2,d3,cam_A,cam_B,cam_C,cam_D,Snd_A,Snd_B,Snd_C,Snd_D;
  
  output reg [11:0]ID;
  output reg [2:0]road_A;
  output reg [2:0]road_B;
  output reg [2:0]road_C;
  output reg [2:0]road_D;
  output reg camera;
  output reg [5:0]state;
  output reg [5:0]next_state;
  output reg [2:0]maxoutput;
  output reg [5:0]count;
  output reg [5:0]count_next;
  
  initial
  begin
    count = 0;
    count_next = 0;
    state = `s0;
    next_state = `s0;
    ID = 12'b100100100100;
    road_A = 3'b100;
    road_B = 3'b100;
    road_C = 3'b100;
    road_D = 3'b100;
    camera = 0;
  end
  
  always @(posedge clock)
  begin
    state = next_state;
    count = count_next;
  end
  always @(state)
  begin
    case(state)
      `s0: begin
             ID = 12'b100100100100;
             road_A = 3'b100;
             road_B = 3'b100;
             road_C = 3'b100;
             road_D = 3'b100;
           end
      `s1: begin
             ID = 12'b100100100100;
             road_A = 3'b100;
             road_B = 3'b100;
             road_C = 3'b100;
             road_D = 3'b100;
           end
      `s2: begin
             ID = 12'b001100100100;
             road_A = 3'b001;
             road_B = 3'b100;
             road_C = 3'b100;
             road_D = 3'b100;
           end
      `s3: begin
             ID = 12'b100001100100;
             road_A = 3'b100;
             road_B = 3'b001;
             road_C = 3'b100;
             road_D = 3'b100;
           end
      `s4: begin
             ID = 12'b100100001100;
             road_A = 3'b100;
             road_B = 3'b100;
             road_C = 3'b001;
             road_D = 3'b100;
           end
      `s5: begin
             ID = 12'b100100100001;
             road_A = 3'b100;
             road_B = 3'b100;
             road_C = 3'b100;
             road_D = 3'b001;
           end
      `s6: begin
             ID = 12'b001100100100;
             road_A = 3'b001;
             road_B = 3'b100;
             road_C = 3'b100;
             road_D = 3'b100;
           end
      `s7: begin
             ID = 12'b001100100100;
             road_A = 3'b001;
             road_B = 3'b100;
             road_C = 3'b100;
             road_D = 3'b100;
           end
      `s8: begin
             ID = 12'b001100100100;
             road_A = 3'b001;
             road_B = 3'b100;
             road_C = 3'b100;
             road_D = 3'b100;
           end
      `s9: begin
             ID = 12'b010100100100;
             road_A = 3'b010;
             road_B = 3'b100;
             road_C = 3'b100;
             road_D = 3'b100;
           end
      `s10: begin
             ID = 12'b100001100100;
             road_A = 3'b100;
             road_B = 3'b001;
             road_C = 3'b100;
             road_D = 3'b100;
           end
      `s11: begin
             ID = 12'b100001100100;
             road_A = 3'b100;
             road_B = 3'b001;
             road_C = 3'b100;
             road_D = 3'b100;
           end
      `s12: begin
             ID = 12'b100001100100;
             road_A = 3'b100;
             road_B = 3'b001;
             road_C = 3'b100;
             road_D = 3'b100;
           end
      `s13: begin
             ID = 12'b100010100100;
             road_A = 3'b100;
             road_B = 3'b010;
             road_C = 3'b100;
             road_D = 3'b100;
           end
      `s14: begin
             ID = 12'b100100001100;
             road_A = 3'b100;
             road_B = 3'b100;
             road_C = 3'b001;
             road_D = 3'b100;
           end
      `s15: begin
             ID = 12'b100100001100;
             road_A = 3'b100;
             road_B = 3'b100;
             road_C = 3'b001;
             road_D = 3'b100;
           end
      `s16: begin
             ID = 12'b100100001100;
             road_A = 3'b100;
             road_B = 3'b100;
             road_C = 3'b001;
             road_D = 3'b100;
           end
      `s17: begin
             ID = 12'b100100010100;
             road_A = 3'b100;
             road_B = 3'b100;
             road_C = 3'b010;
             road_D = 3'b100;
           end
      `s18: begin
             ID = 12'b100100100001;
             road_A = 3'b100;
             road_B = 3'b100;
             road_C = 3'b100;
             road_D = 3'b001;
           end
      `s19: begin
             ID = 12'b100100100001;
             road_A = 3'b100;
             road_B = 3'b100;
             road_C = 3'b100;
             road_D = 3'b001;
           end
      `s20: begin
             ID = 12'b100100100001;
             road_A = 3'b100;
             road_B = 3'b100;
             road_C = 3'b100;
             road_D = 3'b001;
           end
      `s21: begin
             ID = 12'b100100100010;
             road_A = 3'b100;
             road_B = 3'b100;
             road_C = 3'b100;
             road_D = 3'b010;
           end
      `s22: begin
             ID = 12'b100100100100;
             road_A = 3'b100;
             road_B = 3'b100;
             road_C = 3'b100;
             road_D = 3'b100;
           end
      `s23: begin
             ID = 12'b001100100100;
             road_A = 3'b001;
             road_B = 3'b100;
             road_C = 3'b100;
             road_D = 3'b100;
           end
      `s24: begin
             ID = 12'b100001100100;
             road_A = 3'b100;
             road_B = 3'b001;
             road_C = 3'b100;
             road_D = 3'b100;
           end
      `s25: begin
             ID = 12'b100100001100;
             road_A = 3'b100;
             road_B = 3'b100;
             road_C = 3'b001;
             road_D = 3'b100;
           end
      `s26: begin
             ID = 12'b100100100001;
             road_A = 3'b100;
             road_B = 3'b100;
             road_C = 3'b100;
             road_D = 3'b001;
           end
      
    endcase
  end
  
  always @(count or count_next or state or clear or a1 or a2 or a3 or b1 or b2 or b3 or c1 or c2 or c3 or d1 or d2 or d3 or cam_A or cam_B or cam_C or cam_D or Snd_A or Snd_B or Snd_C or Snd_D)
  begin
    if(clear)
    next_state = `s0;
    
    else
    begin
      case(state)
        `s0: begin
               camera = cam_A || cam_B || cam_C || cam_D;
               count_next = 0;
               if(Snd_A || Snd_B || Snd_C || Snd_D)
                 next_state = `s22;
               else if(a1 || b1 || c1 || d1)
                 next_state = `s1;
               else
                 next_state = `s0;
                 
             end
        `s1: begin
               camera = cam_A || cam_B || cam_C || cam_D;
               count_next = 0;
               maxof4(a1,a2,a3,b1,b2,b3,c1,c2,c3,d1,d2,d3,maxoutput);
               
               case(maxoutput)
                 1:next_state = `s2;
                 2:next_state = `s3;
                 3:next_state = `s4;
                 4:next_state = `s5;
                 default:next_state = `s1;
               endcase
                 
             end
        `s2: begin
               camera = cam_A || cam_B || cam_C || cam_D;
               count_next = count + 1;
               if(Snd_A || Snd_B || Snd_C || Snd_D)
                 next_state = `s9;
               else if(count_next < 4)
                 next_state = `s2;
               else if(a1 && a2 && a3 && (count_next >= 4))
                 next_state = `s8;
               else if(a1 && a2 && ~a3 && (count_next >= 4))
                 next_state = `s7;
               else
                 next_state = `s6;
                 
             end    
        `s3: begin
               camera = cam_A || cam_B || cam_C || cam_D;
               count_next = count+1;
               if(Snd_A || Snd_B || Snd_C || Snd_D)
                 next_state = `s13;
               else if(count_next < 4)
                 next_state = `s3;
               else if(b1 && b2 && b3 && (count_next >= 4))
                 next_state = `s12;
               else if(b1 && b2 && ~b3 && (count_next >= 4))
                 next_state = `s11;
               else
                 next_state = `s10;
                 
             end    
        `s4: begin
               camera = cam_A || cam_B || cam_C || cam_D;
               count_next = count+1;
               if(Snd_A || Snd_B || Snd_C || Snd_D)
                 next_state = `s17;
               else if(count_next < 4)
                 next_state = `s4;
               else if(c1 && c2 && c3 && (count_next >= 4))
                 next_state = `s16;
               else if(c1 && c2 && ~c3 && (count_next >= 4))
                 next_state = `s15;
               else
                 next_state = `s14;
               
             end    
        `s5: begin
               camera = cam_A || cam_B || cam_C || cam_D;
               count_next = count+1;
               if(Snd_A || Snd_B || Snd_C || Snd_D)
                 next_state = `s21;
               else if(count < 4)
                 next_state = `s5;
               else if(d1 && d2 && d3 && (count_next >= 4))
                 next_state = `s20;
               else if(d1 && d2 && ~d3 && (count_next >= 4))
                 next_state = `s19;
               else
                 next_state = `s18;
                 
             end    
        `s6: begin
               camera = cam_B || cam_C || cam_D;
               
               if(Snd_B || Snd_C || Snd_D || ~a1 || b2 || c2 || d2)
                 next_state = `s9;
               else
                 next_state = `s6;
                    
             end  
        `s7: begin
               camera = cam_B || cam_C || cam_D;
              
               if((~a1 && ~a2)|| Snd_B || Snd_C || Snd_D || b3 || c3 || d3)
                 next_state = `s9;
               if(a1 && a2)
                 next_state = `s7;
               if(a1 && ~a2)
                 next_state = `s6;   
                
             end
        `s8: begin
               camera = cam_B || cam_C || cam_D;
              
               if((~a1 && ~a2 && ~a3)|| Snd_B || Snd_C || Snd_D)
                 next_state = `s9;
               if(a1 && a2 && a3)
                 next_state = `s8;
               if(a1 && a2 && ~a3)
                 next_state = `s7;
               if(a1 && ~a2 && ~a3)
                 next_state = `s6; 
                   
             end
        `s9: begin
               camera = cam_A || cam_B || cam_C || cam_D;
               next_state = `s0;
                  
             end 
        `s10: begin
               camera = cam_A || cam_C || cam_D;
              
               if(Snd_A || Snd_C || Snd_D || ~b1 || a2 || c2 || d2)
                 next_state = `s13;
               else
                 next_state = `s10;
                    
              end  
        `s11: begin
               
               camera = cam_A || cam_C || cam_D;
               
               if((~b1 && ~b2)|| Snd_A || Snd_C || Snd_D || a3 || c3 || d3)
                 next_state = `s13;
               if(b1 && b2)
                 next_state = `s11;
               if(b1 && ~b2)
                 next_state = `s10;  
                    
              end
        `s12: begin
               
               camera = cam_A || cam_C || cam_D;
              
               if((~b1 && ~b2 && ~b3)|| Snd_A || Snd_C || Snd_D)
                 next_state = `s13;
               if(b1 && b2 && b3)
                 next_state = `s12;
               if(b1 && b2 && ~b3)
                 next_state = `s11;
               if(b1 && ~b2 && ~b3)
                 next_state = `s10;
                        
              end
        `s13: begin
               
               camera = cam_A || cam_B || cam_C || cam_D;
               next_state = `s0; 
                 
              end
        `s14: begin
               
               camera = cam_A || cam_B || cam_D;
               
               if(Snd_A || Snd_B || Snd_D || ~c1 || a2 || b2 || d2)
                 next_state = `s17;
               else
                 next_state = `s14;
                 
              end  
        `s15: begin
               
               camera = cam_A || cam_B || cam_D;
               
               if((~c1 && ~c2)|| Snd_A || Snd_B || Snd_D || a3 || b3 || d3)
                 next_state = `s17;
               if(c1 && c2)
                 next_state = `s15;
               if(c1 && ~c2)
                 next_state = `s14; 
                     
              end
        `s16: begin
               
               camera = cam_A || cam_B || cam_D;
               
               if((~c1 && ~c2 && ~c3)|| Snd_A || Snd_B || Snd_D)
                 next_state = `s17;
               if(c1 && c2 && c3)
                 next_state = `s16;  
               if(c1 && c2 && ~c3)
                 next_state = `s15;
               if(c1 && ~c2 && ~c3)
                 next_state = `s14;
                  
              end
        `s17: begin
               
               camera = cam_A || cam_B || cam_C || cam_D;
               next_state = `s0;   
               
              end                         
        `s18: begin
               
               camera = cam_A || cam_B || cam_C;
              
               if(Snd_A || Snd_B || Snd_C || ~d1 || a2 || b2 || c2)
                 next_state = `s21;
               else
                 next_state = `s18; 
                    
              end  
        `s19: begin
        
               camera = cam_A || cam_B || cam_C;
              
               if((~d1 && ~d2)|| Snd_A || Snd_B || Snd_C || a3 || b3 || c3)
                 next_state = `s21;
               if(d1 && d2)
                 next_state = `s19; 
               if(d1 && ~d2)
                 next_state = `s18; 
                    
              end
        `s20: begin
               
               camera = cam_A || cam_B || cam_C;
             
               if((~d1 && ~d2 && ~d3)|| Snd_A || Snd_B || Snd_C)
                 next_state = `s21;
               if(d1 && d2 && d3)
                 next_state = `s20;
               if(d1 && d2 && ~d3)
                 next_state = `s19;
               if(d1 && ~d2 && ~d3)
                 next_state = `s18; 
                    
              end
        `s21: begin
               
               camera = cam_A || cam_B || cam_C || cam_D;
               next_state = `s0;    
               
              end
        `s22: begin
               
               camera = cam_A || cam_B || cam_C || cam_D;
               if(Snd_A)
                 next_state = `s23;
               else if(Snd_B)
                 next_state = `s24; 
               else if(Snd_C)
                 next_state = `s25; 
               else if(Snd_D)
                 next_state = `s26;      
               
              end
        `s23: begin
               
               camera = cam_B || cam_C || cam_D;
               if(Snd_A)
                 next_state = `s23;    
               else
                 next_state = `s9;
              end 
        `s24: begin
               
               camera = cam_A || cam_C || cam_D;
               if(Snd_B)
                 next_state = `s24;    
               else
                 next_state = `s13;
              end
        `s25: begin
               
               camera = cam_A || cam_B || cam_D;
               if(Snd_C)
                 next_state = `s25;    
               else
                 next_state = `s17;
              end
        `s26: begin
               
               camera = cam_A || cam_B || cam_C;
               if(Snd_D)
                 next_state = `s26;    
               else
                 next_state = `s21;
              end                   
        default: next_state = `s0;
      endcase
    end     
  end
  
  task maxof4;
    input a1,a2,a3,b1,b2,b3,c1,c2,c3,d1,d2,d3;
    output [2:0]max;
    reg [2:0]a,b,c,d;
    a = {a3,a2,a1};
    b = {b3,b2,b1};
    c = {c3,c2,c1};
    d = {d3,d2,d1};
    if (a>=b)
    begin
      if (a>=c)
      begin
        if (a>=d)
          max = 1;
        else
          max = 4;
      end
      else
      begin
        if (c>=d)
          max = 3;
        else
          max = 4;
      end
    end
    else
    begin
      if (b>=c)
      begin
        if (b>=d)
          max = 2;
        else
          max = 4;
      end
      else
      begin
        if (c>=d)
          max = 3;
        else
          max = 4;
      end
    end   
  endtask
  
endmodule

