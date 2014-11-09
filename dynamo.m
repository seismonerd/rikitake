function dy = dynamo(t,y,coeffs)

m = coeffs(1);
g = coeffs(2);
r = coeffs(3);
f = coeffs(4);

dy = zeros(6,1);

dy(1) = r*(y(4)-y(1));
dy(2) = r*(y(3)-y(2));
dy(3) = y(1)*y(5) + m*y(2) - (1+m)*y(3);
dy(4) = y(2)*y(6) + m*y(1) - (1+m)*y(4);
dy(5) = g*(1-(1+m)*y(1)*y(3) + m*y(1)*y(2)) - f*y(5);
dy(6) = g*(1-(1+m)*y(2)*y(4) + m*y(2)*y(1)) - f*y(6);

