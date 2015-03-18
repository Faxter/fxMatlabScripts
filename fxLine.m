function [p1] = fxLine(phi,l,p0)
% fxLine nimmt Winkel und Länge und gibt Koordinaten des Endpunktes zurück

% Eingabe von Phi im Gradmaß
% Input und Output sind jeweils ein Punkt im zweidimensionalen Raum
% Endpunkt wird berechnet aus Startpunkt, Länge und Winkel
% Start- und Endpunkt liegen auf einer imaginären Geraden
% Die Punkte bilden ein rechtwinkliges Dreieck mit l als Hypothenuse
% Eingabe und Ausgabe der Punkte in Vektoren p0 und p1

phi = (phi * 2 * pi) / 360;   % phi in Radiant
deltax = l * cos(phi);
deltay = l * sin(phi);
p1(1) = p0(1) + deltax;
p1(2) = p0(2) + deltay;

end

