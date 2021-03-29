wt=0:0.01:3*pi;
va=220*sin(wt);
vb=220*sin((wt)-((2*pi)/3));
vc=220*sin((wt)+((2*pi)/3));
plot(wt,va)
hold on
plot(wt,vb)
hold on
plot(wt,vc)

[up,lo] = envelope(va);
figure(2)
plot(wt,va)
hold on
plot(wt,up,wt,lo,'linewidth',1.5)
legend('va','up','lo')
hold off

figure(3)
plot (Ic(:,1),Ic(:,2),'k-')

figure(4)
[up,lo] = envelope(Ic(:,2));

plot(Ic(:,1),Ic(:,2),'k-')
hold on
plot(Ic(:,1),up,Ic(:,1),lo,'linewidth',1.5)
legend('Ic','up','lo')
hold off