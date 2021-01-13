%Outputs map of Coronavirus cases around the US based on the data provided in the Excel Document
T=readmatrix('USCoronavirusCasesMap.xlsx');
 x=T(1,3:end);
 y=T(2:end,1);
 z=T(2:end,3:end);
 xi=1:.1:40;
 yi=1:.1:30;
 [xi,yi]=meshgrid(xi,yi);
 zc=interp2(x,y,z,xi,yi,'cubic');
 mesh(xi,yi,zc);
 h = surf(xi,yi,zc);
 c=colorbar;
 title('US Confirmed Coronavirus Cases By State');
 set(h,'LineStyle','none')
zlim([0 30000]); %Limits height values because New York is so absurdly high compared to everything else
caxis([0 30000]); %Limits coloring values to account for limit in height values
set(gca,'Ydir','reverse');
cs=contour3(xi,yi,zc,15);
clabel(cs,'manual');