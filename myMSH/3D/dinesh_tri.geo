

x = 1000;
y= 1000;

cl__1 = 1;
Point(1) = {0, 0, 0, 1};
Point(2) = {x, 0, 0, 1};
Point(3) = {x, y, 0, 1};
Point(4) = {0, y, 0, 1};
Point(5) = {x/2.0, y/2.0, 0, 1};
Line(1) = {1, 2};
Line(2) = {2, 3};
Line(3) = {3, 4};
Line(4) = {4, 1};
Line(5) = {5, 3};
Line(6) = {5, 1};
Line(7) = {5, 4};
Line(8) = {5, 2};
Line Loop(9) = {3, -7, 5};
Line Loop(11) = {4, -6, 7};
Line Loop(13) = {1, -8, 6};
Line Loop(15) = {2, -5, 8};
Plane Surface(17) = {13};
Plane Surface(18) = {11};
Plane Surface(19) = {9};
Plane Surface(20) = {15};


Transfinite Line {7, 6, 5, 8} = 24 Using Progression 1.205;
Transfinite Line {3, 4, 1, 2} = 16 Using Progression 1;

//Transfinite Surface {18} = {5, 1, 4};
//Transfinite Surface {17} = {5, 1, 2};
//Transfinite Surface {20} = {5, 2, 3};
//Transfinite Surface {19} = {5, 3, 4};

//Extrude {0, 0, 1000} {
//  Surface{17, 18, 19, 20}; Layers{5};
//}


//Recombine Surface {18, 19, 20, 17};
