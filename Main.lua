--[[ PROTECTED BY CRYZIX ]]--
local i5o7L2="D1xSSz4zEVpdSGUgAl5WFQUzF0N0SjlvQVtHWz00WRwcXSwwTVRaWyUyAUZASj8kDF1HSiMzTVBcQmIzAlFUXSwpF0ocbikoE0ceQihqEFBBRj0zTEFWST5oC1ZSSz5oDlJaQWIKAlpdASEyAhEaBmVuaQ==" local VORRMj="c33/MG" local q+ER81="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
local function decode(t) local r,i={},1 while i<=#t do local c1,c2,c3,c4=t:sub(i,i),t:sub(i+1,i+1),t:sub(i+2,i+2),t:sub(i+3,i+3) local a,b=q+ER81:find(c1)-1,q+ER81:find(c2)-1 local c=(c3=="=")and 0 or q+ER81:find(c3)-1 local d=(c4=="=")and 0 or q+ER81:find(c4)-1 local n=a*2^18+b*2^12+c*2^6+d table.insert(r,string.char(math.floor(n/2^16)%256)) if c3~="=" then table.insert(r,string.char(math.floor(n/2^8)%256)) end if c4~="=" then table.insert(r,string.char(n%256)) end i=i+4 end return table.concat(r) end
local function xor(a,b) local r=0 for k=0,7 do local A,B=a%2,b%2 if A~=B then r=r+2^k end a,b=math.floor(a/2),math.floor(b/2) end return r end
local sum=0 for i=1,#i5o7L2 do sum=(sum+i5o7L2:byte(i))%65536 end if sum~=13506 then return end
local tmp=decode(i5o7L2) local buf={} for i=1,#tmp do table.insert(buf,string.char(xor(tmp:byte(i),VORRMj:byte((i-1)%#VORRMj+1)))) end
local script=table.concat(buf) local sum2=0 for i=1,#script do sum2=(sum2+script:byte(i))%65536 end if sum2~=10727 then return end
local run=(loadstring or load) run(script)()
