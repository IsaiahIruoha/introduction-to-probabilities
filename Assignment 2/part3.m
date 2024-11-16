% Load the data
load('H.mat');

% Define the range for x
x_start = 20;
x_end = 70;

% Compute the marginal probability for x between 20 and 70
prob_x_20_70 = sum(sum(H(x_start:x_end, :)));

% Display the result
disp(['The probability that x takes values between 20 and 70 is: ', num2str(prob_x_20_70)]);
