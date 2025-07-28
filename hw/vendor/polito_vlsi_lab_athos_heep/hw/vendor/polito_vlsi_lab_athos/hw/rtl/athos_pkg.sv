package athos_pkg;

  // funct3 for ATHOS_R intruction
  typedef enum logic [2:0] {
    KEM      = 3'b001, //1
    LOAD64   = 3'b010, //2
    MONTG    = 3'b011, //3
    BARRETT  = 3'b100, //4
    CBD      = 3'b101, //5
    POLY     = 3'b110, //6
    OP_R_R7  = 3'b111  //7
  } athos_r_op;

  // funct3 for ATHOS_I intruction
  typedef enum logic [2:0] {
    LOAD24_LE   = 3'b001,
    LOAD32_LE   = 3'b010,
    OP_I_R3     = 3'b011,
    OP_I_R4     = 3'b100,
    OP_I_R5     = 3'b101,
    OP_I_R6     = 3'b110,
    OP_I_R7     = 3'b111
} athos_i_op;

  // New instruction definition
  typedef union packed {
    struct packed {
      logic [6:0] funct7;  // 31:25
      logic [4:0] rs2;     // 24:20
      logic [4:0] rs1;     // 19:15
      athos_r_op funct3;  // 14:12
      logic [4:0] rd;      // 11:7
      logic [6:0] opcode;  // 6:0
    } as_athos_R;
    struct packed {
      logic [11:0] immediate;
      logic [4:0]  rs1;
      athos_i_op  funct3;
      logic [4:0]  rd;
      logic [6:0]  opcode;
    } as_athos_I;
    logic [31:0] raw;
  } instruction_u;

  // Opcode of the new instruction
  typedef enum logic [6:0] {
    ATHOS_R = 7'b0001011,
    ATHOS_I = 7'b0101011
  } athos_op;


  // Mode of operation of ATHOS
  typedef enum logic [6:0] {
    RESET_MODE           = 7'b0000000,
    FUNCT7_1             = 7'b0000001,
    MONTG_K_MODE         = 7'b0000010,
    MONTG_D_MODE         = 7'b0000011,
    FUNCT7_4             = 7'b0000100,
    CBD3_1_MODE          = 7'b0000101, //5
    CBD3_2_MODE          = 7'b0000110, //6
    CBD3_3_MODE          = 7'b0000111, //7
    CBD3_4_MODE          = 7'b0001000, //8
    CBD2_1_MODE          = 7'b0001001, //9
    CBD2_2_MODE          = 7'b0001010, //10
    CBD2_3_MODE          = 7'b0001011, //11
    CBD2_4_MODE          = 7'b0001100, //12
    CBD2_5_MODE          = 7'b0001101, //13
    CBD2_6_MODE          = 7'b0001110, //14
    CBD2_7_MODE          = 7'b0001111, //15
    CBD2_8_MODE          = 7'b0010000, //16
    POLY_COMPRESS        = 7'b0010001, //17
    POLY_DECOMPRESS_1    = 7'b0010010, //18
    POLY_DECOMPRESS_2    = 7'b0010011, //19
    POLY_COMPRESS_2      = 7'b0010100, //20
    POLY_DECOMPRESS_3    = 7'b0010101, //21
    POLY_TOBYTES_1       = 7'b0010110, //22
    POLY_TOBYTES_2       = 7'b0010111, //23
    POLY_TOBYTES_3       = 7'b0011000, //24
    POLY_FROMBYTES_1     = 7'b0011001, //25
    POLY_FROMBYTES_2     = 7'b0011010, //26
    POLY_FROMMSG         = 7'b0011011, //27
    POLY_TOMSG_1         = 7'b0011100, //28
    POLY_TOMSG_2         = 7'b0011101, //29
    POLY_TOMSG_3         = 7'b0011110, //30
    POLY_TOMSG_4         = 7'b0011111, //31
    POLY_TOMSG_5         = 7'b0100000, //32
    POLY_TOMSG_6         = 7'b0100001, //33
    POLY_TOMSG_7         = 7'b0100010, //34
    POLY_TOMSG_8         = 7'b0100011, //35
    POLY_VEC_COMPRESS    = 7'b0100100, //36
    POLY_VEC_COMPRESS2   = 7'b0100101, //37
    POLY_VEC_DECOMPRESS  = 7'b0100110, //38
    POLY_VEC_DECOMPRESS2 = 7'b0100111, //39
    REJ_UNIFORM_0        = 7'b0101000, //40
    REJ_UNIFORM_1        = 7'b0101001 //41
  } athos_funct7;

  // State of the FSM of the controller
  typedef enum logic [1:0] {
    RESET_S,
    WAIT_S,
    COMPUTE_S,
    DONE_S
  } controller_state_t;

  
  typedef struct packed {
    logic [2:0] mode_athos;
  } mode_t;

  typedef struct packed {
    logic [6:0] funct7_athos;
  } funct7_t;

  typedef struct packed {
    logic [11:0] immediate_athos;
  } immediate_t;


  typedef struct packed {
    logic [31:0] rs1_0;
    logic [31:0] rs2_0;
    logic [31:0] rs1_1;
    logic [31:0] rs2_1;    
  } in_t;

  typedef struct packed {
      logic [31:0] rd1;
      logic [31:0] rd2;
  } out_t;


  typedef struct {
    logic signed [31:0] QINV_D;
    logic signed [31:0] Q_D;
    logic signed [15:0] QINV_K;
    logic signed [15:0] Q_K;
  } CONSTANT;

endpackage
