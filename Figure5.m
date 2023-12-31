points = 75;
z = linspace(0,5, points);


% Chiani N = 2 approximation:
erfcz1 = (1/6)*(exp(-(z.^2))) + (1/2)*(exp(-(4/3)*(z.^2)));
RE1 = ((abs(erfc(z)- erfcz1)) ./ erfc(z) ) * 100 ; 
figure
semilogy(z,RE1,'color','#EDB120','linewidth',2);
hold on
xlabel('x');
ylabel('RE');
axis([0 5.0 10^(-3) 10^(2)]); %axis scaling
xticks([0  1.0  2.0  3.0  4.0  5.0]);
yticks([10^(-5) 10^(-4) 10^(-3) 10^(-2) 10^(-1) 10^0 10^1 10^2]);


% Chiani N = 4 approximation:
erfcz2 = 2*(((1/6)*(exp(-4*(z.^2)))) + ((1/12)*(exp(-2*(z.^2)))) + ((1/12)*(exp(-((4/3)*(z.^2))))) + ((1/6)*(exp(-(z.^2)))));
RE2 = ((abs(erfc(z)- erfcz2)) ./ erfc(z) ) * 100 ;
semilogy(z,RE2,'m--','linewidth',1);

% Chiani N = 8 approximation:
erfcz3 = 2*(((1/12)*(exp(-7.4641*2*(z.^2)))) + ((1/24)*(exp(-3.4142*2*(z.^2)))) + ((1/24)*(exp(-4*((z.^2))))) + ((1/30)*(exp(-1.4472*2*(z.^2))))+((1/20)*(exp(-2*(z.^2)))) + ((1/12)*(exp(-(4/3)*(z.^2)))) + ((1/12)*(exp(-0.5358*2*((z.^2))))) + ((1/12)*(exp(-(z.^2)))));
RE3 = ((abs(erfc(z)- erfcz3)) ./ erfc(z) ) * 100 ;
semilogy(z,RE3,'c-^','linewidth',1);

%TANASH QUAD N = 2:
erfcz4 = (1.934/pi)*(exp(-4.62718*(z.^2))) + (1.2074/pi)*(exp(-1.09698*(z.^2)));
RE4 = ((abs(erfc(z)- erfcz4)) ./ erfc(z) ) * 100 ; % element wise array operation
semilogy(z,RE4,'g-s','linewidth',1);

% optimised curve N = 3:
ERFC = erfc(z);
syms y(x)
%y(x) = piecewise( ((0<=x)&(x<0.04338)),(0.2222)*(exp(-(x.^2))) + (0.3889)*(exp(-4*(x.^2))) + (0.3889)*(exp((-4/3)*(x.^2))),((0.04338<=x)&(x<0.1602)),(0.1919)*(exp(-(x.^2))) + (0.3578)*(exp(-4*(x.^2))) + (0.3585)*(exp((-4/3)*(x.^2))),(0.1602<=x)&(x<0.2903),(0.1665)*(exp(-(x.^2))) + (0.3332)*(exp(-4*(x.^2))) + (0.3332)*(exp((-4/3)*(x.^2))),((0.2903<=x)&(x<0.6007)),(0.1594)*(exp(-(x.^2))) + (0.3299)*(exp(-4*(x.^2))) + (0.3266)*(exp((-4/3)*(x.^2))),((0.6007<=x)&(x<0.7575)),(0.1664)*(exp(-(x.^2))) + (0.3333)*(exp(-4*(x.^2))) + (0.3331)*(exp((-4/3)*(x.^2))),((0.7575<=x)&(x<1.135)),(0.1703)*(exp(-(x.^2))) + (0.3335)*(exp(-4*(x.^2))) + (0.3359)*(exp((-4/3)*(x.^2))),((1.135<=x) &(x<1.335)),(0.1667)*(exp(-(x.^2))) + (0.3333)*(exp(-4*(x.^2))) + (0.3334)*(exp((-4/3)*(x.^2))),((1.335<=x)&(x<1.795)),(0.1643)*(exp(-(x.^2))) + (0.3333)*(exp(-4*(x.^2))) + (0.3322)*(exp((-4/3)*(x.^2))),(1.795<=x)&(x<1.959),(0.1667)*(exp(-(x.^2))) + (0.3333)*(exp(-4*(x.^2))) + (0.3333)*(exp((-4/3)*(x.^2))),((1.959<=x)&(x<2.096)),(0.1675)*(exp(-(x.^2))) + (0.3333)*(exp(-4*(x.^2))) + (0.3335)*(exp((-4/3)*(x.^2))),(2.096<=x)&(x<2.646),(0.1693)*(exp(-(x.^2))) + (0.3333)*(exp(-4*(x.^2))) + (0.3336)*(exp((-4/3)*(x.^2))),(2.646<=x)&(x<2.887),(0.1669)*(exp(-(x.^2))) + (0.3333)*(exp(-4*(x.^2))) + (0.3333)*(exp((-4/3)*(x.^2))),(2.8887<=x)&(x<=5),(0.1624)*(exp(-(x.^2))) + (0.3333)*(exp(-4*(x.^2))) + (0.3331)*(exp((-4/3)*(x.^2))));
y(x) = piecewise( ((0<=x)&(x<0.04338)),(0.2222)*(exp(-(x.^2))) + (0.3889)*(exp(-4*(x.^2))) + (0.3889)*(exp((-4/3)*(x.^2))),((0.04338<=x)&(x<0.1602)),(0.1919)*(exp(-(x.^2))) + (0.3578)*(exp(-4*(x.^2))) + (0.3585)*(exp((-4/3)*(x.^2))),(0.1602<=x)&(x<0.2903),(0.1665)*(exp(-(x.^2))) + (0.3332)*(exp(-4*(x.^2))) + (0.3332)*(exp((-4/3)*(x.^2))),((0.2903<=x)&(x<0.6007)),(0.1594)*(exp(-(x.^2))) + (0.3299)*(exp(-4*(x.^2))) + (0.3266)*(exp((-4/3)*(x.^2))),((0.6007<=x)&(x<0.7575)),(0.1664)*(exp(-(x.^2))) + (0.3333)*(exp(-4*(x.^2))) + (0.3331)*(exp((-4/3)*(x.^2))),((0.7575<=x)&(x<1.135)),(0.1703)*(exp(-(x.^2))) + (0.3335)*(exp(-4*(x.^2))) + (0.3359)*(exp((-4/3)*(x.^2))),((1.135<=x) &(x<1.335)),(0.1667)*(exp(-(x.^2))) + (0.3333)*(exp(-4*(x.^2))) + (0.3334)*(exp((-4/3)*(x.^2))),((1.335<=x)&(x<1.795)),(0.1643)*(exp(-(x.^2))) + (0.3333)*(exp(-4*(x.^2))) + (0.3322)*(exp((-4/3)*(x.^2))),(1.795<=x)&(x<1.959),(0.1667)*(exp(-(x.^2))) + (0.3333)*(exp(-4*(x.^2))) + (0.3333)*(exp((-4/3)*(x.^2))),((1.959<=x)&(x<2.096)),(0.1675)*(exp(-(x.^2))) + (0.3333)*(exp(-4*(x.^2))) + (0.3335)*(exp((-4/3)*(x.^2))),(2.096<=x)&(x<2.646),(0.1693)*(exp(-(x.^2))) + (0.3333)*(exp(-4*(x.^2))) + (0.3336)*(exp((-4/3)*(x.^2))),(2.646<=x)&(x<2.887),(0.1669)*(exp(-(x.^2))) + (0.3333)*(exp(-4*(x.^2))) + (0.3333)*(exp((-4/3)*(x.^2))),(2.8887<=x)&(x<3.654),(0.1624)*(exp(-(x.^2))) + (0.3333)*(exp(-4*(x.^2))) + (0.3331)*(exp((-4/3)*(x.^2))),(3.654<=x)&(x<=5),(0.1285)*(exp(-(x.^2))) + (0.3333)*(exp(-4*(x.^2))) + (0.3332)*(exp((-4/3)*(x.^2))));
xvalues = linspace(0,5,points);
yvalues = y(xvalues);
y = double(yvalues);     % optimized values of trapezoidal approx


RE5 = [];
for i = 1:points
    temp = ((abs(ERFC(i) - y(i)))/ERFC(i) ) * 100;
    RE5 = horzcat(RE5,temp);
end
semilogy(z,RE5,'b-o','linewidth',1);



% optimised curve N = 4:

syms y(x)
y(x) = piecewise( ((0<=x)&(x<0.04338)),((0.1562)*(exp(-(x.^2)))) + ((0.2812)*(exp(-(2*(x.^2))))) + ((0.2812)*(exp(-((20/3)*(x.^2))))) + ((0.2812)*(exp(-((20/17)*(x.^2))))),((0.04338<=x)&(x<0.1368)),((0.1348)*(exp(-(x.^2)))) + ((0.2597)*(exp(-(2*(x.^2))))) + ((0.2593)*(exp(-((20/3)*(x.^2))))) + ((0.2598)*(exp(-((20/17)*(x.^2))))),((0.1368<=x)&(x<0.2102)),((0.1249)*(exp(-(x.^2)))) + ((0.2499)*(exp(-(2*(x.^2))))) + ((0.2499)*(exp(-((20/3)*(x.^2))))) + ((0.2499)*(exp(-((20/17)*(x.^2))))),((0.2102<=x)&(x<0.4505)),((0.1213)*(exp(-(x.^2)))) + ((0.2465)*(exp(-(2*(x.^2))))) + ((0.2474)*(exp(-((20/3)*(x.^2))))) + ((0.2464)*(exp(-((20/17)*(x.^2))))),((0.4505<=x)&(x<0.5306)),((0.1235)*(exp(-(x.^2)))) + ((0.2488)*(exp(-(2*(x.^2))))) + ((0.2496)*(exp(-((20/3)*(x.^2))))) + ((0.2485)*(exp(-((20/17)*(x.^2))))),((0.5306<=x)&(x<0.604)),((0.12499)*(exp(-(x.^2)))) + ((0.2500)*(exp(-(2*(x.^2))))) + ((0.2500)*(exp(-((20/3)*(x.^2))))) + ((0.2500)*(exp(-((20/17)*(x.^2))))),((0.604<=x)&(x<0.8343)),((0.1263)*(exp(-(x.^2)))) + ((0.2507)*(exp(-(2*(x.^2))))) + ((0.2500)*(exp(-((20/3)*(x.^2))))) + ((0.2511)*(exp(-((20/17)*(x.^2))))),((0.8343<=x)&(x<0.9377)),((0.1256)*(exp(-(x.^2)))) + ((0.2503)*(exp(-(2*(x.^2))))) + ((0.2500)*(exp(-((20/3)*(x.^2))))) + ((0.2505)*(exp(-((20/17)*(x.^2))))),((0.9377<=x)&(x<1.198)),((0.1250)*(exp(-(x.^2)))) + ((0.2500)*(exp(-(2*(x.^2))))) + ((0.2500)*(exp(-((20/3)*(x.^2))))) + ((0.2500)*(exp(-((20/17)*(x.^2))))),((1.198<=x)&(x<1.34)),((0.1253)*(exp(-(x.^2)))) + ((0.2500)*(exp(-(2*(x.^2))))) + ((0.2500)*(exp(-((20/3)*(x.^2))))) + ((0.2502)*(exp(-((20/17)*(x.^2))))),((1.34<=x)&(x<1.518)),((0.1264)*(exp(-(x.^2)))) + ((0.2501)*(exp(-(2*(x.^2))))) + ((0.2500)*(exp(-((20/3)*(x.^2))))) + ((0.2509)*(exp(-((20/17)*(x.^2))))),((1.518<=x)&(x<2.614)),((0.1269)*(exp(-(x.^2)))) + ((0.2500)*(exp(-(2*(x.^2))))) + ((0.2500)*(exp(-((20/3)*(x.^2))))) + ((0.2509)*(exp(-((20/17)*(x.^2))))),((2.614<=x)&(x<3.521)),((0.1277)*(exp(-(x.^2)))) + ((0.2500)*(exp(-(2*(x.^2))))) + ((0.2500)*(exp(-((20/3)*(x.^2))))) + ((0.2505)*(exp(-((20/17)*(x.^2))))),((3.521<=x)&(x<=4.016)),((0.1250)*(exp(-(x.^2)))) + ((0.2500)*(exp(-(2*(x.^2))))) + ((0.2500)*(exp(-((20/3)*(x.^2))))) + ((0.2500)*(exp(-((20/17)*(x.^2))))),((4.016<=x)&(x<=5)),((0.1190)*(exp(-(x.^2)))) + ((0.2500)*(exp(-(2*(x.^2))))) + ((0.2500)*(exp(-((20/3)*(x.^2))))) + ((0.2497)*(exp(-((20/17)*(x.^2))))) );
xvalues = linspace(0,5,points);
yvalues = y(xvalues);
y = double(yvalues);     % optimized values of trapezoidal approx
ERFC = erfc(z);     % actual erfc
RE6 = [];
for i = 1:points
    temp = (((abs(ERFC(i) - y(i))) )/ERFC(i)) * 100;
    RE6 = horzcat(RE6,temp);
end

semilogy(z,RE6,'r-*','linewidth',1);

%Legend of the plot:
h=legend('Ref. [7, N = 2] ','Ref. [7, N = 4] ','Ref. [7, N = 8] ','Ref. [20, N = 2] ','Optimized n=3','Optimized n=4');
set(h,'location','southeastoutside');
set(gca,'FontSize',50)
hold off