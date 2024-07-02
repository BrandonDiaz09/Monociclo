/*	Grupo: 5CV3 	Proyecto: ALU	Archivo: memoria_b.v
Equipo: 6
Integrantes: 
Díaz Ortiz Brandon Aldair			González Rosales Brenda Yareth
Hernández Suarez Diego Armando			Pérez Aguilar Dulce Evelyn 
Romero Barrientos Jonathan Rubén
Descripción: permite leer los valores almacenados en la memoria a través de una dirección proporcionada como entrada.
*/
module memoria_b (

	input 		[2:0] addr_i,
	output 		[31:0] operador_o 

);

	//definicion de la memoria
	reg 			[31:0] memory [7:0]; //Parametro de profundidad - memory - luego parametro de ancho
	
	initial
	begin
		memory[0] = 32'b1;
		memory[1] = 32'b10100111001001100100101001000101;
		memory[2] = 32'b10100111001001100100101001000101;
	end

	//Puerto de lectura
	assign 			operador_o = memory[addr_i];
	
endmodule 
