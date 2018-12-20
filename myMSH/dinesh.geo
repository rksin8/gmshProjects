

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
Plane Surface(10) = {9};
Line Loop(11) = {4, -6, 7};
Plane Surface(12) = {11};
Line Loop(13) = {1, -8, 6};
Plane Surface(14) = {13};
Line Loop(15) = {2, -5, 8};
Plane Surface(16) = {15};
Transfinite Surface {10} = {5, 3, 4};
Transfinite Surface {12} = {5, 4, 1};
Transfinite Surface {14} = {5, 1, 2};
Transfinite Surface {16} = {5, 2, 3};
Transfinite Line {7, 8, 5, 6} = 10 Using Progression 1.4;
Transfinite Line {4, 1, 2, 3} = 5 Using Progression 1;
Recombine Surface {12, 10, 16, 14};

Characteristic Length {5} = 5;
