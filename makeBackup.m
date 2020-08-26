%% 
% 
%	Runs a backup script.
%
function makeBackup()

    % backupScript  = ['rsync -rite ssh ~/Desktop/Data/ orch:~/ephys/Data/'];
    backupScript = ['echo Backup script not configured.'];
    
    disp(['Backuping up using: ',backupScript]);
    system(backupScript,'-echo');
