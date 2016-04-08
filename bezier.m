P0=[0,0];
P1=[0,1];
P2=[1,1];
P3=[2,1];

P=[P0;P1;P2;P3];

t=linspace(0,1,100)';

P0=repmat(P0,length(t),1);
P1=repmat(P1,length(t),1);
P2=repmat(P2,length(t),1);
P3=repmat(P3,length(t),1);

t=repmat(t,1,2);

B=      ((1-t).^3).*P0+...
t   *3.*((1-t).^2).*P1+...
t.^2*3.*((1-t)   ).*P2+...
           (t .^3).*P3;
     
figure
plot(B(:,1),B(:,2));
hold on
scatter(P(:,1),P(:,2));
axis equal

