function [coef] = fitPolynomial(x, y, d, show_plot)
    % Assume function is called correctly
    % No need any checks like see if size of x and y are equal or not
    % d is positive integer (degree)
    % we will call with show_plot=0
    [m,~] = size(x);
    
    %Ax=b
    % You can ignore warnings
    % Generally Matlab gives warning when using inv
    
    % Find coef
    % Part B
    % 20 pts
    
    
    
    %x
    A=[m,d+1]; %d+1 tane terim var... 
    for i=1:m %1 den m e kadar. k denklemdeki terimlerin usterinin carpilmasi.
        k=d;%polinom ilk basta x^d den basladigi icin k ona esit.
        for j=1:d+1%Anin i.satirin columnlerinin doldurulmasi.
            A(i,j)=x(i).^k;%xin i.elamani ile carpilip doldurulluyor.xler sutun halde.
            k=k-1;%Anin i. satirinin columnlari arttikca carpilacak us sayisi azaliyor. orn d d-1...
        end%d+1de 1 olucak k0 oldugu icin. 
    end
    
    %coefleri bulmak icin..Ax=b formulundeki xlerin oldugu coefler.
    %A_T*A*x=A_T*b buradaki b de y degerleri oluyor.
    
    coef  = (A'*A)\(A'*y);
    
    %coef = ones(d+1,1);
    % PLOT IS NOT ASKED
    % but if you want to see plot
    % find outputs of found function, o
    o = y;

    % Plot
    % NO Need to Change This Part
    % But you can change as you desire since it is not asked
    if show_plot==1
        figure;
        scatter(x, y, 'filled', 'b');
        hold on;
        plot(x, o, 'Linewidth', 1.5, 'Color', 'r');
        title('Polynomial Fit');
    end
end