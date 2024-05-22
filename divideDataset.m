function [x_train, y_train, x_test, y_test] = divideDataset(x, y, test_percent)
    [m,~] = size(x);
    [m1,~]=size(y); 
    %m satir sayisi.
    
    x_test=randperm(m*(test_percent/100));
    x_test=x_test';
    x_train=randperm(m*((100-test_percent)/100));
    x_train=x_train';
    
    y_test=randperm(m1*(test_percent/100));
    y_test=y_test';
    
    y_train=randperm(m1*((100-test_percent)/100));
    y_train=y_train';
    
    
    % Part A
    % 20 pts
    
    
    
    
    
    
    
    
end