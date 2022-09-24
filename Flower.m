xa=60;ya=30;xb=30;yb=60;
l1=50;l2=50;
% ban kinh =1
for t=0:0.01:10
    X=10*sin(t*8)*cos(t);
    Y=10*sin(t*8)*sin(t);
    c2=(X^2 + Y^2- l1^2 - l2^2 )/(2*l1*l2);
    s2=sqrt(abs(1- c2^2 ));
    t2=atan2(s2,c2);
    c1=X*(l1+l2*c2)+l2*s2*Y;
    s1=(l1+l2*c2)*Y-l2*s2*X;
    t1=atan2(s1,c1);                                                                                                              
    Px=l1*cos(t1)+l2*cos(t1+t2); 
    Py=l1*sin(t1)+l2*sin(t1+t2);
    
    subplot(2,2,1)
    plot(t,t1,'-o');
    hold on 

    subplot(2,2,2)
    plot(t,t2,'*');
    hold on
    
    subplot(2,2,3)
    plot(Px,Py,'*')
    hold on 
    
end

