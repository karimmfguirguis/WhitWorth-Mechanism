%Position Analysis Slider Crank Part%
function  c = Position_SC(Out,th4)
c =[    (   (330*cosd(th4)) + (70*cosd(Out(1))) - Out(2)   )   ;
           (    (330*sind(th4))  + (70*sind(Out(1)))    - 360        )  ];
end

