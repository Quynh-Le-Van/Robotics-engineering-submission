L=300; n=9 ; i=5; j=7;
l01=50; l02=50;
l2=240;l3=210;l4=150;r=5;

for t=0:0.1:2*pi
    axis([-500 500 -500 500]);
    Xij=L*(j+0.5)/n;
    Yij=L*(i+0.5)/n;
    X=Xij+r*cos(t);
    Y=Yij+r*sin(t);
    z=0;
    A=X+l01;
    B=Y-l02;
    c2=(A^2+B^2-l2^2-l3^2)/(2*l2*l3);
    s2=sqrt(abs(1-c2^2));
    t2=atan2(s2,c2);
    c1=-l3*sin(t2)*B-A*(l2+l3*cos(t2));
    s1=A*l3*sin(t2)-(l2+l3*cos(t2))*B;
    t1=atan2(s1,c1);
    Px=l2*cos(t1)+l3*cos(t1+t2);
    Py=l2*sin(t1)+l3*sin(t1+t2);
    Pz=0;
    plot3(X,Y,z,'*');
    hold on;   
end

for ii=0:100/3:300
     rectangle('Position',[0 0 ii ii]);
     rectangle('Position',[300-ii 300-ii  ii ii]);
end

