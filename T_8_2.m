i=1
xl=0.5
xu=0.7
e(i)=10

while (e(i)>0.01)
    
    xr=(xl+xu)/2
    
    gxl= sin(xl)-csc(xl)+1
    gxr= sin(xr)-csc(xr)+1
    gxu= sin(xu)-csc(xu)+1
    
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
