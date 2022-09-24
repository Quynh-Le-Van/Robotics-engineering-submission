l1=40 ; l2=50 ; l3=40;
xa=30 ; ya=30 ; za=30;
xb=70 ; yb=70 ; zb=30;

for t=0:0.05:5

    x=xa+(xb-xa)*t;
    y=ya+(yb-ya)*t;
    z=za+(zb-za)*t;
    
    t1=atan2(-x,y);

    c3=( (x/sin(t1))^2 + (z-l1)^2 - l2^2 - l3^2)/(2*l2*l3);
    s3=sqrt(abs(1 - c3^2));
    t3=atan2(s3,c3);

    s2=y*l3*s3-(z-l1)*(cos(t1)*l2+cos(t1)*l3*c3);
    c2=(l1-z)*cos(t1)*l3*s3 - y*(l2+l3*c3);
    t2=atan2(s2,c2);

    Px=-sin(t1)*(l2*cos(t2)+l3*cos(t2+t3));
    Py=cos(t1)*(l2*cos(t2)+l3*cos(t2+t3));
    Pz=l1+l2*sin(t2)+l3*sin(t2+t3);
    
    subplot(2,2,1)
    plot(t,t1,'*')
    grid on
    hold on

    subplot(2,2,2)
    plot(t,t2,'*')
    grid on
    hold on

    subplot(2,2,3)
    plot(t,t3,'*')
    grid on 
    hold on

    subplot(2,2,4)
    plot3(Px,Py,Pz,'.')
    grid on
    hold on
end

