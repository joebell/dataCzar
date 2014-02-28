%%
%   getCodeStamp()
%
%       Returns a string with the name and short hash of the current git
%       repository. It appends a * if there are uncommitted changes.
%
%%
function stampString = getCodeStamp()  

    % Get the hostname
    % [status, hostname] = system('hostname');
    % hostname = regexprep(hostname,'\n','');
    
    % Figure out the top level directory we're in
    pathToStampFrom = pwd();
    printPath = regexprep(pathToStampFrom,'.*/','');
    
    % Get the current hash
    [status, shortHash] = system('git rev-parse --short HEAD');
    shortHash = regexprep(shortHash,'\n','');
    
    % Find out if the repository is current
    [status, gitStatus] = system('git status');
    if isempty(regexp(gitStatus,'working directory clean'))
        % Working directory isn't clean, there are un-committed changes
        currentFlag = '*';
    else
        currentFlag = '';
    end

    stampString = [printPath,'-',shortHash,currentFlag];
