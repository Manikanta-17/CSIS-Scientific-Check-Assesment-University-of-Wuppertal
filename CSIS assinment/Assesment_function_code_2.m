function A = Assesment_function_code_2(M,a)
% Write a function that takes a matrix M of size N × N and a real number a as inputs
%and returns a matrix A of size N × N where the entry A(i,j) is 1 if M(i,j) >= a and 1 otherwise.
A = zeros(size(M));
[N,n] = size(A);

for i = 1:N        
    for j = 1:n
        if M(i,j)>=a
            A(i,j)= 1;      % A(i,j) is 1 if M(i,j) >= a
        else
            A(i,j)= -1;     % A(i,j) is -1 if M(i,j)< a
        end
    end
end                       
end

