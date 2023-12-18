function c6ans7

    y0 = [1,1];
    tspan = [0,5];
    options = odeset ('Stats','on', 'RelTol',1e-6, 'AbsTol',1e-6);
    [t,y] = ode15s (@f, tspan, y0, options);

    csvwriter ("c6ans7y1.csv", t, y(:,1));
    csvwriter ("c6ans7y2.csv", t, y(:,2));

end

function dy = f (t, y)
    dy = zeros (2, 1);
    dy(1) = -y(1) - y(2);
    dy(2) =  y(1) - 5000*y(2);
end
