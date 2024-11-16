% Extract conditional PMFs
px_given_y40 = H(:, 40) / sum(H(:, 40));
px_given_y10 = H(:, 10) / sum(H(:, 10));

% Define x values
x_values = 1:size(H, 1);

% Plot the conditional PMFs
figure;
hold on;
plot(x_values, px_given_y40, '-o', 'DisplayName', 'P(x | y=40)');
plot(x_values, px_given_y10, '-x', 'DisplayName', 'P(x | y=10)');
hold off;

% Add plot labels and legend
title('Conditional PMFs P(x | y=40) and P(x | y=10)');
xlabel('x');
ylabel('Probability');
legend('show');
grid on;
