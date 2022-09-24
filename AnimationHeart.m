xa=60;ya=30;xb=30;yb=60;l1=20;l2=20;
t=0:0.05:10;

X=16*(power(sin(t),3));
Y=13*cos(t)-5*cos(2*t)-2*cos(3*t)-cos(4*t);

c2=(X.^2 + Y.^2- l1^2 - l2^2 )/(2*l1*l2);
s2=sqrt(abs(1- c2.^2 ));
t2=atan2(s2,c2);

c1=X.*(l1+l2.*c2)+l2*s2.*Y;
s1=(l1+l2.*c2).*Y-l2*s2.*X;
t1=atan2(s1,c1); 

Px1=l1*cos(t1);
Py1=l1*sin(t1);

Px=l1*cos(t1)+l2*cos(t1+t2); 
Py=l1*sin(t1)+l2*sin(t1+t2);


for ii=2:length(t)
    axis([-30 30 -30 30]);
    plot(Px(ii),Py(ii),'ro','MarkerFaceColor','b');
    hold on ;
    J=plot(0,0,'ro','MarkerFaceColor','k',MarkerSize=12);
    hold on ;
    L1=plot([0 Px1(ii)],[0 Py1(ii)],'r',LineWidth=3);
    hold on ;
    J1=plot(Px1(ii),Py1(ii),'ro','MarkerFaceColor','k',MarkerSize=12);
    hold on ;
    L2=plot([Px1(ii) Px(ii)],[Py1(ii) Py(ii)],'r',LineWidth=3);
    hold on ;
    J2=plot(Px(ii),Py(ii),'ro','MarkerFaceColor','k',MarkerSize=12);
    hold on ;
    pause(0.1);
    delete(L1);
    delete(L2);
    delete(J1);
    delete(J2);
end





