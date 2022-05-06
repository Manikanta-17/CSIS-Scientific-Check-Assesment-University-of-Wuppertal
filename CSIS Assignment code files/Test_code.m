clear all; close all; clc
% Testing the functions code 1 & 2 using the matrix M of size 20×20

%% Taking the Input Matrix size and Real number from user
Inputs = inputdlg({'Matrix M of size N × N : N =','Real Number : a = '},'Inputs', [1 50; 1 50],{'20','0'}); 
N = str2double(Inputs{1});      % Converting String to Number(Double)
a = str2double(Inputs{2});      % Converting String to Number(Double)
M = zeros(N); 

%% Calculating the magnitudes of the entries from the given equation M(i,j) = (1/2)*(i - j), i, j = 0, ..., 19. 
for i = 1:N
    for j = 1:N
        M(i,j) = (1/2)*((i-1)-(j-1)); % 
    end
end

%% Testing the functions codes
[Trace, Sum_Mean_Max,Abs_Sum_Mean_Max,Row_mean, Column_mean,M_Mt] = Assesment_function_code_1(M);
A = Assesment_function_code_2(M,a);

%% Printing result statemets in Command Window
fprintf('Testing Function code 1\n');
fprintf('Matrix M of size 20×20 with entries given as M(i,j) = (1/2)*(i - j), i, j = 0, ..., 19\n');
disp(M)
fprintf('1.1   Trace of the Matrix M    = %f\n',Trace);
fprintf('1.2.1 Sum of the entries       = %f\n',Sum_Mean_Max(1));
fprintf('1.2.2 Mean of the entries      = %f\n',Sum_Mean_Max(2));
fprintf('1.2.3 Maximum of the entries   = %f\n',Sum_Mean_Max(3));
fprintf('1.3.1 Sum of the absolute values of entries      = %f\n',Abs_Sum_Mean_Max(1));
fprintf('1.3.2 Mean of the absolute values of entries     = %f\n',Abs_Sum_Mean_Max(2));
fprintf('1.3.3 Maximum of the absolute values of entries  = %f\n',Abs_Sum_Mean_Max(3));
fprintf('1.4   A vector of size N × 1 = %d x 1 containing the mean of each row.\n', N);
disp(Row_mean)
fprintf('1.5   A vector of size N × 1 = %d x 1 containing the mean of each column\n', N);
disp(Column_mean)
fprintf('1.6   A matrix of size N × N containing the result of multiplying M with its transpose.\n');
disp(M_Mt)
fprintf('\nTesting Function code 2; N = %d , a = %d \n',N,a);
fprintf('Matrix A of size N × N and a Real number a where the entry A(i,j) is 1 if M(i,j) >= a and -1 otherwise.\n')
disp(A)

%% Checking the solution
fprintf('Comparing Results of Calculation when solved without using built in functions & by using built in functions\n')

Trace_builtin_func = trace(M);
    if Trace == Trace_builtin_func
        fprintf('1.1 Calculation of Trace without using built-in function Matched exactly with calculation Trace by using built-in function \n')
    end

Sum_Mean_Max_builtin_func = [sum(sum(M)); mean(mean(M)); max(max(M))];
    if Sum_Mean_Max == Sum_Mean_Max_builtin_func
        fprintf('1.2 Calculation of Sum, Mean & Maximum of all the entries without using built-in function Matched exactly with calculation Sum, Mean & Maximum of all the entries by using built-in function \n')
    end

Abs_Sum_Mean_Max_builtin_func = [sum(sum(abs(M))); round(mean(mean(abs(M))),5); max(max(abs(M)))];
    if Abs_Sum_Mean_Max == Abs_Sum_Mean_Max_builtin_func
        fprintf('1.3 Calculation of Sum, Mean & Maximum of all the absolute values of entries without using built-in function Matched exactly with calculation Sum, Mean & Maximum of all the absolute values of entries by using built-in function \n')
    end

Row_mean_builtin_func = mean(M,2);
    if Row_mean == Row_mean_builtin_func
        fprintf('1.4 Calculation of Row mean without using built-in function Matched exactly with calculation Row mean by using built-in function \n')
    end
Column_mean_builtin_func = (mean(M).');
    if Column_mean == Column_mean_builtin_func
        fprintf('1.5 Calculation of Column mean without using built-in function Matched exactly with calculation Column mean by using built-in function \n')
    end
M_Mt_builtin_func = M*(M.');
    if M_Mt == M_Mt_builtin_func
        fprintf('1.6 Calculation of M * M transpose without using built-in function Matched exactly with calculation M * M transpose by using built-in function \n')
    end
