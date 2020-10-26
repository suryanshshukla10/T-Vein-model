X_0 = linspace(8,130,123);
P_0 = zeros(size(X_0));
[a,l_0] = size(X_0);
for j = 1:l_0 
    V_tv_0 = (X_0(j));
    sai_0 = 2/((exp(V_tv_0 /8)-1));
    P_tmtv_0 = -5 + 0.4* exp((V_tv_0/50) - sai_0);
    P_0(j) = P_tmtv_0; 

end

X = linspace(130,350,220);
P_1 = zeros(size(X));
% V_tv = 135
[a,l] = size(X);
for i = 1:l 
    V_tv = (X(i));
    sai = 2/((exp(V_tv /8)-1));
    P_tmtv = 0.3855 + 0.15*(V_tv - 130) - sai;
    P_1(i) = P_tmtv; 

end
figure 
plot(X_0, P_0)
xlabel("Volume")
ylabel("Pressure")
hold on
xline(130, ':b', {'Vu,tv'})
yline(0)
xline(8,':b', {'Kxv'})
plot(X,P_1)
xlabel("Volume")
ylabel("Pressure")
hold off
