% Sudoku Solver
%
% Hints:
% For subgrid of size n, subgrids can be identified by labels 1..n*n
% A cell (x,y) can be mapped to the subgrid labeled 1+(((x-1)/n)*n+(y-1)/n)

% Your implementation please...

#const grid_size    = 4.
#const subgrid_size = 2.

{ sudoku(X, Y, N) : X = 1..grid_size, Y = 1..grid_size, N = 1..grid_size } = 1.

:- sudoku(X1,Y1,N1), initial(X2,Y2,N2), X1 = X2, Y1 = Y2, N1 != N2.


#show sudoku/3.

