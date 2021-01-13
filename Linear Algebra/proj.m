function P = proj(y,v) % Projection of y onto v OR span{v}
    P = (dot(y,v)/dot(v,v))*v; % Computes projection of y onto v OR span{v}
end