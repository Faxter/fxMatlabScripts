% Graphical presentation of a variant of the Euler-Spirale
% by Faxter, 2014

% starts with a line of given length, then adds another line from the
% ending point with same length and incremented angle. 

% uses fxLine: function [p1] = fxLine(phi,l,p0)
% where phi is an angle in degree, l is length of the line, p0 the
% starting point, p1 the destination point

% initialisation
% _________________________________________________________________________

start = [0 0];      % start at origin
rep = 5000;         % number of cycles to do
linelen = 1;        % length of the lines to use
phi0 = 0;           % starting value of angle
deltaphi = 300;     % amount of angle to be added per rep
incphi = 3.7;       % amount of angle to be incremented between lines per rep

% implementation
% _________________________________________________________________________

figure('units','normalized','outerposition',[0 0 1 1]);
for i = 1:rep
    dest = fxLine(phi0,linelen,start);                  % determine destination of line
    plot([start(1) dest(1)],[start(2) dest(2)]);        % draw line
    hold on;                                            % keep plot alive
    phi0 = phi0 + deltaphi;                             % increment angle
    deltaphi = deltaphi + incphi;                       % increment angle between lines
    start = dest;                                       % set destination as start for next line
    if i<20
        pause(0.3);
    else
        pause(0.01);
    end
end
