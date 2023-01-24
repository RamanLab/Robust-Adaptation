%% Demonstration for response based on z-p relative positions 
% Initialisation
% s=tf('s');
% r=10;
% G=cell(r,1);
% G_1=cell(r,1);
% G_2=cell(r,1);
% z=zeros(6,1);
% f=zeros(6,1);
% for j=1:r
% p=10*rand(8,1);
% p_sorted=sort(p);

%% zeros after poles
%q=9*rand(6,1);
%z=q+(max(p)+1);
%G{j}=2*(p(1)*p(2)*p(3)*p(4)*p(5)*p(6)*p(7)*p(8))/(q(1)*q(2)*q(3)*q(4)*q(5))*((s+1)*(s+q(1))*(s+q(2))*(s+q(3))*(s+q(4))*(s+q(5)))/((s+p(1))*(s+p(2))*(s+p(3))*(s+p(4))*(s+p(5))*(s+p(6))*(s+p(7))*(s+p(8)));

%% zeros before poles
%q=9*rand(6,1);
%z=min(p)*rand(6,1);;
%G_1{j}=2*(p(1)*p(2)*p(3)*p(4)*p(5)*p(6)*p(7)*p(8))/(z(1)*z(2)*z(3)*z(4)*z(5)*z(6))*((s+z(6))*(s+z(1))*(s+z(2))*(s+z(3))*(s+z(4))*(s+z(5)))/((s+p(1))*(s+p(2))*(s+p(3))*(s+p(4))*(s+p(5))*(s+p(6))*(s+p(7))*(s+p(8)));

%%  zero pole alternative position starting with pole
%for k=1:6
%f(k)=p_sorted(k)+(p_sorted(k+1)-p_sorted(k))*rand(1,1); 
%end

%% Transfer function
%G_2{j}=2*(p(1)*p(2)*p(3)*p(4)*p(5)*p(6)*p(7)*p(8))/(f(1)*f(2)*f(3)*f(4)*f(5)*f(6))*((s+f(6))*(s+f(1))*(s+f(2))*(s+f(3))*(s+f(4))*(s+f(5)))/((s+p(1))*(s+p(2))*(s+p(3))*(s+p(4))*(s+p(5))*(s+p(6))*(s+p(7))*(s+p(8)));
%[y,t]=step(G_2{j});
%plot(t,y)
%hold on
%end

