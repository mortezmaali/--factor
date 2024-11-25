addpath('C:\Users\Morteza\OneDrive\Desktop\YouTube\coding\colorimetric characterization');
lightSource;

Cameras_Spectral_Sensitivities;
% Define the matrices A and S
A = xyz(1:2:61,:); 
S = SONY_NEX_5N(:,1:31)'; 

% Compute the numerator: trace{A^T S (S^T S)^(-1) S^T A}
STS_inv = inv(S' * S); % (S^T S)^(-1)
numerator = trace(A' * S * STS_inv * S' * A);

% Compute the denominator: trace{A^T A}
denominator = trace(A' * A);

% Compute the final expression
mu_A_S = numerator / denominator;

% Display the result
disp(mu_A_S);
