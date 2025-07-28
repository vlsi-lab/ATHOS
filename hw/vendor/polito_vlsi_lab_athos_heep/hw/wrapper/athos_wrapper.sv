module athos_wrapper (
    input logic clk_i,
    input logic rst_ni,

    // eXtension interface
    cv32e40x_if_xif.coproc_compressed xif_compressed_if,
    cv32e40x_if_xif.coproc_issue      xif_issue_if,
    cv32e40x_if_xif.coproc_commit     xif_commit_if,
    cv32e40x_if_xif.coproc_mem        xif_mem_if,
    cv32e40x_if_xif.coproc_mem_result xif_mem_result_if,
    cv32e40x_if_xif.coproc_result     xif_result_if
);

    athos_top i_athos_top (
    .clk_i,
    .rst_ni,
    //XIF interface
    .xif_compressed_if,
    .xif_issue_if,
    .xif_commit_if,
    .xif_mem_if,
    .xif_mem_result_if,
    .xif_result_if
);

endmodule
