clear all
clc
close all
%A matrix for first problem
a1= [0 0 0 0 0 0;
    0.5 0 0 0 0 0;
    0.5 0 0 0 0 0;
    0 0.5 0 0 0 0;
    0 0 0.5 0 0 0;
    0 0 0.5 0 0 0]
%A matrix for second problem
a2= [0 0.5 0.5 0 0 0;
    0.5 0 0 0.5 0 0;
    0.5 0 0 0 0.5 0.5;
    0 0.5 0 0 0 0;
    0 0 0.5 0 0 0;
    0 0 0.5 0 0 0]
%A matrix for third problem
a3= [0 0.5 0.5 0.5 0.5 0.5;
    0.5 0 0 0 0 0;
    0.5 0 0 0 0 0;
    0.5 0 0 0 0 0;
    0.5 0 0 0 0 0;
    0.5 0 0 0 0 0]
%A matrix for fourth problem
a4= [0 0.5 0.5 0.5 0.5 0.5;
    0.5 0 0.5 0 0 0.5;
    0.5 0.5 0 0.5 0 0;
    0.5 0 0.5 0 0.5 0;
    0.5 0 0 0.5 0 0.5;
    0.5 0.5 0 0 0.5 0]
%A matrix for fifth problem
a5= [0 0 0 0 0 0.5;
    0.5 0 0 0 0 0;
    0 0.5 0 0 0 0;
    0 0 0.5 0 0 0;
    0 0 0 0.5 0 0;
    0 0 0 0 0.5 0]
%A matrix for sixth problem
a6= [0 0.5 0 0 0 0.5;
    0.5 0 0.5 0 0 0;
    0 0.5 0 0.5 0 0;
    0 0 0.5 0 0.5 0;
    0 0 0 0.5 0 0.5;
    0.5 0 0 0 0.5 0]
%A matrix for seventh problem
a7= [0 0.5 0 0 0 0;
    0.5 0 0.5 0 0 0;
    0 0.5 0 0.5 0 0;
    0 0 0.5 0 0.5 0;
    0 0 0 0.5 0 0.5;
    0 0 0 0 0.5 0]


d1= diag([sum(a1(1,:));sum(a1(2,:));sum(a1(3,:));sum(a1(4,:));sum(a1(5,:));sum(a1(6,:))]);
d2= diag([sum(a2(1,:));sum(a2(2,:));sum(a2(3,:));sum(a2(4,:));sum(a2(5,:));sum(a2(6,:))]);
d3= diag([sum(a3(1,:));sum(a3(2,:));sum(a3(3,:));sum(a3(4,:));sum(a3(5,:));sum(a3(6,:))]);
d4= diag([sum(a4(1,:));sum(a4(2,:));sum(a4(3,:));sum(a4(4,:));sum(a4(5,:));sum(a4(6,:))]);
d5= diag([sum(a5(1,:));sum(a5(2,:));sum(a5(3,:));sum(a5(4,:));sum(a5(5,:));sum(a5(6,:))]);
d6= diag([sum(a6(1,:));sum(a6(2,:));sum(a6(3,:));sum(a6(4,:));sum(a6(5,:));sum(a6(6,:))]);
d7= diag([sum(a7(1,:));sum(a7(2,:));sum(a7(3,:));sum(a7(4,:));sum(a7(5,:));sum(a7(6,:))]);

l1= d1-a1
l2= d2-a2
l3= d3-a3
l4= d4-a4
l5= d5-a5
l6= d6-a6
l7= d7-a7

[V1,D1,W1]= eig(l1);
o=ones(6,1);
ev1=D1*o
r1=real(ev1);
i1=imag(ev1);
figure
plot(r1,i1,'r*')
hold on

[V2,D2,W2]= eig(l2);
ev2=D2*o
r2=real(ev2);
i2=imag(ev2);
figure
plot(r2,i2,'r*')
hold on

[V3,D3,W3]= eig(l3);
ev3=D3*o
r3=real(ev3);
i3=imag(ev3);
figure
plot(r3,i3,'r*')
hold on

[V4,D4,W4]= eig(l4);
ev4=D4*o
r4=real(ev4);
i4=imag(ev4);
figure
plot(r4,i4,'r*')
hold on

[V5,D5,W5]= eig(l5);
ev5=D5*o
r5=real(ev5);
i5=imag(ev5);
figure
plot(r5,i5,'r*')
hold on

[V6,D6,W6]= eig(l6);
ev6=D6*o
r6=real(ev6);
i6=imag(ev6);
figure
plot(r6,i6,'r*')
hold on

[V7,D7,W7]= eig(l7);
ev7=D7*o
r7=real(ev7);
i7=imag(ev7);
figure
plot(r7,i7,'r*')
hold on

% The left eigen vectors of the graphs corresponding to lamda = 0
w1_L1=W1(:,6)
w1_L2=W2(:,1)
w1_L3=W3(:,1)
w1_L4=W4(:,1)
w1_L5=W5(:,1)
w1_L6=W6(:,1)
w1_L7=W7(:,1)

%The Fiedler value v2 of the graphs are as follows:
v2_L1=V1(:,2)
v2_L2=V2(:,2)
v2_L3=V3(:,2)
v2_L4=V4(:,2)
v2_L5=V5(:,2)
v2_L6=V6(:,2)
v2_L7=V7(:,2)









