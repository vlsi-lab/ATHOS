import athos_pkg::*;

module enum_mux (
    input athos_pkg::out_t data_in1, data_in2, data_in3, data_in4, data_in5, data_in6, data_in7, data_in8, data_in9, data_in10, data_in11, data_in12, data_in13, data_in14, data_in15, 
    input athos_pkg::mode_t mode_i,
    input logic [1:0] insr_i,
    input athos_pkg::funct7_t funct7,
    output athos_pkg::out_t data_out
);

always_comb begin
  case (insr_i)
    //R-INSTRUCTION
    2'b01: 
      case (mode_i.mode_athos)
        
        athos_pkg::LOAD64: data_out = data_in2;
        
        athos_pkg::MONTG:
          case(funct7.funct7_athos)
            athos_pkg::MONTG_K_MODE:
              data_out = data_in3;
            default: data_out = 'b0;  // Handle the default case if needed
          endcase

        athos_pkg::BARRETT: data_out = data_in5;

        athos_pkg::CBD: data_out = data_in8;

        athos_pkg::POLY:           
          case(funct7.funct7_athos)
            athos_pkg::POLY_COMPRESS:
              data_out = data_in9;
            athos_pkg::POLY_COMPRESS_2:
              data_out = data_in9;
            athos_pkg::POLY_VEC_COMPRESS:
              data_out = data_in9;
            athos_pkg::POLY_VEC_COMPRESS2:
              data_out = data_in9;
            athos_pkg::POLY_DECOMPRESS_1:
              data_out = data_in10;
            athos_pkg::POLY_DECOMPRESS_2:
              data_out = data_in10;
            athos_pkg::POLY_DECOMPRESS_3:
              data_out = data_in10;
            athos_pkg::POLY_VEC_DECOMPRESS:
              data_out = data_in10;
            athos_pkg::POLY_VEC_DECOMPRESS2:
              data_out = data_in10;
            athos_pkg::POLY_TOBYTES_1:
              data_out = data_in11;
            athos_pkg::POLY_TOBYTES_2:
              data_out = data_in11;
            athos_pkg::POLY_TOBYTES_3:
              data_out = data_in11;  
            athos_pkg::POLY_FROMBYTES_1:
              data_out = data_in12;
            athos_pkg::POLY_FROMBYTES_2:
              data_out = data_in12;
            athos_pkg::POLY_FROMMSG:
              data_out = data_in13;
            athos_pkg::POLY_TOMSG_1:
              data_out = data_in14;
            athos_pkg::POLY_TOMSG_2:
              data_out = data_in14;
            athos_pkg::POLY_TOMSG_3:
              data_out = data_in14;
            athos_pkg::POLY_TOMSG_4:
              data_out = data_in14;
            athos_pkg::POLY_TOMSG_5:
              data_out = data_in14;
            athos_pkg::POLY_TOMSG_6:
              data_out = data_in14;
            athos_pkg::POLY_TOMSG_7:
              data_out = data_in14;
            athos_pkg::POLY_TOMSG_8:
              data_out = data_in14;
            default: data_out = 'b0;  // Handle the default case if needed
          endcase

        athos_pkg::KEM: data_out = data_in15;

        default: data_out = 'b0;  // Handle the default case if needed
      endcase
    
    //I-INSTRUCTION
    2'b10: 
      case (mode_i.mode_athos)

        athos_pkg::LOAD24_LE: data_out = data_in6;
        
        athos_pkg::LOAD32_LE: data_out = data_in7;

        default: data_out = 'b0;  // Handle the default case if needed
      endcase


    default: data_out = 'b0;  // Handle the default case if needed

    endcase //endcase for insr_i
end
    
endmodule
