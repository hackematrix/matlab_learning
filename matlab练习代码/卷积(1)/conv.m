T0=50;
intervalT=0.001;
t=0:intervalT:T0;

W0=20;
intervalW=0.001;
w=0:intervalW:W0;

functionW=zeros(1,length(w));
for i=1:length(w)
    if sin(w(i))>1e-6
        functionW(i)= sin(0.5*w(i))^2/(w(i).*sin(w(i)));
    else
        functionW(i)=0.25;
    end;
end;

h=zeros(1,length(t));
for i=1:length(t)
    for j=1:length(functionW)
        h(i)=h(i)+functionW(j)*cos(w(j)*t(i))*intervalW;
    end;
end;

h=2*h/pi;
t=[-t(end:-1:2),t];
h=[h(end:-1:2),h];
subplot(2,1,1);
plot(t,h);

newT = -10:intervalT:10;
y = zeros(1,length(newT));
for i = 1:length(newT)
    time = newT(i);
    for tao = -20:0.001:20
        hindex = 1+round((tao-t(1))/intervalT);
        if time-tao>0 && time-tao<2 && hindex>=1 && hindex<=length(h)
            y(i) = y(i)+h(hindex)*0.001;
        end;
    end;
end;
%画y(t)。
subplot(2,1,2);
plot(newT,y); 
