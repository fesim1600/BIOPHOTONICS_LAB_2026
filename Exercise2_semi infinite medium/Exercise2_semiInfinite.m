%% Time-resolved fluence in a semi-infinite medium
% Exercise 2
% Objective: 
% Implement, plot ans study the function TDInfinite.m  for the time-domain 
% solution of the Diffusion Equation in an infinite diffusive medium.
% 1. fix SD distance, musprime, change mua and plot.
% 2. fix SD distance, mua, change musprime and plot
% 3. fix mua and musprime, change SD distance, compare with MC simulations and plot
% 4. plot the fluence map in 3D as a function of time (slice in a xz plane)

clear
close all
%% define parameters
n = 1.4;    % refractive index of the medium
dt = 5;     % time step
N = 2000;   % number of time points
mua = 0.1;  % [cm-1] absorption coefficient
musp = 10;  % [cm-1] reduced scattering coefficient
t = (0:N-1) * dt + dt/2;  % time vector
SourcePos = [0, 0, 0];
DetPos = [2, 0, 0];

%% Plot the fluence (to test the function)

%% Exercise 2.1: fix detector position, change mua and plot


%% Exercise 2.2: fix detector position, change musprime and plot


%% Exercise 2.3: fix mua and musprime, change detector position and plot and compare
%% with MC simulations
load Homo_MC.mat;% Load MC simulations in a 2000x4 matrix with SD = 1,2,3,4 cm

% %% Exercise 2.4: plot the fluence map in 3D as a function of time
% % define a volume
X = -10:0.1:10;
Y = -10:0.1:10;
Z = -10:0.1:20;
% define the meshgrid
[XX,YY,ZZ] = meshgrid(X,Y,Z);
Pos = [XX(:),YY(:),ZZ(:)];
