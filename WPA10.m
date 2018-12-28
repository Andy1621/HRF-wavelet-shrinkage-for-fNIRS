function dhlwt = WPA10(x)
    
    L = length(x);    
    dhlwt = zeros(L,11);    
    tempdec = wpdec(x,10,'db6','shannon');       
       
    dhlwt(:,1) = wprcoef(tempdec, [1 1]);
    dhlwt(:,2) = wprcoef(tempdec, [2 1]);
    dhlwt(:,3) = wprcoef(tempdec, [3 1]);
    dhlwt(:,4) = wprcoef(tempdec, [4 1]);
    dhlwt(:,5) = wprcoef(tempdec, [5 1]);
    dhlwt(:,6) = wprcoef(tempdec, [6 1]);
    dhlwt(:,7) = wprcoef(tempdec, [7 1]);
    dhlwt(:,8) = wprcoef(tempdec, [8 1]);
    dhlwt(:,9) = wprcoef(tempdec, [9 1]);
    dhlwt(:,10) = wprcoef(tempdec, [10 1]);
    dhlwt(:,11) = wprcoef(tempdec, [10 0]);    
    
end