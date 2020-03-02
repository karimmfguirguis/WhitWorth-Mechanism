%Acceleration Anlysis Slider Crank Part%
function qr = Acc_SC( Aout, w4, w5,th4,th5,alpha4 )
qr = [( (w4*w4*330*cosd(th4)) + (alpha4*330*sind(th4)) + (w5*w5*70*sind(th5)) + (Aout(1)*70*sind(th5)) + Aout(2)); 
        ( (w4*w4*330*sind(th4)) - (alpha4*330*cosd(th4)) + (w5*w5*70*cosd(th5)) - (Aout(1)*70*cosd(th5)))];
end