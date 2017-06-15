function plotting(x)
    a =[-2 2 -2 2];
    
    d = (a(2)+a(4) - a(1)-a(3))/60;
    
    points = [
        d 0 1
        -d -0.6*d 1
        -d 0.6*d 1
        d 0 1];
    T = se2(x(1), x(2), x(3));
    points = T * points';
    plot(points(1,:), points(2,:));
end