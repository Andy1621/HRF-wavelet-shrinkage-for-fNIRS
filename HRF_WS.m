function Ex  = HRF_WS(x,alpha)

% x: Denosing할 신호 (하나의 채널씩만 가능)
% alpha: Filtering cut off 강도 (Optional, default: 0.1)

    if ~exist('alpha','var')
       alpha = 0.1; 
    end
    
    hrf = spm_hrf(alpha);    
    dhrf = WPA10(hrf);
    [Eh, Sh] = EnS(dhrf);
    hL = length(hrf);
    dx = WPA10(x);
    dy = dx;
    
    [Et, St] = EnS(dx(1:100,:));
    
    a = Et(7) / Eh(7);
    
    th = Eh * a;
    Sth = Sh * a;
    
    
    for i = 1:11
       if mean(dx(:,i).^2 )> th(i) + Sth(i)
          dy(:,i) = 0;          
       elseif mean(dx(:,i).^2 )> th(i)
           dy(:,i) = dx(:,i) * Eh(i)/Eh(8);          
       end        
    end
    
    Ex = sum(dy,2);       
end






