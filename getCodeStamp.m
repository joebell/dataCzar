%%
%   getCodeStamp()
%
%       Returns a string with the name and short hash of the current git
%       repository.
%
%%
function stampString = getCodeStamp()

    % [status, hostname] = system('hostname');
    % hostname = regexprep(hostname,'\n','');
    
    pathToStampFrom = pwd();
    printPath = regexprep(pathToStampFrom,'.*/','');
    [status, shortHash] = system('git rev-parse --short HEAD');

    stampString = [printPath,'-',shortHash];
