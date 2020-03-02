%Velocity Analysis Slider Crank Part%
function d= Velocity_SC(Vout,th4,th5,w4 )
d = [ ((w4*330*sind(th4)) + (Vout(1)*70*sind(th5) ) + Vout(2)); (  (w4*330*cosd(th4)) + (Vout(1)*70*cosd(th5)))];
end

