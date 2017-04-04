clear;clc;
addpath(genpath('toolbox_tensor/')); 

% Example 7.1
for n=2:10
    T=zeros(n,n,n);
    for ii=1:n
        for jj=1:n
            for k=1:n
                T(ii,jj,k)=ii-jj-k;
            end
        end       
    end
    r=3;
[U,W,Z]=tendec_admm_nonsym(T,T_bad(T,r))
nuclear_norm=sum((norms(U).^3+norms(W).^3+norms(Z).^3))/3
end

