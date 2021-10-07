function narisi_pot_otroka(x_otroka, y_otroka, tz, tk, n)
% NARISI_POT_OTROKA nariše krivuljo poti otroka
%
%   Vhodni podatki:
%       x_otroka in y_otroka: predstavljata parametrizacijo poti otroka
%       tz: začetni čas
%       tk: končni čas
%       n: število delilnih točk

t = linspace(tz, tk, n);
x = x_otroka(t);
y = y_otroka(t);

% izriši krivuljo:

plot(x, y, 'MarkerFaceColor', 'b', 'Linewidth', 1.5);
axis equal;

end

