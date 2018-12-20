

x = 100;
y= 100;

cl__1 = 1;
Point(1) = {0, 0, 0, 1};
Point(2) = {x, 0, 0, 1};
Point(3) = {x, y, 0, 1};
Point(4) = {0, y, 0, 1};
Point(5) = {x/2.0, y/2.0, 0, 1};
Point(6) = {x/2, 0, 0, 1};
Point(7) = {x/2.0, y, 0, 1};
Point(8) = {0, y/2.0, 0, 1};
Point(9) = {x, y/2.0, 0, 1};



Line(1) = {1, 6};
Line(2) = {8, 5};
Line(3) = {4, 7};
Line(4) = {9, 5};
Line(5) = {3, 7};
Line(6) = {2, 6};
Line(7) = {1, 8};
Line(8) = {6, 5};
Line(9) = {2, 9};
Line(10) = {4, 8};
Line(11) = {7, 5};
Line(12) = {3, 9};
Line Loop(13) = {3, 11, -2, -10};
Plane Surface(14) = {13};
Line Loop(15) = {5, 11, -4, -12};
Plane Surface(16) = {15};
Line Loop(17) = {2, -8, -1, 7};
Plane Surface(18) = {17};
Line Loop(19) = {4, -8, -6, 9};
Plane Surface(20) = {19};
Transfinite Surface {14} = {8, 5, 7, 4};
Transfinite Surface {16} = {5, 9, 3, 7};
Transfinite Surface {18} = {1, 6, 5, 8};
Transfinite Surface {20} = {6, 2, 9, 5};
Transfinite Line {2, 3, 1, 4, 11, 8, 8, 10, 5, 12, 9, 6, 7} = 8 Using Progression 0.6;
Recombine Surface {14, 18, 20, 16};
