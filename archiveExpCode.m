%%
%   archiveExpCode(expNum)
%
%   Saves the calling script to the data directory. Filename is:
%
%   /dataDirectory/YYMMDD/Exp_expNum.m
%
%%
function archiveExpCode(expNum)

    microCzarSettings; % Loads settings

    % Make a copy of the the source m-file
    dNum = datestr(now,'YYmmDD');
    if ~isdir([dataDirectory,dNum])
        mkdir([dataDirectory,dNum]);
    end
    expName = [dataDirectory,dNum,'/Exp',dNum,'_',num2str(expNum),'.m'];
    [ST,I] = dbstack();   
    copyfile(ST(2).file,expName);
    disp(['Archived ',ST(2).file,' to ',expName]);