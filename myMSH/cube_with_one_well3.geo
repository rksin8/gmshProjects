cl__1 = 1;

x=1;
y=1;
z=1;
xw = 0.5;
yw = 0.5;
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
Line(22) = {16, 7};
Line(23) = {7, 8};
Line(24) = {8, 17};
Line(25) = {14, 5};
Line(26) = {5, 6};
Line(27) = {6, 15};
Line(28) = {7, 5};
Line(29) = {8, 6};
Line(31) = {18, 5};
Line(32) = {21, 6};
Line(33) = {20, 8};
Line(34) = {19, 7};



