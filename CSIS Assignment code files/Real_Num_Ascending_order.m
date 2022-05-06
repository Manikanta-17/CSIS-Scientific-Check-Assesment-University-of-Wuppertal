clear all; close all; clc
%Writing a program which takes a vector of size N × 1 whose entries are real numbers and sorts it in ascending order.
% Real number = Natural + Whole + Integers  + Rational Numbers
% vector with combination of all real number types = [3, 6, 4, 9, 1/2, 0, 0.9, -5];

%% Taking Inputs from the user
Inputs = inputdlg('Matrix M of size N × 1 =','Inputs', [1 100],{'3; 6; 4; 9; 1/2; 0; 0.9; -5'});
Num_string = strsplit(cell2mat(Inputs),';');   % Converting cell array into ordinary array & Splitting at ',' 
A = zeros(length(Num_string),1);
for i = 1:length(Num_string)
    A(i) = str2num(cell2mat(Num_string(i)));  % Converting cell array into ordinary array & into number % str2double is not working well
end
%% Printing Input statemets in Command Window
string_1= sprintf("Given Dis-ordered Vectot A of size N x 1 = %d x 1\n", length(A));
disp(string_1)
disp(A)

L_A = length(A);
itr = 0;
%% Logic Comparing the 2 numbers, if 1st number greater than 2nd numbers gets exchanged else remains same.
for i = 1:L_A-1
    for j = 1:L_A-1
        % Comparing i and i+1 terms, If i_th term is greater than i+1 term then the terms gets exchanged.
        if A(j) > A(j+1)
            % Partially saving the terms
            a = A(j+1);     
            b = A(j);
            % Exchanging of the terms
            A(j) = a;
            A(j+1) = b;
            itr = itr +1;
        end
    end
end

%% Printing result statemets in Command Window
string_2 = sprintf("Vectot A of size N x 1 = %d x 1. Sorted in Ascending order\n", length(A));
disp(string_2)
disp(A)


