param nfigures > 0;
param npoints > 0;
param ndimensions > 0; 

# Sets definition
set figures := 1 .. nfigures by 1;
set points := 1 .. npoints by 1;
set dimensions := 1 .. ndimensions by 1;
#set aux:=1...naux by 1;

# Parameters setting
#param  W >= 0;
param distances{figures, points, points} >= 0;
param tolerance >= 0;


# Variables declaration
var coords{figures, points, dimensions}>=0;

var alpha{figures, figures} >= 0;
var beta{figures, figures} >= 0;

var lamda{figures, figures, points} >= 0;
var miu{figures, figures, points} >= 0;

#var height >= 0;
var vp{figures, figures, dimensions};
var R>=0;

# Objective function
minimize Objective:
    R
;


subject to alpha_beta_constraints  {i in figures, j in figures: j > i}:
     					alpha[i, j] + beta[i, j] <= 2 - tolerance
;

subject to lamda_alpha_equality_constraints {i in figures, j in figures: j > i}:
                        sum{l in points} (lamda[i, j, l] + miu[i, j, l]) = alpha[i, j] + beta[i, j]
;


subject to equality_constraints {i in figures, j in figures: j > i}:
    sum{l in points, n in dimensions} lamda[i, j, l] * coords[i, l, n] =  sum{l in points, n in dimensions} miu[i, j, l] * coords[j, l, n]
;

############################################################ EUCLIDEAN DISTANCES CONSTRAINTS ####################################################

##############################################################################################################################################
subject to euclidean_distance_constraints {i in figures, l in points: l< card(points)}:
    sum{n in dimensions} (coords[i, l, n] - coords[i, l+1, n]) ^ 2 =  distances[i, l, l+1]^ 2 
;

subject to euclidean_distance_constraints01 {i in figures}:
    sum{n in dimensions} (coords[i, card(points), n] - coords[i, 1, n]) ^ 2 =  distances[i, card(points), 1]^ 2 
;

subject to complementary_euclidean_distance_constraints_diagonal {i in figures, l in points: l<3}:
    sum{n in dimensions} (coords[i, l, n] - coords[i, l+2, n]) ^ 2 = distances[i, l, l+1]^ 2 + distances[i, l+1, l+2]^ 2 
;


################################################################ objetive_constraints ###########################################################

###############################################################################################################################################
/*subject to objetive_constraints {i in figures, l in points}:
    height >= coords[i, l, 2]
; */

subject to lamda_constraints {i in figures, j in figures: j > i}:
    sum{l in points} lamda[i, j, l] <= 1
;

subject to miu_constraints {i in figures, j in figures: j > i}:
    sum{l in points} miu[i, j, l] <= 1
;

subject to vp_plus_constraints {i in figures, j in figures, l in points: j > i}:                   
    sum{n in dimensions} vp[i, j, n] * coords[i, l, n] - alpha[i, j]  <= -1
;

subject to vp_minus_constraints {i in figures, j in figures, l in points: j > i}:                   
    sum{n in dimensions} vp[i, j, n] * coords[j, l, n] + beta[i, j]  >= 1
;

/*subject to width_containing_constraints {i in figures, l in points}:
    0 <= coords[i, l, 1] <= W 
;*/

subject to circularm {i in figures, j in points }:
    ((coords[i,j,1]) ^ 2 + (coords[i,j,2]) ^ 2)<= R ^ 2
;