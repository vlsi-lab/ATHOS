package athos_ip_pkg;

  typedef enum logic [5:0] {
    NULL                      = 6'b000000,
    KECCAK                    = 6'b000001,
    NTT                       = 6'b000010,
    INTT                      = 6'b000011,
    TRNG                      = 6'b000100
 } athos_ip_op;


  // State of the FSM of the CU
  typedef enum logic [2:0] {
    IDLE_S,
    LOAD_S,
    COMPUTE_S,
    STORE_S,
    DONE_S
  } state_t;



endpackage
