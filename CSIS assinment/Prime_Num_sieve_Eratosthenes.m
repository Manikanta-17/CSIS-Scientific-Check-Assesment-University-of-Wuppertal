% Writing a program to compute prime numbers using  sieve of Eratosthenes iterative algorithm
clear all; close all; clc
%% Taking Inputs from the user
Inputs = inputdlg('Enter maximal number till Prime numbers should be computed :','Inputs', [1 50],{'100'}); 
N = str2double(cell2mat(Inputs));       % Cell array conerted into ordinary array and converted into number
Numbers = 2:N;                          % Number array
itr = 0;
%% Logic Multipules of the looping number is marked as zero. Remaining non zero numbers are prime numbers.
for i = 1:N-1                           % Looping through the each number 
   if Numbers(i) ~= 0                   % If number = 0 it will skip the calculation to save the time
        for j = i+1:N-1                 % Looping through the all the numbers after the 1st looping number so that we can find the multiples of the number
            if Numbers(j) ~= 0 && rem(Numbers(j),Numbers(i)) == 0  % If the number is no equal to 0 and remainder of the number with first looping number is marked as 0 
                Numbers(j) = 0;
               itr = itr + 1; 
            end
        end
   end
end
Prime_Numbers = Numbers(Numbers>=2);    % Picking the numbers greater than 2 fron Number array they are the prime numbers

%% Printing result statemets in Command Window
fprintf('Sieve of Eratosthenes iterative algorithm to find Prime Numbers\n')
fprintf('It took %d iterations to calculate all the Prime Numbers lessthan equal to %d\n',itr,N)
fprintf('There are total of %d Prime numbers less than %d, they are :\n',length(Prime_Numbers),N);
disp(Prime_Numbers)
