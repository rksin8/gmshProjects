// Gmsh project created on Fri Oct 12 11:19:11 2018
SetFactory("OpenCASCADE");

r = Sqrt( 0.1*0.1 + 0.1*0.1);
angle1 = 45*(Pi/180.0);
angle2 = 90*(Pi/180.0);
//+
Point(1) = {0, 0, 0, 1.0};
//+
Point(2) = {r*Cos(0), r*Sin(0), 0, 1.0};
//+
Point(3) = {1, 0, 0, 1.0};
//+
Point(4) = {1, 1, 0, 1.0};
//+
Point(5) = {0, 1, 0, 1.0};
//+
Point(6) = {r*Cos(angle2), r*Sin(angle2), 0, 1.0};
//+
Point(7) = {r*Cos(angle1),r*Sin(angle1),  0, 1.0};


//+
Line(1) = {2,3};
//+
Line(2) = {3, 4};
//+
Line(3) = {4, 7};
//+
Circle(4) = {7, 1, 2};
//+
Line(5) = {4, 5};
//+
Line(6) = {5, 6};
//+
Circle(7) = {6, 1, 7};
//+
Curve Loop(1) = {6, 7, -3, 5};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {3, 4, 1, 2};
//+
Plane Surface(2) = {2};
//+
Transfinite Curve {6,1} = 30 Using Progression 0.9;
//+
Transfinite Curve {1} = 30 Using Progression 1.1;
//+
Transfinite Curve {3} = 30 Using Progression 0.9;
//+
Transfinite Curve {5,2} = 15 Using Progression 0.95;
//+
Transfinite Curve {2} = 15 Using Progression 1.05;
//+
Transfinite Curve {7,4} = 15 Using Progression 1.0;



//+
Transfinite Surface {2} = {2, 7, 4, 3};
//+
Transfinite Surface {1} = {7, 4, 5, 6};
Recombine Surface {1, 2};
