// Gmsh project created on Tue Oct  9 10:56:37 2018
SetFactory("OpenCASCADE");
//+

r = 0.1;
theta = 45 *(Pi/180);

Point(1) = {0, 0, 0, 1.0};
Point(2) = {1, 0, 0, 1.0};
Point(3) = {1, 1, 0, 1.0};
Point(4) = {0, 1, 0, 1.0};
Point(5) = {0.5, 0.5, 0, 1.0};

Point(6) = {0.5-r*Cos(theta), 0.5-r*Sin(theta), 0, 1.0};
Point(7) = {0.5-r*Cos(theta), 0.5+r*Sin(theta), 0, 1.0};
Point(8) = {0.5+r*Cos(theta), 0.5+r*Sin(theta), 0, 1.0};
Point(9) = {0.5+r*Cos(theta), 0.5-r*Sin(theta), 0, 1.0};


//+
Line(1) = {1, 2};
//+
Line(2) = {2, 3};
//+
Line(3) = {3, 4};
//+
Line(4) = {4, 1};

//+
Circle(5) = {6, 5, 9};
//+
Circle(6) = {5, 9, 8};
//+
Circle(6) = {9, 5, 8};
//+
Circle(7) = {8, 5, 7};
//+
Circle(8) = {7, 5, 6};
//+
Line(9) = {1, 6};
//+
Line(10) = {9, 2};
//+
Line(11) = {8, 3};
//+
Line(12) = {7, 4};
//+
Curve Loop(1) = {9, 5, 10, -1};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {2, -11, -6, 10};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {3, -12, -7, 11};
//+
Plane Surface(3) = {3};
//+
Curve Loop(4) = {4, 9, -8, 12};
//+
Plane Surface(4) = {4};


//+
Transfinite Curve {9, 10, 11, 12} = 15 Using Progression 1;
//+
Transfinite Curve {8, 5, 6, 7, 3, 4, 1, 2} = 21 Using Progression 1;
//+
Transfinite Surface {1} = {1, 6, 9, 2};
//+
Transfinite Surface {2} = {9, 2, 3, 8};
//+
Transfinite Surface {3} = {8, 3, 4, 7};
//+
Transfinite Surface {4} = {7, 4, 1, 6};
//+
Physical Curve("Well") = {8, 7, 6, 5};
