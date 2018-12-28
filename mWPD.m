function dhlwt = mWPD(x,level)
    
    L = length(x);    
    dhlwt = zeros(L,level+1);    
    tempdec = wpdec(x,level,'db6','shannon');
    
    for i = 1:level
        dhlwt(:,i) = wprcoef(tempdec, [i 1]);
    end
    
    dhlwt(:,level+1) = wprcoef(tempdec, [level 0]);        
end