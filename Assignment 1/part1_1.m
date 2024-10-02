% PMF of x
x_values = 1:6;
pmf_x = ones(1,6) / 6;

% PMF of y
y_values = 3:18;
y_pmf = zeros(1,16);
for i = 1:6
    for j = 1:6
        for k = 1:6
            y_sum = i + j + k;
            y_pmf(y_sum - 2) = y_pmf(y_sum - 2) + 1;
        end
    end
end
y_pmf = y_pmf / (6^3); 

% PMFs
figure;
subplot(2,1,1);
bar(x_values, pmf_x);
title('PMF of x (single die)');
xlabel('Outcome');
ylabel('Probability');

subplot(2,1,2);
bar(y_values, y_pmf);
title('PMF of y (sum of three dice)');
xlabel('Sum of three dice');
ylabel('Probability');


% CDF of x
cdf_x = cumsum(pmf_x);

% CDF of y
cdf_y = cumsum(y_pmf);

% CDFs
figure;
subplot(2,1,1);
stairs(x_values, cdf_x);
title('CDF of x (single die)');
xlabel('Outcome');
ylabel('Cumulative Probability');

subplot(2,1,2);
stairs(y_values, cdf_y);
title('CDF of y (sum of three dice)');
xlabel('Sum of three dice');
ylabel('Cumulative Probability');

N = 1000000;
x1 = randi([1 6], 1, N);
x2 = randi([1 6], 1, N);
x3 = randi([1 6], 1, N);
y = x1 + x2 + x3; 

H1 = histcounts(x1, 1:7);
H2 = histcounts(x2, 1:7);
H3 = histcounts(x3, 1:7);

% observed vs PMF
figure;
subplot(3,1,1);
bar(1:6, H1);
title('Observed frequencies in x1');
xlabel('Outcome');
ylabel('Frequency');

subplot(3,1,2);
bar(1:6, H2);
title('Observed frequencies in x2');

subplot(3,1,3);
bar(1:6, H3);
title('Observed frequencies in x3');

% Count occurrences in y
H_y = histcounts(y, 2:19);

% Count occurrences in y with correct binning
H_y = histcounts(y, 2.5:1:18.5); % Bin edges centered around each integer from 3 to 18

% observed frequencies vs theoretical PMF
figure;
bar(3:18, H_y); % Bar plot for observed frequencies
hold on;
plot(3:18, y_pmf * N, 'r-o', 'LineWidth', 2); % Scaled PMF (theoretical)
title('Observed vs Theoretical PMF of y');
xlabel('Sum of three dice');
ylabel('Frequency');
legend('Observed', 'Theoretical');
hold off;

