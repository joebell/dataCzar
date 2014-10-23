%%
%   microCzar
%
%   microCzar is a lightweight MATLAB package for organizing data and code.
%   It provides a simple interface to existing tools, and focuses on not
%   duplicating their functionality.
%
%   Requirements:
%
%       To use microCzar you'll need to do some system setup. It varies by
%       type of system, but will work in Windows, Mac, and Linux.
%
%   Installation instructions:
%
%		Step 1: Install rsync and git
%
%		Mac and Linux
%
%			(1) Make sure rsync and git are installed.
%
%		Windows
%
%		(1) First, install Cygwin. (http://cygwin.com). This is a free package 
%		that allows you to use unix-style tools. Make sure that you also 
%		install the packages 'rsync' 'ssh' and 'git'. (These may be 
%		installed by default.
%
%		(2) Now add the Cygwin directory to your Windows path. At the MATLAB
%		prompt type:>> system('rsync -h')  If you don't see the rsync help 
%		information you've done something wrong.
%
%		(Detailed instructions for steps 1-2: http://www.howtogeek.com/howto/
%		 41382/how-to-use-linux-commands-in-windows-with-cygwin/ Note that your
%		 Cygwin directory may be called C:\cygwin64\bin or something similar.)
%
%		Step 2: Get a GitHub account at www.github.com
%
%       Git is a super-powerful tool, but may take a few hours to learn to
%       use. It's worth it. Good tutorials:
%           http://www.vogella.com/tutorials/Git/article.html
%           https://www.codeschool.com/courses/try-git
%           http://git-scm.com/docs/gittutorial
%
%       The GitHub for Windows GUI is a very good front-end to Git.
%       
%       Step 3: Setup an account on Orchestra
%
%		(1) Get an orchestra account (http://rc.hms.harvard.edu)
%		(2) Make a directory on orchestra for your data. (mkdir ~/Data/ePhys/)
%		(3) Setup aliases
%
%			in ~/.ssh/config add:
%				
%			Host orch
%				User jsb38 [replace with your username...]
%				HostName mezzanine.med.harvard.edu
%
%		Step 4: Setup keyless login:
%			
%			Mac, Linux: run keygen
%
%			Cygwin: run ssh-keygen -t rsa
%
%			Then for both:
%
%				cat ~/.ssh/id_rsa.pub | ssh orch 'cat >> ~/.ssh/authorized_keys'
%
%			Then ssh to orchestra and:
%
%				chmod 700 ~/.ssh
%				chmod 644 ~/.ssh/id_rsa.pub
%
%		Step 5: Setup dataCzar
%
%			Download and unzip it (github.com/joebell/dataCzar)
%			Add it to the MATLAB path
%			Open microCzarSettings.m and edit it. 
%				dataDirectory - Root directory for storing data. If you're in Windows
%					this should be a normal windows path eg. 'C:\Users\Alex\Data' and 
%					NOT a cygwin path ('~/Data').
%				backupScript - Edit this until it works. Examples:
%
%					Mac: 'rsync -rite ssh ~/Data/ orch:~/Data/ePhys/'
%					Cygwin: 'rsync -rite ssh ''/cygdrive/c/Users/Alex/Data'' orch:~/Data/Ephys'
%
%		Done!
%			
