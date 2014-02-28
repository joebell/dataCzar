% microCzarSettings.m

dataDirectory = '~/Desktop/Data/';
backupLocation = 'orch:~/ePhys/Data/';
backupScript  = ['rsync -rite ssh ',dataDirectory,' ',backupLocation];