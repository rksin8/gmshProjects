// Gmsh project created on Fri Oct  5 16:43:28 2018
SetFactory("OpenCASCADE");
//+
Point(1) = {0, 0, 0, 1.0};
//+
Point(2) = {1, 0, 0, 1.0};
//+
Point(3) = {1, 1, 0, 1.0};
//+
Point(4) = {0, 1, 0, 1.0};
//+ c1 center
Point(5) = {0.15, 0.15, 0, 1.0};
//+
Point(6) = {0.20, 0.20, 0, 1.0};
//+
Point(7) = {0.10, 0.10, 0, 1.0};

//+ c2 center
Point(8) = {0.85, 0.85, 0, 1.0};
//+
Point(9) = {0.8, 0.80, 0, 1.0};
//+
Point(10) = {0.90, 0.90, 0, 1.0};


//+
Circle(1) = {5, 7, 6};
//+
Circle(1) = {6, 5, 7};
//+
Circle(2) = {7, 5, 6};
//+
Circle(3) = {9, 8, 10};
//+
Circle(4) = {10, 8, 9};

//+
Line(5) = {1, 2};
//+
Line(6) = {2, 3};
//+
Line(7) = {3, 4};
//+
Line(8) = {4, 1};
//+
Curve Loop(1) = {7, 8, 5, 6};
//+
Curve Loop(2) = {2, 1};
//+
Curve Loop(3) = {3, 4};
//+
Curve Loop(4) = {2, 1};
//+
Curve Loop(5) = {2, 1};
//+
Plane Surface(1) = {1, 2, 3, 4, 5};
//+
Extrude {0, 0, 1} {
  Surface{1};
}

//+
Transfinite Curve {11, 7, 15, 5, 6, 16, 8, 13, 18, 17, 21, 22} = 20 Using Progression 1.0;
//+
Transfinite Curve {19, 20, 2, 15, 1, 4, 3, 23, 24} = 40  Using Progression 1.0;
//+
Transfinite Surface {7};
