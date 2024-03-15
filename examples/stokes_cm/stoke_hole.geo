// Gmsh project created on Tue Aug  2 17:26:31 2016
Point(1) = {-6, 2, 0, 0.4};
Point(2) = {-6, -2, 0, 0.4};
Point(3) = {6, -2, 0, 0.4};
Point(4) = {6, 2, 0, 0.4};

Point(5) = {0, 0, 0, 0.05};
Point(6) = {0.5, 0, 0, 0.05};
Point(7) = {-0.5, 0, 0, 0.05};
Point(8) = {0, 0.5, 0, 0.05};
Point(9) = {0, -0.5, 0, 0.05};


Line(1) = {1, 4};
Line(2) = {4, 3};
Line(3) = {3, 2};
Line(4) = {2, 1};
Circle(5) = {8, 5, 6};
Circle(6) = {6, 5, 9};
Circle(7) = {9, 5, 7};
Circle(8) = {7, 5, 8};
Line Loop(9) = {1, 2, 3, 4};
Line Loop(10) = {8, 5, 6, 7};
Plane Surface(11) = {9, 10};
// Plane Surface(12) = {10};
Physical Line("NoSlip") = {1, 3};
Physical Line("Inflow") = {4};
Physical Line("Outflow") = {2};
Physical Line("BallSurface") = {8, 7, 6, 5};
Physical Surface("Channel") = {11};
// Physical Surface("Ball") = {12};
