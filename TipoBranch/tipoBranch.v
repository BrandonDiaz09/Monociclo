/*	Grupo: 5CV3 	Proyecto: Monociclo	Archivo: tipoBranch.v
Equipo: 6
Integrantes: 
Díaz Ortiz Brandon Aldair			González Rosales Brenda Yareth
Hernández Suarez Diego Armando			Pérez Aguilar Dulce Evelyn 
Romero Barrientos Jonathan Rubén
Descripción: evalúa varias señales de control y flags para decidir si el PC debe actualizarse.
Dependiendo del tipo de instrucción el módulo establece la salida pc_source_o para indicar si se debe cambiar el PC.
*/
module tipoBranch (
    input       branch_i,
    input       branch_ctrl_i,
    input       tipo_j_i,
    input       zero_flag_I,
    input       bit_m_i,
    output reg  pc_source_o
);

    always @(*)
        begin
            if(branch_i==1'b1)
                case (branch_ctrl_i)
                    3'b000:         // BEQ
                        if(zero_flag_I == 1'b1)
                            pc_source_o = 1'b1;
                        else
                            pc_source_o = 1'b0;
                    3'b001:         // BNE
                        if(zero_flag_I == 1'b0)
                            pc_source_o = 1'b1;
                        else
                            pc_source_o = 1'b0;
                    3'b100:         // BLT
                        if(bit_m_i == 1'b1)
                            pc_source_o = 1'b1;
                        else
                            pc_source_o = 1'b0;
                    3'b101:         // BGE
                        if(bit_m_i == 1'b0)
                            pc_source_o = 1'b1;
                        else
                            pc_source_o = 1'b0;
                endcase
            else if (tipo_j_i==1'b1)
                    begin
                        pc_source_o = 1'b1;
                    end
            else 
                begin
                   pc_source_o = 1'b0; 
                end
            brflag_o = 1'b0;
        end
endmodule
