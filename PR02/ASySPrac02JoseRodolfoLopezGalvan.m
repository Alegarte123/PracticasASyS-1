%% Pr�ctica 2

%% Ejercicio 1

% 3.11-2 Consider the discrete-time function

%

% $$f[n] = e-n/5 cos(\pi*n/5)u[n]$$

%
% Section 3.11 uses anonymous

% functions in describing DT signals.

%

% f = @(n) exp(-n/5).*cos(\pi*n/5).*(n>=0);

%

% While this anonymous function operates correctly

% for a downsampling operation such as

% f[2n], it does not operate correctly for an

% upsampling operation, such as f[n/2]. Modify

% the anonymous function f so that it also

% correctly accommodates upsampling operations.

% Test your code by computing and plotting

% f(n/2) over (?10 ? n ? 10).

%% Procedimiento

%

%

% Creamos la funci�n y vector de n

%
%%

f = @(n) exp(-n/5).*cos(pi*n/5).*(n>=0);

n=-10:1:10;

%%

% Modificamos la funci�n 

%%

f1 = @(n) exp(-n/5).*cos(pi*n/5).*(n>=0).*(1./(mod(n,1)==0));

stem(n,f1(n));

title('Gr�fica de la se�al f[n]=e^(-n/5)*cos(pin/5)u[n]');

xlabel('n');

ylabel('f[n]');

axis([-11 11 -0.5 1.2])
;
grid on;

gca.XAxisLocation = 'origin';
gca.YAxisLocation = 'origin';

gca.Box = 'off';

%%

% Escalando f[n] en 1/2

%%

stem(n,f1(n/2));

title('Gr�fica de la se�al f[n/2]');

xlabel('n');
ylabel('f[n/2]');

axis([-11 11 -0.5 1.2]);

grid on;

gca.XAxisLocation = 'origin';

gca.YAxisLocation = 'origin';

gca.Box = 'off';