%% ECES 450/650 - Tutorial #3 
%  Michael Russo (mar487@drexel.edu)

%% Data Setup
uiimport; %have the user put in their data
palms; % palms is the name of the cell array I am storing the palms data in
pd; % pd is the palm data as a numerical matrix
pdl=input("columns for palm L?  "); % vector of which columns are palm L's data
pdr=input("columns for palm R?  "); % vector of which columns are palm R's data
L=pd(:,pdl); % Left palm data
R=pd(:,pdr); % Right palm data

%% Calculations
[h,p]=ttest2(L(:,1),R(:,1)) % comparing left & right palms on sampling day 1
[h2,p2]=ttest2(R(:,4),L(:,4)) % comparing left & right palms on sampling day 4