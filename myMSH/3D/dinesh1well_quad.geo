cl__1 = 1;

x=1000;
y=1000;
z=1000;
xw = 500;
yw = 500;
zw = 500;
rw = 0.15;
d = 2*rw;

Point(5) = {0, 0, 0, 1};
Point(6) = {x, 0, 0, 1};
Point(7) = {0, y, 0, 1};
Point(8) = {x, y, 0, 1};
Point(9) = {xw, yw, 0, 1}; // centre of well

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

Line(10) = {5, 6};
Line(11) = {6, 8};
Line(12) = {8, 7};
Line(13) = {7, 5};
Line(14) = {5, 18};
Line(15) = {6, 21};
Line(16) = {8, 20};
Line(17) = {7, 19};
Line Loop(18) = {12, 17, 9, -16};
Plane Surface(19) = {18};
Line Loop(20) = {13, 14, -8, -17};
Plane Surface(21) = {20};
Line Loop(22) = {2, -15, -10, 14};
Plane Surface(23) = {22};
Line Loop(24) = {15, 3, -16, -11};
Plane Surface(25) = {24};
Transfinite Line {14, 17, 16, 15} = 41 Using Progression 0.90;
Transfinite Line {13, 12, 11, 10, 2, 3, 9, 8} = 10 Using Progression 1;
Transfinite Surface {21} = {19, 7, 5, 18};
Transfinite Surface {23} = {18, 5, 6, 21};
Transfinite Surface {25} = {21, 6, 8, 20};
Transfinite Surface {19} = {20, 8, 7, 19};
Recombine Surface {21, 23, 25, 19};
