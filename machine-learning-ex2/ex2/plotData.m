function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%

%find values of X that are positive and negative respectively and assign to new variables
xpos = [];
xneg = [];

for i = 1:length(y)
  if y(i) == 1
    xpos = [xpos; X(i,1) X(i,2)];
  else
    xneg = [xneg; X(i,1) X(i,2)];
  end
end


plot(xpos(:,1), xpos(:,2), 'k+', "markerfacecolor", "k", "markersize", 7,...
 xneg(:,1), xneg(:,2), 'ko', "markerfacecolor", "y", "markersize", 7)






% =========================================================================



hold off;

end
