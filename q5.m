clearvars;  format compact;
Values = randi([10, 100], 5, 3);

for j=1:5
    fprintf('\nQ5V%d \n',j);
    Value_iteration = Values(j,:);
    fprintf('Question : There are k boxes, each having m blue and n red balls. A ball is randomly chosen from the first box and transferred to the second box. Then, a ball is randomly chosen from the second box and transferred to the third box and this process is repeated until we reach the last box. What is the probability that a ball chosen randomly from the last box is red?\n ');
    fprintf('Two students have conflicting thoughts regarding the solution of this problem. Kunal thinks the answer would depend on the number of boxes whereas, Harjas thinka it would not. They carry out some experiments with different values. What would be the answer for each experiment?\n');
    fprintf('The values of m,n and k respectively are:\n')
    String_Valueitr = sprintf('%.0f,' , Value_iteration);
    String_Valueitr = String_Valueitr(1:end-1);
    disp(String_Valueitr);
    m=Value_iteration(1);
    n=Value_iteration(2);
    k=Value_iteration(3);
    format rat
    [num, dem] = rat(n/(m+n));% Calculates Answer
    N=[num num+1 num-1 num];
    D=[dem dem+1 dem+k dem+k-1];
        for i=1:4
            R(i)=N(i)/D(i);     %Makes 4 options
        end
    Choices=R;
    Choices_Rand=Choices(randperm(4));
         for i=1:4
              fprintf('\n %c.', i-1+'a');
              disp(Choices_Rand(i));
                if Choices_Rand(i)==R(1)
                   AnsOption= char(i-1+'a');            %Checks for Answer option , correct option is AnsOption
                end
         end
         fprintf('\nCorrect answer is: option %c \n', AnsOption);
    
end
