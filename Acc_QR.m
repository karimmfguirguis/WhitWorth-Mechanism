%Acceleration Anlysis Quick Return Part%
function a = Acc_QR( Aout, theta, w2, w3,r3, r3dot,th4 )
a = [( (w2*w2*40*cosd(theta)) + ((Aout(1) - (w3*w3*r3))*cosd(th4)) - (((Aout(2)*r3)+(2*w3*r3dot))*sind(th4)) ); 
        ( (w2*w2*40*sind(theta))   +  ((Aout(1) - (w3*w3*r3))*sind(th4))  + (((Aout(2)*r3)+(2*w3*r3dot))*cosd(th4)))];
end

