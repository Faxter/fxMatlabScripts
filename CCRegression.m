% CrazyCar 2014
% Regression der Sensorkennlinie

clear all;                                              % Workspace löschen
clc;                                                    % Console leeren

polygrad = 4;                                           % Grad des Polynoms + 1
analog = zeros(1,polygrad);                             % Eingangsvektor anlegen
abstand = zeros(1,polygrad);                            % Ausgangsvektor anlegen

disp(['Regression der Messwerte in ein Polynom des Grades ' int2str(polygrad-1)]);
disp(['Erwarte Eingabe von ' int2str(polygrad) ' Wertepaaren']);

for i = 1:polygrad                                      % Messwerte eingeben
    analog(i) = input(['Analogwert ' int2str(i) ': ']);
    abstand(i) = input(['Abstandswert ' int2str(i) ': ']);
end

fxpoly = polyfit(analog,abstand,polygrad-1);            % Regression der Werte in Polynom

disp(['Die angenäherte Funktion: ' num2str(fxpoly(1)) 'x^3 + ' num2str(fxpoly(2)) ...
    'x^2 + ' num2str(fxpoly(3)) 'x + ' num2str(fxpoly(4))]);
