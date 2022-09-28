function Sigma=varstate(A,B,C,D,alpha,V_n)
N=length(A)
t=0
Varr=zeros((N+1)^2,1)
%creating auxiliary A
Ax1=[alpha zeros(N,1)']
Ax2=[B A]
Ac=[Ax1;Ax2]

%finding the output equation
   t=find(C==1)
%Steady-state output variance
Q=(kron(Ac,eye(N+1))+kron(eye(N+1),Ac))
Varr=-(inv(Q)*reshape(V_n,[],1))
Sigma=Varr(t*(N+1)+(t+1))

