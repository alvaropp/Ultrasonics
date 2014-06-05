%*******************************************************************************
%* Alvaro Perez Diaz
%* April 2014
%* University of Warwick
%*******************************************************************************
%* LSM Impedance: computes the impedance of the specified transducer
%* (spec_loader) using Linear Systems Model.
%*******************************************************************************


%*******************************************************************************
% Load specs
%*******************************************************************************
spec_loader;

Area = spec.Area; %Transducer area
L = spec.L; % Transducer thickness
Zc = spec.Zc; % Transducer impedance
Z1 = spec.Z1; % Loading medium impedance
Z2 = spec.Z2; % Backing medium impedance (see Systems_Rx_Model for optimal value)
Ze = spec.Ze; % Electrical load impedance across the transducer electrodes
Zo = spec.Zo; % Output impedance of the voltage source
Co = spec.Co; % Static capacitance
h = spec.h; % Piezoelectric constant
vc = spec.vc; % Propagation velocity within the transducer

%*******************************************************************************
%    Calculations
%*******************************************************************************
Rf = (Zc-Z1)/(Zc+Z1); % Front reflexion coefficient
Rb = (Zc-Z2)/(Zc+Z2); % Back reflexion coefficient
Tf = 2*Zc/(Zc+Z1); % Front transmission coefficient
Tb = 2*Zc/(Zc+Z2); % Back transmission coefficient
Af = 2*Z1/(Zc+Z1);
a = Ze/(Zo+Ze);
b = (Zo*Ze)/(Zo+Ze);
T = L/vc; % Transit time for the waves to propagate across transducer thickness

%*******************************************************************************
%    Impedance calculation
%*******************************************************************************
freq_range = spec.f_range; % Frequency range

Kf = (1-exp(-2.*pi.*1i.*freq_range.*T)).*(1-Rb.*exp(-2.*pi.*1i.*freq_range.*T)) ./ (1-Rf.*Rb.*exp(-2.*2.*pi.*1i.*freq_range.*T));
Kb = (1-exp(-2.*pi.*1i.*freq_range.*T)).*(1-Rf.*exp(-2.*pi.*1i.*freq_range.*T)) ./ (1-Rf.*Rb.*exp(-2.*2.*pi.*1i.*freq_range.*T));
Z = (1-h.*h*Co*(Kf.*Tf./2+Kb.*Tb./2)./(2*pi*1i*freq_range))./(2.*pi.*1i.*freq_range*Co);

%*******************************************************************************
%    Plot impedance against frequency
%*******************************************************************************
subplot(3,1,1)
plot(freq_range, Z)
xlabel('Frequency (Hz)','FontSize',13)
ylabel('Impedance','FontSize',13)
title('Modulus','FontSize',13)
subplot(3,1,2)
plot(freq_range, abs(real(Z))./max(abs(real(Z))))
xlabel('Frequency (Hz)','FontSize',13)
ylabel('Impedance','FontSize',13)
title('Real','FontSize',13)
subplot(3,1,3)
plot(freq_range, abs(imag(Z))./max(abs(imag(Z))))
xlabel('Frequency (Hz)','FontSize',13)
ylabel('Impedance','FontSize',13)
title('Imaginary','FontSize',13)