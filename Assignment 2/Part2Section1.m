% Load the MAT files
load('RV1.mat');
load('RV2.mat');
load('RV3.mat');

% Define bins for the discrete values
bins = 0:100;

% Joint PMF of RV1 and RV2
jointPMF_RV1_RV2 = histcounts2(RV1, RV2, bins, bins) / length(RV1);

% Plot joint PMF of RV1 and RV2
figure;
surf(bins(1:end-1), bins(1:end-1), jointPMF_RV1_RV2);
xlabel('RV1');
ylabel('RV2');
zlabel('Probability');
title('Joint PMF of RV1 and RV2');

% Joint PMF of RV1 and RV3
jointPMF_RV1_RV3 = histcounts2(RV1, RV3, bins, bins) / length(RV1);

% Plot joint PMF of RV1 and RV3
figure;
surf(bins(1:end-1), bins(1:end-1), jointPMF_RV1_RV3);
xlabel('RV1');
ylabel('RV3');
zlabel('Probability');
title('Joint PMF of RV1 and RV3');
