%%
%   getDataFileName(prefixCode, expNum)
%
%   Returns the full path of a fileName in which to store data. Format is:
%
%   dataDirectory/YYMMDD/prefixCodeYYMMDD_expNum_nextSequentialNumber.mat
%       
%
%   JSB 3/22/2013
%%
function fileName = getDataFileName(prefixCode, expNum)

    microCzarSettings;   % Loads settings
  
    % Come up with the next file name in the sequence
    dNum = datestr(now,'YYmmDD');
    dataPreamble = [dataDirectory,dNum,...
        '/',prefixCode,dNum,'_',num2str(expNum,'%03d'),'_'];
    trialN = 1;
    while( size(dir([dataPreamble,num2str(trialN,'%03d'),'.mat']),1) > 0)
        trialN = trialN + 1;
    end
    
    fileName = [dataPreamble,num2str(trialN,'%03d'),'.mat'];
