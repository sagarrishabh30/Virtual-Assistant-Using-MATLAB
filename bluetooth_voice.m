/* Bluetooth Voice Script */
functionob=bluetooth_voice
clc;
disp('Searching Bluetooth Devices');
r=instrhwinfo('bluetooth');
rn=r.RemoteNames;
[s,v] = listdlg('PromptString','Select a device:',...
                'SelectionMode','single',...
                'ListString',rn);
if(v)
sd=cell2mat(rn(s));
                b=instrhwinfo('bluetooth',sd);
ob=eval(cell2mat(b.ObjectConstructorName));
ob.Terminator='#' ;
end
end
/*Voice Scan Script*/
function op=voice_scan(ob)
while(1)
flushinput(ob)
b=fscanf(ob);
if(length(b)>4)
op=b(2:end-1);
break;
end
end
