cl__1 = 1;

x=2;
y=2;
z=2;
xw = 1;
yw = 1;
zw = 0;
rw = 0.1;
d = 2*rw;



Point(1) = {0, 0, 0, 1};
Point(2) = {x, 0, 0, 1};
Point(3) = {x, y, 0, 1};
Point(4) = {0, y, 0, 1};

Point(5) = {xw-d, yw-d, 0, 1};
Point(6) = {xw+d, yw-d, 0, 1};
Point(7) = {xw-d, yw+d, 0, 1};
Point(8) = {xw+d, yw+d, 0, 1};
Point(9) = {xw, yw, 0, 1}; // centre of well

Point(10) = {xw-d, 0, 0, 1};
Point(11) = {xw+d,  0, 0, 1};
Point(12) = {xw-d, y, 0, 1};
Point(13) = {xw+d, y, 0, 1};


Point(14) = {0, yw-d, 0, 1};
Point(15) = {y, yw-d, 0, 1};
Point(16) = {0, yw+d, 0, 1};
Point(17) = {y, yw+d, 0, 1};


// draw points for circle
theta = 45 *(Pi/180);
Point(18) = {xw-rw*Cos(theta), yw-rw*Sin(theta), 0, 1.0};
Point(19) = {xw-rw*Cos(theta), yw+rw*Sin(theta), 0, 1.0};
Point(20) = {xw+rw*Cos(theta), yw+rw*Sin(theta), 0, 1.0};
Point(21) = {xw+rw*Cos(theta), yw-rw*Sin(theta), 0, 1.0};

Circle(2) = {18, 9, 21};
Circle(3) = {21, 9, 20};
Circle(8) = {19, 9, 18};
Circle(9) = {19, 9, 20};


Line(10) = {1, 10};
Line(11) = {10, 11};
Line(12) = {11, 2};
Line(13) = {2, 15};
Line(14) = {15, 17};
Line(15) = {17, 3};
Line(16) = {3, 13};
Line(17) = {13, 12};
Line(18) = {12, 4};
Line(19) = {4, 16};
Line(20) = {16, 14};
Line(21) = {14, 1};

Line(22) = {5, 6};
Line(23) = {6, 8};
Line(24) = {8, 7};
Line(25) = {7, 5};
Line(26) = {8, 17};
Line(27) = {13, 8};
Line(28) = {12, 7};
Line(29) = {7, 16};
Line(30) = {5, 14};
Line(31) = {5, 10};
Line(32) = {6, 11};
Line(33) = {6, 15};
Line(34) = {5, 18};
Line(35) = {19, 7};
Line(36) = {20, 8};
Line(37) = {21, 6};
Line Loop(38) = {21, 10, -31, 30};
Plane Surface(39) = {38};
Line Loop(40) = {31, 11, -32, -22};
Plane Surface(41) = {40};
Line Loop(42) = {32, 12, 13, -33};
Plane Surface(43) = {42};
Line Loop(44) = {33, 14, -26, -23};
Plane Surface(45) = {44};
Line Loop(46) = {26, 15, 16, 27};
Plane Surface(47) = {46};
Line Loop(48) = {27, 24, -28, -17};
Plane Surface(49) = {48};
Line Loop(50) = {28, 29, -19, -18};
Plane Surface(51) = {50};
Line Loop(52) = {29, 20, -30, -25};
Plane Surface(53) = {52};
Line Loop(54) = {34, 2, 37, -22};
Plane Surface(55) = {54};
Line Loop(56) = {37, 23, -36, -3};
Plane Surface(57) = {56};
Line Loop(58) = {9, 36, 24, -35};
Plane Surface(59) = {58};
Line Loop(60) = {35, 25, 34, -8};
Plane Surface(61) = {60};



Transfinite Line {20, 25, 8, 3, 23, 14, 17, 11, 24, 9, 2, 22} = 40 Using Progression 1;
Transfinite Line {19, 28, 27, 15, 21, 31, 32, 13} = 40 Using Progression 1;
Transfinite Line {10, 30, 29, 18, 12, 33, 26, 16} = 60 Using Progression 1;
Transfinite Line {35, 34, 37, 36} = 20 Using Progression 1;



Transfinite Surface {39} = {1, 10, 5, 14};
Transfinite Surface {41} = {10, 11, 6, 5};
Transfinite Surface {43} = {11, 2, 15, 6};
Transfinite Surface {45} = {6, 15, 17, 8};
Transfinite Surface {47} = {8, 17, 3, 13};
Transfinite Surface {49} = {8, 13, 12, 7};
Transfinite Surface {51} = {7, 12, 4, 16};
Transfinite Surface {53} = {14, 5, 7, 16};
Transfinite Surface {55} = {5, 6, 21, 18};
Transfinite Surface {57} = {21, 6, 8, 20};
Transfinite Surface {59} = {20, 8, 7, 19};
Transfinite Surface {61} = {19, 7, 5, 18};
Recombine Surface {39, 41, 43, 45, 57, 59, 61, 55, 53, 51, 49, 47};
