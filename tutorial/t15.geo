/*********************************************************************
 *
 *  Gmsh tutorial 15
 *
 *  Embedded points, lines and surfaces
 *
 *********************************************************************/

lc = 1e-2;

// We change the mesh size to generate coarser mesh
lc = lc * 4;
Characteristic Length {1:4} = lc;

// We define a new point
Point(1) = {0, 0, 0, lc};
Point(2) = {.1, 0,  0, lc} ;
Point(3) = {.1, .3, 0, lc} ;
Point(4) = {0,  .3, 0, lc} ;

Line(1) = {1,2} ;
Line(2) = {3,2} ;
Line(3) = {3,4} ;
Line(4) = {4,1} ;

Curve Loop(1) = {4,1,-2,3} ;
Plane Surface(1) = {1} ;
Physical Curve(5) = {1, 2, 4} ;
Physical Surface("My surface") = {1} ;

//Point(5) = {0.02, 0.02, 0, lc};

// One can force this point to be included ("embedded") in the 2D mesh, using
// the "Point In Surface" command:
//Point{5} In Surface{1};

//// In the same way, one can force a curve to be embedded in the 2D mesh using
//// the "Curve in Surface" command:
Point(6) = {0.02, 0.12, 0, lc};
Point(7) = {0.04, 0.18, 0, lc};


Line(5) = {6, 7};

Curve{5} In Surface{1};



// One can also embed points and curves in a volume using the "Curve/Point In
// Volume" commands:
Extrude {0, 0, 0.1}{ Surface {1}; }

p = newp; // 7
//// Next 2 lines for point in Volume
////Point(p) = {0.07, 0.15, 0.025, lc};
////Point{p} In Volume {1};

l = newl;
// Next 3 lines for lines in Volume
Point(p+1) = {0.025, 0.15, 0.025, lc};
Line(l) = {7, p+1};
Curve{l} In Volume {1};

// Finally, one can also embed a surface in a volume using the "Surface In
// Volume" command:
Point(p+2) = {0.02, 0.12, 0.05, lc};
Point(p+3) = {0.04, 0.12, 0.05, lc};
Point(p+4) = {0.04, 0.18, 0.05, lc};
Point(p+5) = {0.02, 0.18, 0.05, lc};
Line(l+1) = {p+2, p+3};
Line(l+2) = {p+3, p+4};
Line(l+3) = {p+4, p+5};
Line(l+4) = {p+5, p+2};
ll = newll;
Curve Loop(ll) = {l+1:l+4};
s = news;
Plane Surface(s) = {ll};
Surface{s} In Volume{1};
//Geometry.Append(["line",pid1,pid2],leftdomain=1,rightdomain=1,maxh=0.025) # left- and rightdomain have to be the same!!!
//+
Transfinite Curve {2, 4, 8, 10} = 40 Using Progression 1;
//+
Transfinite Curve {14, 1, 18, 9, 11, 22, 13, 3} = 15 Using Progression 1;
