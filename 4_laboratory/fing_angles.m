function [angle1,angle2,angle3] = fing_angles(point1,point2,point3)
%Summary of this function goes here

AB = sqrt((point1(1) - point2(1))^2 + (point1(2) - point2(2))^2);
BC = sqrt((point2(1) - point3(1))^2 + (point2(2) - point3(2))^2);
AC = sqrt((point1(1) - point3(1))^2 + (point1(2) - point3(2))^2);

angle1 = acosd((AB^2 + AC^2 - BC^2)/ (2*AB*AC));
angle2 = acosd((AB^2 + BC^2 - AC^2)/ (2*AB*BC));
angle3 = 180 - angle1 - angle2;

end

