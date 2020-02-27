# AMPL
Models in AMPL\BARON mathematical modeling language

This is a repository of the vertices approach modeling using BARON Software from AMPL

Files prefixes: 

	number_InsType_ContType_<hom/het>.kind

	number -> Number of objects in the instance. A 2~4 digits number

	InstType -> Type of objects to containt, posible values (Triangles, Rectangles, Squares, Pentagons).
	 
	ContType -> Object container type, posible values (Circular sections, Circles, Recatngles)

	hom -> All objects to be contained have the same size length.

	het -> Objects to be containd have different size length.
	
	mix -> Object to be contained are different in size and shape.

	kind -> Depends on the information placed in the file, some of the posible kinds are:	
			* bar -> BARON Software extended model.
			* csv -> CSV file with information.
			* dat -> Instance definition. 
			* mod -> Model definition of the model in AMPL modeling language.
			* run -> Script to run the model in AMPL or NEOS Server.

# Repository structure
Folders

	datasets -> This folder contains two CSV files for each combination of container type and object type contained.				
			* One CSVfile with some significative tolerance variations in [1e-6, 1e-1].
			* One CSVfile with Cartesian coordinates.

	models -> This folder contains a subfolder for each combination of (container type/contained type).			
			* A fully expanded model in BARON Software language. (.BAR format file)			
			* The model in AMPL modeling language definition. (.MOD format file)			
			* The current instance data definition. (.DAT format file)
			
	
	outfiles ->  


	run ->

	stats ->
	

Bin Packing team: binpacking.unal@gmail.com
		
		Phd. Igor Litvinchev - igorlitvinchev@gmail.com
		Aned Esquerra Arguelles - anedesquerra@gmail.com
		Alberto Martínez Noa - mnalbert1409@gmail.com
		Rogelio de Jesus Díaz Corrales - dicoro993@gmail.com
