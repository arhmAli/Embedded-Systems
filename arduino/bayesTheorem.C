%Task:02 
%To find posterior probability using BAYES Theorem

% Define the prior probabilities and conditional probabilities

prior_A =input( "Give the prior probability of event A");
prior_B = input( "Give the prior probability of event B");
cond_prob_B_given_A = 0.6;
cond_prob_B_given_not_A = 0.2;

% Calculate the marginal probability of B
marginal_prob_B = prior_A*cond_prob_B_given_A + prior_B*cond_prob_B_given_not_A;

% Calculate the posterior probability of A given B
posterior_A_given_B = (prior_A*cond_prob_B_given_A)/marginal_prob_B;

disp(['The posterior probability of A given B is: ' num2str(posterior_A_given_B)]);
