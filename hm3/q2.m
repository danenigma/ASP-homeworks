
%**************************(b)**********************
N = 100;
x = -N/2:N/2-1;
Ndpdf = normpdf(x);
Yns_b = zeros(N,1);
mu     = mean(1:5);%mean of uniform dist
sigma  = var(1:5);%var of uniform dist
for i=1:length(Yns_b)
    X = randi([1 5],1,10);%uniform distribution 1-5
    Yns_b(i) = computeGCLT(X,mu*ones(1,10),sigma*ones(1,10));
end
Yns_b = Yns_b/sum(Yns_b);
%**************************(c)**********************
Yns_c = zeros(N,1);
for i=1:length(Yns_c)
    [X,mu,sigma]=generate_random_variables(10);
    Yns_c(i) = computeGCLT(X,mu,sigma);
end
Yns_c = Yns_c/sum(Yns_c);
%**************************(d)**********************

Yns_d = zeros(N,1);
for i=1:length(Yns_d)
    [X,mu,sigma]=generate_random_variables_d(10,0.5);
    Yns_d(i) = computeGCLT(X,mu,sigma);
end
Yns_d = Yns_d/sum(Yns_d);
%**************************Ploting*******************
%**************************Plot Histogram************
figure
subplot(2,2,1);
hist(Yns_b);
title('b');
subplot(2,2,2);
hist(Yns_c);
title('c');
subplot(2,2,3);
hist(Yns_d);
title('d');
%**************************Normal Plot***************
figure
subplot(2,2,1);
normplot(Yns_b);
title('b');
subplot(2,2,2);
normplot(Yns_c);
title('c');
subplot(2,2,3); 
normplot(Yns_d);
title('d');
%**************************q-q Plot******************
figure;
subplot(2,2,1);
qqplot(Yns_b);
title('b');
subplot(2,2,2);
qqplot(Yns_c)
title('c')
subplot(2,2,3)
qqplot(Yns_d)
title('d')


