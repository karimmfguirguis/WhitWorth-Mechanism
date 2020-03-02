%Velocity Analysis Quick Return Part%
function v = Velocity_QR( Vout, theta, w2, r3, th4 )
v = [ ( (w2*40*sind(theta)) + (Vout(1)*cosd(th4)) - (Vout(2)*r3*sind(th4) )); ( (w2*40*cosd(theta)) - (Vout(1)*sind(th4)) -  (Vout(2)*r3*cosd(th4) ) )  ];
end

