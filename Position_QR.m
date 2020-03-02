%Position Analysis Quick Return Part%
function  p = Position_QR(sol,theta)
p =[((40*cosd(theta) )-(sol(1)*cosd(sol(2))));(110+(40*sind(theta))-(sol(1)*sind(sol(2))))];
end

