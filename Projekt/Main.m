% Tukaj se nahaja glavni program projekta.
% Spodaj lahko določimo nekatere vhodne podatke in potem zaženemo scripto
% da vidimo kako se bo obnašala igrača.

%-------- Vhodni podatki --------

% parametrizacija krivulje (pot otroka):

x_o = @(t) 2*cos(t);
y_o = @(t) 3*sin(t);

% če je odvod lahek za izračunat ga lahko na roko vnesemo, namesto da ga
% računamo z vgrajenimi funkcijami.

% odvod:

dx_o = @(t) -2*sin(t);
dy_o = @(t) 3*cos(t);

% začetne koordinate igrače (s tem določimo tudi dolžino vrvice):

x0 = 2;
y0 = -2;

% Dodatni parametri:

tz = 0;         % začetni čas
tk = 2*pi;      % končni čas
n = 100;        % število delilnih točk

%-------- Program --------

% izračunamo diferencialno enačbo za pot igrače:

[t, pot_otroka] = resi_enacbo_za_igraco(@(t) [x_o(t); y_o(t)], @(t) [dx_o(t); dy_o(t)], tz, tk, [x0; y0]);

% narišemo pot otroka:

hold on
narisi_pot_otroka(x_o, y_o, tz, tk, n);

% narišemo pot igrače:

narisi_pot_igrace(pot_otroka(:, 1), pot_otroka(:, 2))

% izrišemo animacijo

animacija(x_o, y_o, pot_otroka(:, 1), pot_otroka(:, 2), t);
