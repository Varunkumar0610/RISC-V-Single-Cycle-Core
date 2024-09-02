
module Sign_Extend (In,Imm_Ext,ImmSrc);

    input [31:0]In;
    input ImmSrc;
    output [31:0]Imm_Ext;

    assign Imm_Ext = (In[31]) ? {{20{1'b1}},In[31:20]} :
                                {{20{1'b0}},In[31:20]};    
                                
endmodule