%%
%   protectFilename(proposedName)
%
%   Returns the full path of a fileName in which to store data, protects
%   against overwriting. For name conflicts:
%
%       ../proposedPath/proposedName.mat 
%               is converted to:
%       ../proposedPath/proposedName_001.mat
%
%   JSB 8/2020
%%
function fileName = protectFilename(proposedName)
  
    if size(dir(proposedName),1) > 0
        rootName = regexprep(proposedName,'.mat','');
        disp(rootName);
        iter = 1;
        while(size(dir([rootName,'_',num2str(iter,'%03d'),'.mat']),1) > 0)
            iter = iter + 1;
        end
        fileName = [rootName,'_',num2str(iter,'%03d'),'.mat'];
    else
        fileName = proposedName;
    end
