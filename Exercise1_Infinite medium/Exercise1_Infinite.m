%% Time-resolved fluence in an infinite medium
% Exercise 1
% Objective: 
% Implement, plot ans study the function TDInfinite.m  for the time-domain 
% solution of the Diffusion Equation in an infinite diffusive medium.
% 1. fix SD distance, musprime, change mua and plot.
% 2. fix SD distance, mua, change musprime and plot
% 3. fix mua and musprime, change SD distance and plot
% 4. plot the fluence map in 3D as a function of time (slice in a xz plane)

clear
close all
%% define parameters
n = 1.4;                % refractive index of the medium
dt = 5;                 % [ps] time step
N = 2000;               % number of time points
mua = 0.01;             % [cm-1] absorption coefficient
musp = 10;              % [cm-1] reduced scattering coefficient
t = (0:N-1) * dt + dt/2;% time vector
SourcePos = [0, 0, 0];  % [cm]
DetPos = [2, 0, 0];     % [cm]

%% Plot the fluence (to test the function)


%% Exercise 1.1: fix SD distance, musprime, change mua and plot
% define the vector of mua
muavector = 0:0.01:0.2;

%% Exercise 1.2: fix SD distance, mua, change musprime and plot
% define the vector of musprime
muspvector = 5:20;

%% Exercise 1.3: fix mua and musprime, change SD distance and plot
% define a vector of detection X positions
detvector = 0.5:0.5:4;

%% Exercise 1.4: plot the fluence map in 3D as a function of time
% define a volume
X = -10:0.1:10;
Y = -10:0.1:10;
Z = -10:0.1:10;
% define the meshgrid
[XX,YY,ZZ] = meshgrid(X,Y,Z);
Pos = [XX(:),YY(:),ZZ(:)];