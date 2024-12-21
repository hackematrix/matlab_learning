
x = linspace(-10, 10, 1000);
y = linspace(-10, 10, 1000);
[X, Y] = meshgrid(x, y);
z = X .* Y;
surf(X, Y, z);
colormap(jet); % 设置颜色映射
shading interp; % 插值阴影
view(45, 30); % 设置视角
