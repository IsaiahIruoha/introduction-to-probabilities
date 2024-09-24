% Load the data from MAT files
load('RV1.mat');
load('RV2.mat');
load('RV3.mat');

% Number of trials (1 million)
N = 1e6;

% Step 1: Calculate Mean and Variance Manually

% Mean calculation
mean_RV1 = sum(RV1) / N;
mean_RV2 = sum(RV2) / N;
mean_RV3 = sum(RV3) / N;

% Variance calculation
variance_RV1 = sum((RV1 - mean_RV1).^2) / N;
variance_RV2 = sum((RV2 - mean_RV2).^2) / N;
variance_RV3 = sum((RV3 - mean_RV3).^2) / N;

% Display the mean and variance
disp(['Mean of RV1: ', num2str(mean_RV1), ', Variance of RV1: ', num2str(variance_RV1)]);
disp(['Mean of RV2: ', num2str(mean_RV2), ', Variance of RV2: ', num2str(variance_RV2)]);
disp(['Mean of RV3: ', num2str(mean_RV3), ', Variance of RV3: ', num2str(variance_RV3)]);

% Step 2: Count occurrences of each value {0,1,2,...,100}

% Count occurrences
H1 = histcounts(RV1, 0:101); % Bins from 0 to 100
H2 = histcounts(RV2, 0:101);
H3 = histcounts(RV3, 0:101);

% Divide by number of trials
H1 = H1 / N;
H2 = H2 / N;
H3 = H3 / N;

% Step 3: Plot the Distributions

figure;
subplot(3,1,1); % Plot for RV1
bar(0:100, H1);
title('RV1 Probability Distribution');
xlabel('Values');
ylabel('Probability');

subplot(3,1,2); % Plot for RV2
bar(0:100, H2);
title('RV2 Probability Distribution');
xlabel('Values');
ylabel('Probability');

subplot(3,1,3); % Plot for RV3
bar(0:100, H3);
title('RV3 Probability Distribution');
xlabel('Values');
ylabel('Probability');

% Step 4: Calculate Probability of Values Between 10 and 40
% Sum the probabilities in the range [10, 40] for each RV.

% Probabilities for values between 10 and 40
P_RV1 = sum(H1(11:41)); % Remember it is 1 indexed
P_RV2 = sum(H2(11:41));
P_RV3 = sum(H3(11:41));

% Display the probabilities
disp(['Probability RV1 is between 10 and 40: ', num2str(P_RV1)]);
disp(['Probability RV2 is between 10 and 40: ', num2str(P_RV2)]);
disp(['Probability RV3 is between 10 and 40: ', num2str(P_RV3)]);