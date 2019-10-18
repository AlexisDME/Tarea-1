i=1
xl1=-4
xu1=-2
e(i) = 10

while (e(i) > 0.01)
    
    xr1=(xl1+xu1)/2
    
    gxl1= xl1^3+10*(xl1)-5
    gxr1= xr1^3+10*(xr1)-5
    gxu1= xu1^3+10*(xu1)-5
    
    if (gxl1*gxr1 < 0)
        xu1=xr1
        e(i+1)=abs(xr1-xl1)
    end
    
    if (gxu1*gxr1 < 0)
        xl1=xr1 
        e(i+1)= abs(xu1-xr1)
    end
    i=i+1;
    
    if (gxu1*gxr1==0)
        xr1=xr1;
    end
    
end
tamanio = size(e);
ite= 1:1:tamanio(2);
figure ('DefaultAxesFontsize', 14)
set (gcf, 'color', 'white');
plot(ite,e,'color',[1 0 0],'LineWidth',2);
grid on
hold on
xlabel('Iterations')
ylabel('error')
legend ('error')
    