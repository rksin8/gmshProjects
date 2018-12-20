// Gmsh project created on Fri Oct  5 16:01:41 2018
SetFactory("OpenCASCADE");
//+
Point(1) = {0, 0, 0, 1.0};
//+
Point(2) = {1, 0, 0, 1.0};
//+
Point(3) = {1, 1, 0, 1.0};
//+
Point(4) = {0, 1, 0, 1.0};

//+
Line(1) = {3, 2};
//+
Line(2) = {2, 1};
//+
Line(3) = {1, 4};
//+
Line(4) = {4, 3};
//+
Curve Loop(1) = {3, 4, 1, 2};
//+
Plane Surface(1) = {1};
//+
Extrude {0, 0, 1} {
  Surface{1}; Layers{6}; Recombine;
}
//+
Transfinite Curve {1, 11, 10, 8, 9, 4, 6, 3, 2, 12, 7, 5} = 20 Using Progression 1;
//+
Transfinite Surface {6};
//+
Recombine Surface {6, 1, 5, 2, 3, 4};
//+
Transfinite Volume{1} = {5, 8, 7, 6, 1, 4, 3, 2};
//+
Surface{5, 2} In Surface{5};
//+
Surface{2} In Surface{2};
