
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
%% Initialization
clear ; close all; clc

%% Load Data
%  The first two columns contains the exam scores and the third column
%  contains the label.

data = load('ex2data1.txt');
X = data(:, [1, 2]); y = data(:, 3);

%% ==================== Part 1: Plotting ====================
%  We start the exercise by first plotting the data to understand the 
%  the problem we are working with.

fprintf(['Plotting data with k+ indicating (y = 1) examples and ko ' ...
         'indicating (y = 0) examples.\n']);

for k=1:length(y)
  if y(k)>0

    plot(X(k,:),y(k),'k+'), hold on
  else 

    plot(X(k,:),y(k),'ko'), hold on
  end
end

% Put some labels 
hold on;
% Labels and Legend
xlabel('Exam 1 score')
ylabel('Exam 2 score')

legend('Admitted','Not admitted')
hold off;

fprintf('\nProgram paused. Press enter to continue.\n');
pause;

% =========================================================================
hold off;

end