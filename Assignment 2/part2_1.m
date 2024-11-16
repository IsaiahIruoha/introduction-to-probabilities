
load('RV1.mat');
load('RV2.mat');
load('RV3.mat');

% Define the value range for RV1 and RV2
value_range = 0:100;

% Create a joint histogram for RV1 and RV2
joint_counts_RV1_RV2 = histcounts2(RV1, RV2, value_range, value_range);

% Normalize to get the joint PMF
joint_pmf_RV1_RV2 = joint_counts_RV1_RV2 / sum(joint_counts_RV1_RV2, 'all');

% Plot the joint PMF
figure;
imagesc(value_range, value_range, joint_pmf_RV1_RV2);
colorbar;
xlabel('RV1');
ylabel('RV2');
title('Joint PMF of RV1 and RV2');
axis xy;

% Create a joint histogram for RV1 and RV3
joint_counts_RV1_RV3 = histcounts2(RV1, RV3, value_range, value_range);

% Normalize to get the joint PMF
joint_pmf_RV1_RV3 = joint_counts_RV1_RV3 / sum(joint_counts_RV1_RV3, 'all');

% Plot the joint PMF
figure;
imagesc(value_range, value_range, joint_pmf_RV1_RV3);
colorbar;
xlabel('RV1');
ylabel('RV3');
title('Joint PMF of RV1 and RV3');
axis xy;
