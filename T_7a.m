i=1
xl=0.1
xu=0.5
e(i)=10

while (e(i)>0.1)
    
    xr=(xl+xu)/2
    
    gxl= log((xl^2)+1)-exp(xl/2)*cos(pi*xl)
    gxr= log((xr^2)+1)-exp(xr/2)*cos(pi*xr)
    gxu= log((xu^2)+1)-exp(xu/2)*cos(pi*xu)
    
    if (gxl*gxr < 0)
        xu=xr
        e(i+1)=abs(xr-xl)
    end
    
    if (gxu*gxr < 0)
        xl=xr 
        e(i+1)= abs(xu-xr)
    end
    i=i+1;
    
    if (gxu*gxr==0)
        xr=xr;
    end
    
end
tamanyo = size(e);
ite = 1:1:tamanyo(2);

figure ('DefaultAxesFontsize', 14)
set (gcf, 'color', 'white');
plot(ite,e,'color',[1 0 0],'LineWidth',2);
grid on
hold on
xlabel('Iterations')
ylabel('error')
legend ('error')
    