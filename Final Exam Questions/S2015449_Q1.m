% Define the function
f = @(x,y) 2*x.^2 - 1.05*x.^4 + 1/6*x.^6 + x.*y + y.^2;

% Define the range for x and y
x = linspace(-2, 2, 100);
y = linspace(-2, 2, 100);

% Generate a grid of points
[X, Y] = meshgrid(x, y);

% Evaluate the function at each point of the grid
Z = f(X, Y);

% Create the contour plot
contourf(X, Y, Z, 20);
% Add colorbar
colorbar; % Add colorbar

% Label the axes and provide a title
xlabel('x');
ylabel('y');
title('Contour Plot of f(x,y) = 2x^2 - 1.05x^4 + 1/6x^6 + xy + y^2');

