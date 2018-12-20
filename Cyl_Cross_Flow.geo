//SetFactory("built-in");  
SetFactory("OpenCASCADE");

R = 50;   // Radius of the cylinder
Lu = 200; // Inlet: Distance upstream the cylinder centre
Ld = 500; // Outlet: Distance downstream of the cylinder
Hy = 100; // Walls: Top and bottom edge
Hz = 50;  // Thickness in perpendicular direction 

eSiz = 1;  // Element sizes
f = 1.2;
e2 = 4.0;  // Element size far field
nBL = 11;  // Number of nodes in BL
nQ = 24;   // Number of sub-divisions of cylinder walls
nZ = 5;    // Number of layers in Z-direction (along thickness)

Point(1) = { 0,  0, 0, eSiz};      //Centre of the circle - 90 deg arc
Point(2) = { R,  0, 0, eSiz};      //Start point of the circle - 90 deg arc
Point(3) = { 0,  R, 0, eSiz};      //End point - 90 deg arc
Point(4) = {-R,  0, 0, eSiz};      //End point of second arc
Point(5) = { 0, -R, 0, eSiz};      //End point of third arc

Point(6) = { f*R,  0, 0, eSiz};    //Start point of the circle - 90 deg arc
Point(7) = { 0,  f*R, 0, eSiz};    //End point - 90 deg arc
Point(8) = {-f*R,  0, 0, eSiz};    //End point of second arc
Point(9) = { 0, -f*R, 0, eSiz};    //End point of third arc

Circle(10) = {2, 1, 3};
Circle(11) = {3, 1, 4}; 
Circle(12) = {4, 1, 5};
Circle(13) = {5, 1, 2};

Circle(14) = {6, 1, 7};
Circle(15) = {7, 1, 8}; 
Circle(16) = {8, 1, 9};
Circle(17) = {9, 1, 6};

Line(18) = {2, 6};
Line(19) = {7, 3};
Line(20) = {4, 8};
Line(21) = {9, 5};

//-----------------------------------------------------------------------------
Line Loop(22) = {10, 18, 14, 19};
Line Loop(23) = {19, 11, 15, 20};
Line Loop(24) = {20, 12, 16, 21};
Line Loop(25) = {21, 13, 17, 18};

Plane Surface(26) = {22};
Plane Surface(27) = {23};
Plane Surface(28) = {24};
Plane Surface(29) = {25};

//-----------------------------------------------------------------------------
Point(30) = { Ld, 0, 0, e2};
Point(31) = { Ld, Hy, 0, e2};
Point(32) = { 0, Hy, 0, e2};
Line(33) = {6, 30};
Line(34) = {30, 31};
Line(35) = {31, 32};
Line(36) = {32, 7};
Line Loop(37) = {33, 34, 35, 36, 14};
Plane Surface(38) = {37};

Point(39) = { Ld, -Hy, 0, e2};
Point(40) = { 0, -Hy, 0, e2};
Line(41) = {9, 40};
Line(42) = {40, 39};
Line(43) = {39, 30};
Line Loop(44) = {41, 42, 43, 33, 17};
Plane Surface(45) = {44};

//-----------------------------------------------------------------------------
Point(46) = { -Lu, Hy, 0, e2};
Point(47) = { -Lu, 0, 0, e2};
Line(48) = {32, 46};
Line(49) = {46, 47};
Line(50) = {47, 8};
Line Loop(51) = {15, 36, 48, 49, 50};
Plane Surface(52) = {51};

Point(53) = { -Lu, -Hy, 0, e2};
Line(54) = {47, 53};
Line(55) = {53, 40};
Line Loop(56) = {16, 50, 54, 55, 41};
Plane Surface(57) = {56};

//-----------------------------------------------------------------------------

Transfinite Line{18, 19} = nBL;
Transfinite Line{10, 14} = nQ;
Transfinite Surface{26};
//Recombines the triangular meshes into mixed triangular/quadrangular meshes. 
Recombine Surface{26};

Transfinite Line{19, 20} = nBL;
Transfinite Line{11, 15} = nQ;
Transfinite Surface{27};
Recombine Surface{27};

Transfinite Line{20, 21} = nBL;
Transfinite Line{12, 16} = nQ;
Transfinite Surface{28};
Recombine Surface{28};

Transfinite Line{21, 18} = nBL;
Transfinite Line{13, 17} = nQ;
Transfinite Surface{29};
Recombine Surface{29};

//-----------------------------------------------------------------------------
//Treats the given entities as a single entity when meshing
//Compound Curve {14, 36};
//Compound Curve {17, 41};

//Transfinite Surface{38}; 
Recombine Surface{38};

//Transfinite Surface{45};
Recombine Surface{45};

//Transfinite Surface{52};
Recombine Surface{52};

//Transfinite Surface{57};
Recombine Surface{57};

//-----------------------------------------------------------------------------
//Create thickness in Z-diretion by extrusion
//Extrude {0, 0, -Hz}{ Surface{26, 27, 28, 29, 38, 45, 52, 57}; }

num[]=Extrude {0,0,-Hz} {Surface{26, 27, 28, 29, 38, 45, 52, 57}; Layers{nZ}; Recombine;};
//num[]=Extrude {0,0,-Hz} {Surface{26}; Layers{nZ}; Recombine;};

//Removes all duplicate mesh nodes.
Coherence Mesh;

//-----------------------------------------------------------------------------
/*
Circle(1) = {0, 0, 0, R, 0, 2*Pi};     //Start, centre, end - OpenCASCADE only
Circle(2) = {0, 0, 0, f*R, 0, 2*Pi};   //Start, centre, end - OpenCASCADE only
Plane Surface(3) = {1, 2};
*/


