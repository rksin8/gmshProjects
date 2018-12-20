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
Extrude {0, 0, 1} {
  Surface{4}; Surface{3}; Surface{2}; Surface{1}; //Recombine; //Layers{5}; Recombine;
}
//+
Transfinite Curve {20, 22, 25, 30, 32, 17, 19, 24, 29, 31, 15, 27, 18, 16, 23, 28, 21, 13, 14, 26, 3, 12, 4, 7, 8, 5, 6, 11, 2, 10, 9, 1} = 21 Using Progression 1;

//+
Transfinite Surface {9};
//+
Transfinite Surface {4};
//+
Transfinite Surface {8};
//+
Transfinite Surface {6};
//+
Transfinite Surface {7};
//+
Transfinite Surface {5};
//+
Recombine Surface {8, 6};
//+
Recombine Surface {4, 9};
//+
Recombine Surface {7, 5};
//+
Transfinite Volume{1} = {7, 13, 10, 4, 1, 11, 12, 6};









//+
Transfinite Surface {20};
//+
Transfinite Surface {1};
//+
Transfinite Surface {6};
//+
Transfinite Surface {16};
//+
Transfinite Surface {19};
//+
Transfinite Surface {18};
//+
Transfinite Surface {1};
//+
Recombine Surface {18, 19};
//+
Recombine Surface {6, 16};
//+
Recombine Surface {20, 1};
//+
Transfinite Volume{4} = {6, 12, 11, 1, 2, 16, 17, 9};


//+
Transfinite Surface {17};
//+
Transfinite Surface {16};
//+
Transfinite Surface {15};
//+
Transfinite Surface {2};
//+
Transfinite Surface {14};
//+
Transfinite Surface {12};

//+
Recombine Surface {15, 14};
//+
Recombine Surface {16, 12};
//+
Recombine Surface {2, 17};
//+
Transfinite Volume{3} = {9, 17, 16, 2, 3, 14, 15, 8};




//+
Transfinite Surface {3};
//+
Transfinite Surface {13};
//+
Transfinite Surface {12};
//+
Transfinite Surface {8};
//+
Transfinite Surface {11};
//+
Transfinite Surface {10};


//+
Recombine Surface {11, 10};
//+
Recombine Surface {8, 12};
//+
Recombine Surface {13, 3};

