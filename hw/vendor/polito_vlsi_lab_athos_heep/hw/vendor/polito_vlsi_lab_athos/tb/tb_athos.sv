import athos_pkg::*;

module tb_athos();

  logic clk;
  logic rst;

  athos_pkg::mode_t mode;
  athos_pkg::in_t input_tb;
  athos_pkg::out_t output_tb;
  athos_pkg::funct7_t funct7;
  athos_pkg::immediate_t immediate;
  logic [1:0] insr;

  logic [3:0] i;

  athos DUT (
      .clk_i (clk),
      .rst_ni(rst),

      .mode_i(mode),
      .in_i(input_tb),
      .funct7_i(funct7),
      .insr_i(insr),
      .immediate_i(immediate),
      .out_o (output_tb)
  );

  initial begin
    clk   = 0;
    rst   = 0;
    mode  = RESET_MODE;

    #1 rst = 1;
    
    //Uncomment the modality you want to use
    /****************************************************************/
    //R-INSTRUCTION
    /****************************************************************/
    insr = 2'b01;

    //LOAD64 ---------------------------------------------------------
    //mode.mode_athos = 3'b010; //LOAD64

    //GFMUL ----------------------------------------------------------
    //mode.mode_athos = 3'b001; 
    //funct7.funct7_athos = GF_TRAIL_ZERO; 
    //funct7.funct7_athos = GF_SQUARE_MODE;

    //MONTG - Kyber --------------------------------------------------
    //mode.mode_athos = 3'b011; 
    //funct7.funct7_athos = MONTG_K_MODE;

    //MONTG - Dilithium ----------------------------------------------
    //mode.mode_athos = 3'b011; 
    //funct7.funct7_athos = MONTG_D_MODE;

    //BARRETT --------------------------------------------------------
    //mode.mode_athos = 3'b100; 

    //CBD ------------------------------------------------------------
    //mode.mode_athos = 3'b101;
    //funct7.funct7_athos = CBD3_1_MODE;
    //funct7.funct7_athos = CBD3_2_MODE;
    //funct7.funct7_athos = CBD3_3_MODE;
    //funct7.funct7_athos = CBD3_4_MODE;
    //funct7.funct7_athos = CBD2_1_MODE;
    //funct7.funct7_athos = CBD2_2_MODE;
    //funct7.funct7_athos = CBD2_3_MODE;
    //funct7.funct7_athos = CBD2_4_MODE;
    //funct7.funct7_athos = CBD2_5_MODE;
    //funct7.funct7_athos = CBD2_6_MODE;
    //funct7.funct7_athos = CBD2_7_MODE;
    //funct7.funct7_athos = CBD2_8_MODE;

    //POLY --------------------------------------------------------
    mode.mode_athos = 3'b110; 
    //funct7.funct7_athos = POLY_COMPRESS;
    //funct7.funct7_athos = POLY_COMPRESS_2;
    //funct7.funct7_athos = POLY_DECOMPRESS_1;
    //funct7.funct7_athos = POLY_DECOMPRESS_2;
    //funct7.funct7_athos = POLY_DECOMPRESS_3;
    funct7.funct7_athos = POLY_TOBYTES;

    /**************************************************************/
    //I-INSTRUCTION
    //insr = 2'b10;

    //LOAD24_LITTLEENDIEN --------------------------------------------
    //mode.mode_athos = 3'b001;

    //LOAD34_LITTLEENDIEN --------------------------------------------
    //mode.mode_athos = 3'b010;
  
    case(insr) 
      //R-INSTRUCTION
      2'b01: begin
        $display("R-instruction selected");
        case (mode.mode_athos)

          LOAD64: begin
            $display("LOAD64-MODE selected");
            input_tb.rs1_0 = 32'b00000000000000000000000001000110; //46
            input_tb.rs2_0 = 32'b00000000000000000000000010110101; //B5
            #1
            $display("LOAD64-MODE output:");
            $display("%h - %h", output_tb.rd1, output_tb.rd2);
          end

          GF: begin
            case(funct7.funct7_athos) 
              GF_TRAIL_ZERO: begin
                $display("trailing_zero_bits_count selected");
                input_tb.rs1_0 = 32'b00000000000000000000000100010000; //0x110
                input_tb.rs2_0 = 32'b00000000000000000000000000000000;
                #1
                $display("trailing_zero_bits_count output:");
                $display("%h - %h", output_tb.rd1, output_tb.rd2); // 0x04
                #1
                input_tb.rs1_0 = 32'b00000000000000000000000100011000; //0x118
                input_tb.rs2_0 = 32'b00000000000000000000000000000000;
                #1
                $display("trailing_zero_bits_count output:");
                $display("%h - %h", output_tb.rd1, output_tb.rd2); // 0x03
              end

              GF_SQUARE_MODE: begin
                $display("gf_square selected");
                input_tb.rs1_0 = 32'b00000000000000000000000011000001; //0xc1
                input_tb.rs2_0 = 32'b00000000000000000000000000000000;
                #1
                $display("gf_square output:");
                $display("%h - %h", output_tb.rd1, output_tb.rd2); // 0x5001
                #1
                input_tb.rs1_0 = 32'b00000000000000000000000011011111; //0xdf
                input_tb.rs2_0 = 32'b00000000000000000000000000000000;
                #1
                $display("gf_square output:");
                $display("%h - %h", output_tb.rd1, output_tb.rd2); // 0x5155
              end

              default: $display("Unknown mode");
            endcase
          end

          MONTG: begin
            $display("MONTG-MODE selected");

            case(funct7.funct7_athos)
              MONTG_K_MODE: begin
                $display("Montgomery for Kyber selected");
                input_tb.rs1_0 = 32'b00000000000001011000001100100011; //{0005 8323} OUT=378
                input_tb.rs2_0 = 32'b00000000000000000000000000000000;
                #1
                $display("Montgomery for Kyber output:");
                $display("%h - %h", output_tb.rd1, output_tb.rd2);
                #1
                input_tb.rs1_0 = 32'b11111111111110001111000001111010; //{fff8 f07a} OUT=34d
                #1
                $display("Montgomery for Kyber output:");
                $display("Output: %h - %h", output_tb.rd1, output_tb.rd2);
                #1
                input_tb.rs1_0 = 32'b11111111111101000000011010011100; //{fff4 069c} OUT=fe9a
                #1
                $display("Montgomery for Kyber output:");
                $display("Output: %h - %h", output_tb.rd1, output_tb.rd2);
                #1
                input_tb.rs1_0 = 32'b11111111111100010010011111111001; //{fff1 27f9} OUT=64b
                #1
                $display("Montgomery for Kyber output:");
                $display("Output: %h - %h", output_tb.rd1, output_tb.rd2);
                #1
                input_tb.rs1_0 = 32'b00000000000000010010001010101111; //{0001 22AF} OUT=fcc5
                #1
                $display("Montgomery for Kyber output:");
                $display("Output: %h - %h", output_tb.rd1, output_tb.rd2);
              end

              MONTG_D_MODE: begin
                $display("Montgomery for Dilithium selected");
                input_tb.rs1_0 = 32'b10111010001101111011001110101010;
                input_tb.rs2_0 = 32'b00000000000000000000000000000000;
                #1
                $display("Montgomery for Dilithium output:");
                $display("Output: %h - %h", output_tb.rd1, output_tb.rd2);
                #1
                input_tb.rs1_0 = 32'b11011110101000110000111001111110;
                input_tb.rs2_0 = 32'b00000000000000000000000000010100;
                #1
                $display("Montgomery for Dilithium output:");
                $display("Output: %h - %h", output_tb.rd1, output_tb.rd2);
                #1
                input_tb.rs1_0 = 32'b00011000100000001111101001110100;
                input_tb.rs2_0 = 32'b00000000000000000000000000001100;
                #1
                $display("Montgomery for Dilithium output:");
                $display("Output: %h - %h", output_tb.rd1, output_tb.rd2);
                #1
                input_tb.rs1_0 = 32'b10011111011010001000100011010000;
                input_tb.rs2_0 = 32'b00000000000000000000000000000000;
                #1
                $display("Montgomery for Dilithium output:");
                $display("Output: %h - %h", output_tb.rd1, output_tb.rd2);
                #1
                input_tb.rs1_0 = 32'b00101110000110010011001000101000;
                input_tb.rs2_0 = 32'b00000000000000000000000000011001;
                #1
                $display("Montgomery for Dilithium output:");
                $display("Output: %h - %h", output_tb.rd1, output_tb.rd2);
              end

              default: $display("Unknown mode");
            endcase

          end

          BARRETT: begin
            $display("BARRETT-MODE selected");
            input_tb.rs1_0 = 32'b00000000000000000000010010100111; //{04a7} 
            input_tb.rs2_0 = 32'b00000000000000000000000000000000;
            #1
            $display("Output:");
            $display("%h - %h", output_tb.rd1, output_tb.rd2); //Output: 7ffec97b4a7
            #1
            input_tb.rs1_0 = 32'b00000000000000001111110111100000; //{fd0e} 
            #1
            $display("Output:");
            $display(" %h - %h", output_tb.rd1, output_tb.rd2); //Output:7ffff6c8fffffde0
            #1
            input_tb.rs1_0 = 32'b00000000000000000000100101000001; //{04a7} 
            input_tb.rs2_0 = 32'b00000000000000000000000000000000;
            #1
            $display("Output:");
            $display("%h - %h", output_tb.rd1, output_tb.rd2); //Output: 0941
            #1
            input_tb.rs1_0 = 32'b00000011011000000100110110010011; //{3604d93} 
            input_tb.rs2_0 = 32'b01000000110101110010010001010110; //40d72456
            #1
            $display("Output:");
            $display("%h - %h", output_tb.rd1, output_tb.rd2); //Output: 
                
          end

          CBD: begin
            $display("CBD-MODE selected");
            input_tb.rs1_0 = 32'b00000000000011001100010001001101; //{cc44d} 
            input_tb.rs2_0 = 32'b00000000000000000000000000000000;
            #1
            $display("Output:");
            $display("%h - %h", output_tb.rd1, output_tb.rd2); //Output: 7ffec97b4a7
          end

          POLY: begin
            $display("POLY-MODE selected");

            case(funct7.funct7_athos)
              POLY_COMPRESS: begin
                $display("POLY-COMPRESS selected");
                input_tb.rs1_0 = 32'b00000000000000000000001100100100; //{324} 
                input_tb.rs2_0 = 32'b00000000000000000000000000000000;
                #1
                $display("Output:");
                $display("%h - %h", output_tb.rd1, output_tb.rd2); //Output: 04
                #1
                input_tb.rs1_0 = 32'b00000000000000001111111001011000; //{fe58} 
                input_tb.rs2_0 = 32'b00000000000000000000000000000000;
                #1
                $display("Output:");
                $display("%h - %h", output_tb.rd1, output_tb.rd2); //Output: 0e
                #1
                input_tb.rs1_0 = 32'b00000000000000000000010010101000; //{4a8} 
                input_tb.rs2_0 = 32'b00000000000000000000000000000000;
                #1
                $display("Output:");
                $display("%h - %h", output_tb.rd1, output_tb.rd2); //Output: 06
              end

              POLY_COMPRESS_2: begin
                $display("POLY-COMPRESS_2 selected");
                input_tb.rs1_0 = 32'b00000000000000001111111111110101; //{fff5} 
                input_tb.rs2_0 = 32'b00000000000000000000000000000000;
                #1
                $display("Output:");
                $display("%h - %h", output_tb.rd1, output_tb.rd2); //Output: 0
                #1
                $display("POLY-COMPRESS_2 selected");
                input_tb.rs1_0 = 32'b00000000000000000000010101010100; //{554} 
                input_tb.rs2_0 = 32'b00000000000000000000000000000000;
                #1
                $display("Output:");
                $display("%h - %h", output_tb.rd1, output_tb.rd2); //Output: d
                #1
                $display("POLY-COMPRESS_2 selected");
                input_tb.rs1_0 = 32'b00000000000000001111111010100100; //{fea4} 
                input_tb.rs2_0 = 32'b00000000000000000000000000000000;
                #1
                $display("Output:");
                $display("%h - %h", output_tb.rd1, output_tb.rd2); //Output: 1d
                
              end

              POLY_DECOMPRESS_1: begin
                $display("POLY-DECOMPRESS-1 selected");
                input_tb.rs1_0 = 32'b00000000000000000000000001010111; //{57} 
                input_tb.rs2_0 = 32'b00000000000000000000000000000000;
                #1
                $display("Output:");
                $display("%h - %h", output_tb.rd1, output_tb.rd2); //Output: 5b0
                #1
                input_tb.rs1_0 = 32'b00000000000000000000000001111111; //{7f} 
                input_tb.rs2_0 = 32'b00000000000000000000000000000000;
                #1
                $display("Output:");
                $display("%h - %h", output_tb.rd1, output_tb.rd2); //Output: c31
              end

              POLY_DECOMPRESS_2: begin
                $display("POLY-DECOMPRESS2 selected");
                input_tb.rs1_0 = 32'b00000000000000000000000001010111; //{57} 
                input_tb.rs2_0 = 32'b00000000000000000000000000000000;
                #1
                $display("Output:");
                $display("%h - %h", output_tb.rd1, output_tb.rd2); //Output: 410
                #1
                input_tb.rs1_0 = 32'b00000000000000000000000001111111; //{7f} 
                input_tb.rs2_0 = 32'b00000000000000000000000000000000;
                #1
                $display("Output:");
                $display("%h - %h", output_tb.rd1, output_tb.rd2); //Output: 5b0
              end

              POLY_DECOMPRESS_3: begin
                $display("POLY-DECOMPRESS3 selected");
                input_tb.rs1_0 = 32'b00000000000000000000000000001101; //{d} 
                input_tb.rs2_0 = 32'b00000000000000000000000000000000;
                #1
                $display("Output:");
                $display("%h - %h", output_tb.rd1, output_tb.rd2); //Output: 548
                #1
                input_tb.rs1_0 = 32'b00000000000000000000000000101010; //{2a} 
                input_tb.rs2_0 = 32'b00000000000000000000000000000000;
                #1
                $display("Output:");
                $display("%h - %h", output_tb.rd1, output_tb.rd2); //Output: 410
              end

              POLY_TOBYTES: begin
                $display("POLY_TOBYTES selected");
                input_tb.rs1_0 = 32'b00000000000000000000010100110011; //{533}
                input_tb.rs2_0 = 32'b00000000000000000000001000000101; //{205}
                #1
                $display("Output:");
                $display("%h - %h", output_tb.rd1, output_tb.rd2); //Output: 20-55-33
                #1
                input_tb.rs1_0 = 32'b000000000000000000000001101111101; //{37d} 
                input_tb.rs2_0 = 32'b000000000000000001111100111111001; //{f9f9}
                #1
                $display("Output:");
                $display("%h - %h", output_tb.rd1, output_tb.rd2); //Output: 6f-a3-7d
              end

            endcase
          end

          default: $display("Unknown mode");

        endcase
      end

      //I-INSTRUCTION
      2'b10: begin
      $display("I-instruction selected");
        case (mode.mode_athos)
          LOAD24_LE: begin
            $display("LOAD24_LE-MODE selected");
            input_tb.rs1_0 = 32'b00000000101110010000111111011010; //b90fda
            input_tb.rs2_0 = 32'b00000000000000000000000000000000; //0
            #1
            $display("LOAD24_LE-MODE output:");
            $display("%h - %h", output_tb.rd1, output_tb.rd2);
            //0 - b90fda 
          end

          LOAD32_LE: begin
            $display("LOAD32_LE-MODE selected");
            input_tb.rs1_0 = 32'b10000000101110010000111111011010; //80b90fda
            input_tb.rs2_0 = 32'b00000000000000000000000000000000; //0
            #1
            $display("LOAD32_LE-MODE output:");
            $display("%h - %h", output_tb.rd1, output_tb.rd2);
            //0 - 80b90fda 
          end

        default: $display("Unknown mode");

        endcase
      end

      default: $display("Unknown instruction type.");
      
    endcase

    #3
    $stop;
  end

  always begin
    #1 clk = ~clk;
  end

endmodule
