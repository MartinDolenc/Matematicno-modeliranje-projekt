function animacija(x_otroka, y_otroka, x_igrace, y_igrace, t)
% ANIMACIJA izrise animacijo gibanja otroka in igrace po krivuljah		
%		
%   VHODNI PODATKI:		
%       x_otroka, y_otroka: koordinate otroka ob času t		
%       x_igrace, y_igrace: koordinate igrace ob času t
%       t: časovi pri katerih bomo narisali otroka in igračo

for j = 1 : size(t)
    
    tocka_otroka = plot(x_otroka(t(j)), y_otroka(t(j)), 'ob', 'MarkerFaceColor','b', 'MarkerSize', 7);
    tocka_igraca = plot(x_igrace(j), y_igrace(j), 'or', 'MarkerFaceColor','r', 'MarkerSize', 7);

    pause(0.1);

    delete(tocka_otroka);
    delete(tocka_igraca);
end
