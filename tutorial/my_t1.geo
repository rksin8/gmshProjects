// Gmsh project created on Mon Oct  8 19:02:39 2018
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
Point(5) = {0.5, 0.5, 0, 1.0};
//+
Point(6) = {0.5, 0.4, 0, 1.0};
//+
Point(7) = {0.5, 0.6, 0, 1.0};
//+
Point(8) = {0.4, 0.5, 0, 1.0};
//+
Point(9) = {0.5, 1.0, 0, 1.0};
//+
Point(10) = {0, 0.5, 0, 1.0};


//+
Line(1) = {10, 8};
//+
Circle(2) = {8, 5, 7};
//+
Line(3) = {7, 9};
Line(4) = {9, 4};
//+
Line(5) = {4, 10};
//+
Line(6) = {10, 1};
//+
Point(11) = {0.5, 0, 0, 1.0};
//+
Point(12) = {0.6, 0.5, 0, 1.0};
//+
Point(13) = {0.4, 0.4, -0, 1.0};
//+
Line(7) = {1, 11};
//+
Line(8) = {11, 6};
//+
Circle(9) = {6, 5, 8};
//+
Line(10) = {11, 2};
//+
Point(14) = {1, 0.5, 0, 1.0};

//+
Circle(11) = {7, 5, 12};
//+
Line(12) = {12, 14};
//+
Line(13) = {14, 3};
//+
Line(14) = {3, 9};

//+
Line(15) = {2, 14};
//+
Curve Loop(1) = {1, -9, -8, -7, -6};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {5, 1, 2, 3, 4};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {3, -14, -13, -12, -11};
//+
Plane Surface(3) = {3};
//+
Curve Loop(4) = {8, 9, 2, 11, 12, -15, -10};
//+
Plane Surface(4) = {4};
//+
Extrude {0, 0, 0.2} {
  Surface{1}; Surface{2}; Surface{3}; Surface{4}; 
}

//+
Transfinite Surface {6};
//+
Recombine Surface {9, 8, 6};
