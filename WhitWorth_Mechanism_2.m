%Whitworth Quick Return Mechanism%
%r(1) = 110;
%r(2) =40;
%r(4) = 330;
%r(5) = 70;
%r(7) = 360;
%theta(1) = 90;
%theta(6) = 0; 
%dbstop if caught error
close
clc 
%Position Analysis Quick Return Part%
options=optimset('display','off');
for th2=1:1:361
Position_QR_Array(:,th2)=fsolve(@Position_QR, [117,70],options, (th2-1));
r3 =Position_QR_Array(1,:);
th4=Position_QR_Array(2,:);
end
plot(1:361,r3(1,:),'r');
hold;
grid;
xlabel('Theta2');
ylabel('R3');
figure;
plot(1:361,th4(1,:));
hold;
grid;
xlabel('Theta2');
ylabel('Theta4');
%Position Analysis Slider Crank Part%
for th2=1:1:361
Position_SC_Array(:,th2)=fsolve(@Position_SC, [45,162],options, th4(th2));
th5 = Position_SC_Array(1,:);
 r6   = Position_SC_Array(2,:);
end
figure;
plot(1:361,th5(1,:),'r');
hold; 
grid;
xlabel('Theta2');
ylabel('Theta5');
figure;
plot(1:361,r6(1,:));
hold;
grid;
xlabel('Theta2');
ylabel('R6');
%Velocity Analysis Quick Return%
for th2=1:1:361
Velocity_QR_Array(:,th2)=fsolve(@Velocity_QR, [373,1.22],options,th2,10,r3(th2),th4(th2));
r3dot=Velocity_QR_Array(1,:);
w3=Velocity_QR_Array(2,:);
end
figure;
plot(1:361,r3dot(1,:),'r');
hold; 
grid;
xlabel('Theta2');
ylabel('R3_Dot');
figure;
plot(1:361,w3(1,:));
hold;
grid;
xlabel('Theta2');
ylabel('W3');
%Velocity Analysis Slider Crank%
for th2=1:1:361
Velocity_SC_Array(:,th2)=fsolve(@Velocity_SC, [0.79,-1.25],options, th4(th2),th5(th2),w3(th2));
w5=Velocity_SC_Array(1,:);
r6dot=Velocity_SC_Array(2,:);
end
figure;
plot(1:361,w5(1,:),'r');
hold; 
grid;
xlabel('Theta2');
ylabel('W5');
figure;
plot(1:361,r6dot(1,:)); 
hold;
grid;
xlabel('Theta2');
ylabel('R6dot');
%Acceleration Analysis Quick Return%
x = [32.25,-6.4];
for th2=1:1:361
Acceleration_QR_Array(:,th2)=fsolve(@Acc_QR, [x(1),x(2)],options,th2,10,w3(th2),r3(th2),r3dot(th2),th4(th2));
r3ddot=Acceleration_QR_Array(1,:);
alpha3=Acceleration_QR_Array(2,:);
x = [r3ddot,alpha3];
end
figure;
plot(1:361,r3ddot(1,:),'r');
hold; 
grid;
xlabel('Theta2');
ylabel('r3ddot');
figure;
plot(1:361,alpha3(1,:));
hold;
grid;
xlabel('Theta2');
ylabel('alpha3');
%Acceleration Analysis Slider Crank%
for th2=1:1:361
Acceleration_SC_Array(:,th2)=fsolve(@Acc_SC, [7.31,5766.4],options, w3(th2),w5(th2),th4(th2),th5(th2),alpha3(th2));
alpha5= Acceleration_SC_Array(1,:);
r6ddot= Acceleration_SC_Array(2,:);
end
figure;
plot(1:361,alpha5(1,:),'r');
hold; 
grid;
xlabel('Theta2');
ylabel('alpha5');
figure;
plot(1:361,r6ddot(1,:)); 
hold;
grid;
xlabel('Theta2');
ylabel('R6ddot'); 
