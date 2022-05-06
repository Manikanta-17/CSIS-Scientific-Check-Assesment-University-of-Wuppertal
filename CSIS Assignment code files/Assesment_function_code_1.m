function [Trace, Sum_Mean_Max, Abs_Sum_Mean_Max, Row_mean, Column_mean,M_Mt] = Assesment_function_code_1(M)

% Write functions that take a matrix M of size N × N as an input and calculate the following quantities:
[N,n] = size(M);

if N == n       % Checking for square matrix
    %% 1. Calculating Trace of the matrix.
    Trace   = 0;
    for i = 1:N        
        for j = 1:N
            if i == j
                Trace = Trace + M(i,j);   % Trace
            end
        end
    end
    %% 2. The Sum, Mean and Maximum of the entries in M. 
    Sum     = 0;
    Max     = 0;
    itr     = 0;
    for i = 1:N        
        for j = 1:N
            Sum = Sum + M(i,j);     % Sum
            itr = itr + 1;
            if M(i,j) >= Max
                Max = M(i,j);       % Max
            end
        end
    end
    Mean = Sum/itr;                 % Mean
    Sum_Mean_Max = [Sum; Mean; Max];

    %% 3. The sum, mean and maximum of the absolute value of the entries in M.
    Abs_Sum = 0;
    Abs_Max = 0;
    itr     = 0;
    for i = 1:N        
        for j = 1:N
            % Absolute Sum
            if M(i,j) >=0
                Abs_Sum = Abs_Sum + M(i,j);
            else
                Abs_Sum = Abs_Sum + (-1*M(i,j));
            end
            itr = itr + 1;
            % Absolute Maximum
            if M(i,j) >=0 && M(i,j) >= Max
                Abs_Max = M(i,j);
            elseif -1*M(i,j) > Max
                Abs_Max = M(i,j);
            end
        end
    end
    Abs_Mean = Abs_Sum/itr;         % Absolute Mean
    Abs_Sum_Mean_Max = [Abs_Sum; Abs_Mean; Abs_Max];
    
    %% 4,5. A vector of size N × 1 containing the mean of each row, Column
    Row_mean    = zeros(N,1);
    Column_mean = zeros(N,1);
    for i = 1:N 
        Row_sum = 0;       
        Column_sum = 0;
        for j = 1:N
            Row_sum = Row_sum + M(i,j);         % Row Sum
            Column_sum = Column_sum + M(j,i);   % Column Sum
        end
        Row_mean(i) = Row_sum/N;                % Row Mean
        Column_mean(i) = Column_sum/N;          % Column Mean
    end
    
    %%  M Transpose calculation
    M_transpose = [];
    for i = 1:N
        for j = 1:N
            M_transpose(i,j) = M(j,i);          % M Transpose
        end
    end
    
    %% 6. A matrix of size N × N containing the result of multiplying M with its transpose.
    M_Mt = zeros(N);
    for i = 1:N
        for j = 1:N
            for k = 1:N
                M_Mt(i,j)= M_Mt(i,j)+ M(i,k)*M_transpose(k,j);  % M * M_transpose
            end
        end
    end
    
else
    msgbox("Plese enter valid N x N Matrix")
end
end


