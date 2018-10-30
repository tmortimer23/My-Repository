function [volumes] = iterative(a, b, R, temps, P)
volumes = [];
for T = temps
    Vi = (R * T) / P;
    for i = 1:1000
        volume = (R * T) / (P + a / Vi^2) + b;
        Vi = volume;
    end
    volumes = [volumes, Vi];
end
