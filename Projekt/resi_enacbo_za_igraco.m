function [t, pot_igrace] = resi_enacbo_za_igraco(krivulja, odv_krivulje, tz, tk, zac)
%RESI_ENACBO_ZA_IGRACO reši diferencialno enačbo za igračo.
%
%   Vhodni podatki:
%       krivulja = [x_o(t); y_o(t)]
%       odv_krivulje = [x_o'(t); y_o'(t)]
%       tz: začetni čas
%       tk: končni čas
%       zac: začetna točka igrače
%
%   Izhodni podatki:
%       t: vector točk v kateri je izračunan položaj igrače
%       pot_igrace = [x_i; y_i]     (položaj igrače v točkah iz t)

f = @(t, pot_igrace) ((norm(odv_krivulje(t)) / norm(krivulja(t) - pot_igrace)) .* (krivulja(t) - pot_igrace))...
    .* ((odv_krivulje(t)' * (krivulja(t) - pot_igrace)) / (norm(odv_krivulje(t)) * norm(krivulja(t) - pot_igrace)));

[t, pot_igrace] = ode45(f, [tz tk], zac);

end

