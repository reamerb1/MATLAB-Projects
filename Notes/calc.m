function calc(l, w, h)
volum = v(l, w, h);
[a1, a2, a3] = a(l, w, h);
surfacea = surfa(a1, a2, a3);
calcprint(volum, a1, a2, a3, surfacea);
end
function vol = v(l, w, h)
vol = l*w*h;
end
function [area1, area2, area3] = a(len, wid, hei)
area1 = len*wid;
area2 = len*hei;
area3 = wid*hei;
end
function surfarea = surfa(are1, are2, are3)
surfarea = 2*(are1 + are2 + are3);
end
function calcprint(volume, area1, area2, area3, surfacearea)
fprintf('volume         %6.2f\n', volume);
fprintf('area 1         %6.2f\n', area1);
fprintf('area 2         %6.2f\n', area2);
fprintf('area 3         %6.2f\n', area3);
fprintf('total Area     %6.2f\n', surfacearea);
end