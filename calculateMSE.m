function [MSE] = calculateMSE(x, y, coef)
    % Assume function is called correctly
    [m,~] = size(x);
    [n,~] = size(coef);
    
    % Find MSE
    % Part C
    % 30 pts
    %Anin column sayisi coefin row sayisina esit.
    A=[m,n]; %d+1 tane terim var... 
    for i=1:m %1 den m e kadar. k denklemdeki terimlerin usterinin carpilmasi.
        k=d;%polinom ilk basta x^d den basladigi icin k ona esit.
        for j=1:d+1%Anin i.satirin columnlerinin doldurulmasi.
            A(i,j)=x(i).^k;%xin i.elamani ile carpilip doldurulluyor.xler sutun halde.
            k=k-1;%Anin i. satirinin columnlari arttikca carpilacak us sayisi azaliyor. orn d d-1...
        end%d+1de 1 olucak k0 oldugu icin. 
    end
    
    %x=A
    
    %A dolduruldu...
    y_Ax_2 = (y-(A*coef)).^2;%y-Ax^2 
    MSE = mean(y_Ax_2);
    
    
    
    
end