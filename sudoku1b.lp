% Sudoku Solver
%
% Hints:
% For subgrid of size n, subgrids can be identified by labels 1..n*n
% A cell (x,y) can be mapped to the subgrid labeled 1+(((x-1)/n)*n+(y-1)/n)

% Your implementation please...

% Check Code: python autograder.py --question=1b

#const grid_size    = 4.
#const subgrid_size = 2.

{ sudoku(X, Y, N) : N = 1..grid_size } = 1 :- X = 1..grid_size, Y = 1..grid_size.
% achieved: Added one number between 1 and 4 to each cell on the grid

sudoku(X, Y, G) :- X = 1..grid_size, Y = 1..grid_size, G = 1 + (((X - 1) / subgrid_size) * subgrid_size + (Y - 1) / subgrid_size).


#show sudoku/3.

