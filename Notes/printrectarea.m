function printrectarea(len, wid)
thearea = rectarea(len, wid);
printarea(len, wid, thearea);
end

function a = rectarea(l, w)
a = l*w;
end

function printarea(thelen, thewid, thea)
fprintf('length %6.2f\n', thelen);
fprintf('width  %6.2f\n', thewid);
fprintf('area   %6.2f\n', thea);
end