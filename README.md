# AMPL
Models in AMPL modeling language

In this repository different tested models can be found, there are several folders with experimentation related outputs and codes of AMPL modeling language.

Files prefixes: 

	number_InsType_ContType_<hom/het>.kind

	number -> the amount of objects in the instance. A 2~4 digits number

	InstType -> The type of object to containt. Posible values (Triangles, Rectangles, Squares, Pentagons).
	 
	ContType -> Th object container type. Posible values (Circular sections, Circles, Recatngles)

	hom -> All objects to be contained have the same size length.

	het -> Objects to be containd have different size length.

	kind -> Depends on data in the file:
		
		bar -> BARON Software extended model.
		csv -> CSV file with information.
		dat -> Instance definition. 
		mod -> Model definition of the model in AMPL modeling language.
		run -> Script to run the model in AMPL or NEOS Server.

Folders

	datasets -> 

	models -> This folder contains a subfolder for each combination of (model/instance).
			
			* A fully expanded model in BARON Software language. (.BAR format file)			
			* The model in AMPL modeling language definition. (.MOD format file)			
			* The current instance data definition. (.DAT format file)
			
	
	outfiles ->  

	raw -> 

	run ->

	stats ->
	

Bin Packing team:
		
		Igor Litvinchev
		Aned Esquerra Arguelles - anedesquerra@gmail.com
		Alberto Martínez Noa
		Rogelio de Jesus Díaz Corrales
