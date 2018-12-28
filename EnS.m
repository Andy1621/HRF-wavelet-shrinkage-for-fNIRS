function [E, Std] = EnS(x)
        
    [L, C] = size(x);
    E = zeros(C,1);
    Std = zeros(C,1);
    
    for i = 1:C
       E(i) = sum(x(:,i).^2)/L;
       Std(i) = std(x(:,i));
    end
    
end