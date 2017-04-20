clear;clc;
addpath(genpath('toolbox_tensor/'));

n=8;
% Example 7.1

T=zeros(n,n,n);

for ii=1:n
    for jj=1:n
        for k=1:n
            T(ii,jj,k)=ii-jj-k;
        end
    end
end

% ADMM
r=3;
[U,W,Z]=tendec_admm_nonsym(T,T_bad(T,r));
nuclear_norm=sum((norms(U).^3+norms(W).^3+norms(Z).^3))/3

% SOS
dim_n = size( T );
mpol('x',sum(dim_n),1);
u=x(1:dim_n(1));
v=x(dim_n(1)+1: sum( dim_n(1:2)) );
w= x(sum(dim_n(1:2))+1:sum(dim_n) );
%
K1 =[u'*u == 1, v'*v == 1,w'*w == 1];
K2 = mom(vec(vec(u*v')*w')) == T(:);
%
order=2;
Pmom = msdp( min( mom( (x'*x)/3 ) ), K1, K2, order);
[AA,bb,cc,CCone] = msedumi(Pmom); pars.fid = 0;
[xsol,ys,info] = sedumi(AA,bb,cc,CCone);
nuclear_norm_SOS=   -cc'*xsol

