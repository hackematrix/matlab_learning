m=4.8e-26;
k=1.38e-23;
T=300;
v=linspace(0,1000,1000);
fv=(m/(2*pi*k*T))^(3/2)*4*pi*v.^2.*exp(-m.*v.^2/(2*k*T));

figure;
plot(v,fv);
xlabel("v");
ylabel("f(v)");
title("麦克斯韦速率分布");
grid on;
