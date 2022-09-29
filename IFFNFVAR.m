%% Variance computation- Please run the 'varstate.m' file before running this file.

% Initialisation
%l=0:0.05:90;
%Z=zeros(length(l),1);
%Sigmanf5=zeros(length(l),1);
%Sigmaif3=Sigmanf5;
%Sigmanf3=Sigmaif5;
%alpha_n=-8;

%for k=1:1:length(l)
%% for 5 node Balancer module (Uncomment this and the initialisation section to compare the variance of a 5-node balancer modules with its nearest neighbors)
% A5=[-2 0 0 0 -10;3 -9 0 0 0;0 3 -12 0 0;0 0 1 -11 0; 0 0 0 3 -l(k)];
% B5=[1;0;0;0;0];
% C2=[0 0 1 0 0];
% D=0;
% V_n5=2*eye(6);
% Sigmanf5(k)=varstate(A5,B5,C5,D,alpha_n,V_n5);

%% for 3 node Balancer module (Uncomment this and the initialisation section to compare the variance of a 3-node balancer modules with its nearest neighbors)
%A3=[-2 3 0;0 -l(k) -4;3 0 -5];
 %B3=[1;0;0];
 %C3=[0 0 1];
 %V_n3=2*eye(4);
 %Sigmanf3(k)=varstate(A3,B3,C3,D,alpha_n,V_n3);
 
%% for 3 node Opposer module (Uncomment this and the initialisation section to compare the variance of a 3-node opposer modules with its nearest neighbors)
%A31=[-3 0 0;3 -1 0;3 10*l(k) -5];
 %Z(k)= det(A31(2:3,1:2));
 %Sigmaif3(k)=varstate(A31,B3,C3,D,alpha_n,V_n3);
%end

%% Plotting the variances wrt the the neighboring motifs

%plot(-l,Sigmanf5)
%hold on
%plot(-l,Sigmanf3)
%hold on
%plot(-Z,Sigmaif3)

