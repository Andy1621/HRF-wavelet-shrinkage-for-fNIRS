function [Ex, Ew]  = JNIRS(x)
        
    L = length(x);    
    hrf = spm_hrf(0.1);    
    dhrf = WPA9(hrf);
    [Eh, Sh] = EnS(dhrf);
    hL = length(hrf);
    
    dx = WPA9(x);
    dy = dx;
    dw = zeros(L,10);
    dw(:,6:10) = dx(:,6:10);
    
    [E, S] = EnS(dx);
    [Et, St] = EnS(dx(1:hL,:));
    
    a = Et(7) / Eh(7);
    
    th = Eh * a;
    Sth = Sh * a;
    
    mk1 = zeros(L,1);
    mk2 = zeros(L,1);
    
    if 0,
    for  i = 1:10
       for j = 21:10:L
           if mean(dx(j-20:j,i).^2) > th(i)+Sth(i)
               dy(1:j,i) = 0;               
           elseif mean(dx(j-20:j,i).^2) < th(i); %*sqrt(2*log10(20));
               dy(j-20:j,i) = dx(j-20:j,i)* Eh(i)/Eh(7)*sqrt(2*log10(20));
               mk1(j-20:j,i) = 1;
           else
               dy(j-20:j,i) = 0; % dx(j-20:j,i)* Eh(i)/Eh(7) ;
               mk2(j-20:j,i) = 1;
           end           
       end        
    end
    end
    
    for i = 1:10
       if mean(dx(:,i).^2 )> th(i) + Sth(i)
          dy(:,i) = 0;          
       elseif mean(dx(:,i).^2 )> th(i)
           dy(:,i) = dx(:,i) * Eh(i)/Eh(8);    
       else
           %dy(:,i) = dx(:,i)* (1+a);
       end        
    end
    
    Ex = sum(dy,2);
    %Ew = sum(dw,2);
    Ew = wden(x,'sqtwolog','s','mln',9,'sym8');
    
end






