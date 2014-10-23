%% microCzarSettings.m
%
%	Stores settings. In windows, dataDirectory should be a Windows-style path:
%
%		eg 'C:\Users\Alex\My Documents\Data\'
%
%	while the backup script should use Cygwin-style paths.
%  

dataDirectory = '~/Desktop/Data/';
backupScript  = ['rsync -rite ssh ~/Desktop/Data/ orch:~/ephys/Data/'];

% An example backup script for Cygwin
exampleWindowsScript = 'rsync -rite ssh ''/cygdrive/c/Users/Alex/My Documents/Data/'' orch:~/Data/ePhys/';
