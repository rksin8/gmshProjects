Point(1) = {0,0,0,1.0};
Point(2) = {1,0,0,1.0};
Point(3) = {1,1,0,1.0};
Point(4) = {0,1,0,1.0};


//+
Line(1) = {1, 2};
//+
Line(2) = {2, 3};
//+
Line(3) = {3, 4};
//+
Line(4) = {4, 1};

Line Loop(5) = {3,4,1,2};
Plane Surface(6) = {5};

//+
Extrude {0, 0, 1} {
  Surface{6};
}

Transfinite Line {8,9,10,11,22,13,2,1,3,14,4,18} = 21 Using
Progression 1;

Transfinite Surface{28};
Transfinite Surface{27};
Transfinite Surface{19};
Transfinite Surface{15};
Transfinite Surface{23};
Transfinite Surface{6};
Recombine Surface {28,19,15,6,27,23};
Transfinite Volume{1} = {10,14,5,6,1,2,3,4};

