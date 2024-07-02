	/*	Grupo: 5CV3 	Proyecto: Monociclo	Archivo: sll1bit.v
Equipo: 6
Integrantes: 
Díaz Ortiz Brandon Aldair			González Rosales Brenda Yareth
Hernández Suarez Diego Armando			Pérez Aguilar Dulce Evelyn 
Romero Barrientos Jonathan Rubén
Descripción:  desplazamiento lógico a la izquierda de un bit en una palabra de 32 bits de entrada 
*/
module sll1bit(
	input [31:0] entrada_i,
	output [31:0] salida_o
);

	assign salida_o = entrada_i<<1;
endmodule 
