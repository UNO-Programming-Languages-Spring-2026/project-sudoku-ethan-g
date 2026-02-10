% Sudoku Solver
%
% Hints:
% For subgrid of size n, subgrids can be identified by labels 1..n*n
% A cell (x,y) can be mapped to the subgrid labeled 1+(((x-1)/n)*n+(y-1)/n)

% Your implementation please...

% Run Instance: clingo sudoku1c.lp instances/4x4/ex00.lp 0
% Check Code: python autograder.py --question=1c

#const grid_size    = 4.
#const subgrid_size = 2.

{ sudoku(X, Y, N) : N = 1..grid_size } = 1 :- X = 1..grid_size, Y = 1..grid_size.
% achieved: Added one number between 1 and 4 to each cell on the grid

:- sudoku(X1, Y1, N1), initial(X2, Y2, N2), X1 = X2, Y1 = Y2, N1 != N2.
% achieved: Removed all numbers given in the initial grid except the initial numbers given

:- sudoku(X1, Y1, N1), sudoku(X2, Y2, N2), X1 = X2,  Y1 != Y2, N1 = N2.
:- sudoku(X1, Y1, N1), sudoku(X2, Y2, N2), X1 != X2, Y1 = Y2,  N1 = N2.
% achieved: Removed all duplicate numbers that share the same row or column

%:- sudoku(X1, Y1, N1), N1 = 0.

subgrid(X, Y, G) :- X = 1..grid_size, Y = 1..grid_size, G = 1 + (((X - 1) / subgrid_size) * subgrid_size + (Y - 1) / subgrid_size).
% achieved: Determined the subgrid any particular cell was in via the given equation

:- sudoku(X1, Y1, N1), sudoku(X2, Y2, N2), subgrid(X3, Y3, G1), subgrid(X4, Y4, G2), X1 = X3, Y1 = Y3, X2 = X4, Y2 = Y4, N1 = N2, G1 = G2.

%#show subgrid/3.
#show sudoku/3.

