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
