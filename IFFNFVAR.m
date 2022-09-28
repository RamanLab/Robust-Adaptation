%Two-node networks
l=0:0.05:90;
Z=zeros(length(l),1);
Sigma2=zeros(length(l),1);
Sigmaif3=Sigma2;
Sigmanf3=Sigmaif3;
alpha_n=-8;
for k=1:1:length(l)
 A2=[-2 3;-4 -l(k)];
 B2=[1;0];
 C2=[1 0];
 D=0;
 V_n2=2*eye(3);
 Sigma2(k)=varstate(A2,B2,C2,D,alpha_n,V_n2);
 A3=[-2 3 0;0 -l(k) -4;3 0 -5];
 B3=[1;0;0];
 C3=[0 0 1];
 V_n3=2*eye(4);
 Sigmanf3(k)=varstate(A3,B3,C3,D,alpha_n,V_n3);
 A31=[-3 0 0;3 -1 0;3 10*l(k) -5];
 Z(k)= det(A31(2:3,1:2));
 Sigmaif3(k)=varstate(A31,B3,C3,D,alpha_n,V_n3);
end
%plot(-l,Sigma2)
%hold on
%plot(-l,Sigmanf3)
%hold on
plot(-Z,Sigmaif3)

