[FileName,PathName] = uigetfile('*.txt','Select the text file');
choice = questdlg('What the fuck is this?', ...
	'Make your choose', ...
	'Raman','PL','Cancel');
switch choice
    case 'Raman'
        PL=0;
    case 'PL'
       PL=1;
    case 'Cancel'
        PL=-1;
end
filed=[PathName,FileName];
[x,y]=textread(filed,'%f %f');
x_p=2.33-x/8080;
figure;
plot(x_p,y);
xlabel('E(eV)');
ylabel('Intensity');
if(PL==1)
    legend('PL');
else
    legend('Raman');
end