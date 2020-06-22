# AMPL
Models in AMPL\BARON mathematical modeling language

This is a repository of the vertices approach modeling using BARON Software from AMPL

# Files prefixes: number_InsType_ContType_details.kind

File names follow a pattern to easy identify them....


	number -> Number of objects in the instance: 2~4 digits number prefix

	InstType -> Type of objects to containt: 3 chars prefix
		Posible values -> Tri(Triangles), Rec(Rectangles), Squ(Squares), Pen(Pentagons)
	 
	ContType -> Object container type: 3 chars.
		Posible values -> Cil(Cilinder), Sph(Sphere), Cir(Circular), CiS(Circular Section)

	details -> A group of prefixes detailing file contents.
			*hom = All objects to be contained have the same size length.
			*het = Objects to be containd have different size length.
			*mix = Object to be contained are different in size and shape.
			*reg = Regular objects.
			*coords = Cartesian coordinates.
			*tol = Tolerances.

	kind -> Depends on the information placed in the file, some of the posible kinds are:	
			* bar = BARON Software expanded model.
			* csv = CSV file with information.
			* dat = Instance definition. 
			* mod = Model definition of the model in AMPL modeling language.
			* run = Script to run the model in AMPL or NEOS Server.

# Repository structure
Folders

<<<<<<< HEAD
	datasets -> 

	models -> This folder contains a subfolder for each combination of (model/instance).
=======
	datasets -> This folder contains two CSV files for each combination of container type and object type contained.				
			* One CSVfile with some significative tolerance variations in [1e-6, 1e-1].
			* One CSVfile with Cartesian coordinates.
>>>>>>> 2b4a6d387ea4a3c09ed99037068803e8ac9b2982
			
			Examples: 
				05_Tet_Cil_hom_coords.csv = Cartesian coordinates of 5 regular tetrahedra packed in a cylindrical container.
				05_Tet_Cil_hom_tol.csv = Results of packing experimentation with 5 regular tetrahedra in a cylindrical container.
			
	instances -> Data files containing instance definition based on adjacency matrices.

	models -> This folder contains three files for each container type/contained type combination.			
			* A fully expanded model in BARON Software language. (.BAR format file)			
			* The model in AMPL modeling language definition. (.MOD format file)			
			* The current instance data definition. (.DAT format file)
			
	outfiles ->  AMPL output information in a plain txt format.
	
	raw models -> Entire bundle of files to run the model in AMPL IDE.

	run files ->  

	stats -> Stats on instances (Ongoing project for later improvements)
	
# Contact data
Bin Packing team: binpacking.unal@gmail.com
		
		
		Aned Esquerra Arguelles - anedesquerra@gmail.com
		Alberto Martínez Noa - mnalbert1409@gmail.com
		Rogelio de Jesus Díaz Corrales - dicoro993@gmail.com
		Ph.D. Igor Litvinchev - igorlitvinchev@gmail.com
		Ph.D. Tatiana Romanova  - tarom27@yahoo.com
		Ph.D. Socorro Rangel - socorro.rangel@unesp.br 
		Ph.D. Antonio Marmolejo - marmolejo.antonio@hotmail.com 
		Ph.D. Daniel Mosquera Artamonov - jodamos15@gmail.com 
		Ph.D. Lucero Ozuna - luceroozuna@gmail.com
