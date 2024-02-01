
-- APKC 
LUA = 'Snake.io(vAU.02)[32+64]-v08'
GLabel = 'Snake.io'
GProcess = 'com.amelosinteractive.snake'
GVersion = '(vAU.02)'
xbit = 32 
LibResult = 1
xlib = 'libil2cpp.so'
xREV = 1  I={}
xCNE = 0
xSSE = 0
XbitX = 2
printx = '---------------------------------------------------------------'
print(printx)
xTAGx = 'APEX[GG]v2'
print(xTAGx)
xMOTOx = 'Hacking is the Game'
print(xMOTOx)
xLINKx = 'https://t.me/apexgg2Home'
print(xLINKx)
print(LUA)
print(GLabel..'  '..GVersion)
--███████████████████████
--███████████████████████
--███████████████████████
-- APEX[GG]v2
gg.require("101.1") 
apex=1
gg.setVisible(false)
v=gg.getTargetInfo()
    if v==nil then
        print("×× ERROR ××\n×× INVALID PROCESS SELECTED / OR NO ROOT ACCESS") 
        gg.setVisible(true) os.exit()
        return
    end 
------------------------------------------------------------------------------
A={} for i =1,100 do A[i]={} end 
------------------------------------------------------------------------------
OFF="× " ON="√ "
IN=OFF NA=OFF AS=OFF 
ER=OFF PL=OFF CH=OFF 
BD=OFF 

function menu()
apex=0
gg.toast(xTAGx)  
mc=gg.multiChoice({
	IN.."Invincible  ( on/off )",
	ER.."Eat Radius  [ "..erx.." ]", 
	PL.."Pellet to Lenght Gain  [ "..PLX.." : 1 ]", 
	BD.."Brain Dead Snakes", 
	AS.."All Skins", 
	NA.."No Ads", 
	"[ EXIT ]"},
    {},xTAGx.."\n"..xLINKx.."\n"..GLabel.." "..GVersion.." "..xBITx)
	
	if mc==nil then cancel() return end
	if mc[1] then invincible() end
	if mc[2] then eatradius() end 
	if mc[3] then pelletlength() end 
	if mc[4] then braindead() end 
	if mc[5] then allskins() end 
	if mc[6] then noads() end 
	
xhaX={
	IN.."Invincible  ( on/off )",
	ER.."Eat Radius  [ "..erx.." ]", 
	PL.."Pellet to Lenght Gain  [ "..PLX.." : 1 ]", 
	BD.."Brain Dead Snakes", 
	AS.."All Skins", 
	NA.."No Ads", 
	}
xhaX=table.concat(xhaX, "\n")
xhaX=tostring(xhaX) 

	if mc[7] then exit() return end 

gg.toast("[√] Complete") 
gg.alert(GLabel.." "..GVersion.." "..xBITx.."\n\n"..xhaX,"OK",nil,xTAGx)  

end
--███████████████████████

-- public class PlayerSnakeController : SnakeController
-- public override bool IsInvincible()  
-- public override bool IsImmuneToWall() 
-- protected override void RemoveLength(int value)
A[1].class=0 A[1].method="IsInvincible" A[1].value=65559
A[2].class=0 A[2].method="IsImmuneToWall" A[2].value=18 
A[3].class=0 A[3].method="RemoveLength" A[3].value=65562 

function invincible()  
if A[1].error==1 or A[2].error==1 or A[3].error==1 then error() return end
    if IN==OFF then 
        for i = A[1].start, A[2].finish do o=I[i] x=1 arm() end 
        for i = A[3].start, A[3].finish do o=I[i] x=0 arm() end
        IN=ON
    else
        for i = A[1].start, A[3].finish do o=I[i] revert() end 
        IN=OFF 
    end
end 

--███████████████████████

-- public class SnakeEatController 
-- public int get_SnakeAbsorbRadius()
A[4].class=0 A[4].method="get_SnakeAbsorbRadius"
erx="10"  

function eatradius()
if A[4].error==1 then error() return end 
er=gg.prompt({
  "Eat Radius ( 10=default ) [10;100]"},
   {[1]=erx},
   {[1]="number"})
   if er==nil then cancel() return end
y=string.format("%X",er[1])
    if v.x64 then x="~A8 MOV X0, #0x"..y 
    else x="~A MOVW R0, #"..er[1].." "
    end
    for i = A[4].start, A[4].finish do o=I[i]  
        if er[1]==10 then revert() ER=OFF else arm() ER=ON end
    end 
erx=er[1] 
end 

--███████████████████████

-- public class metaManager : MonoBehaviour // TypeDefIndex:
-- public int get_SnakeBodyCountFactor() { }
A[5].class=0 A[5].method="get_SnakeBodyCountFactor" 

PLX="10" 
function pelletlength()
if A[5].error==1 then error() return end 
pl=gg.prompt({
    "Pellets to Length Gained (default=10) [1;10]"},
    {[1]=PLX}, 
    {[1]="number"})
    if pl==nil then cancel() return end 
y=string.format("%X",pl[1])
    if v.x64 then x="~A8 MOV X0, #0x"..y
    else x="~A MOVW R0, #"..pl[1].." " 
    end
    for i = A[5].start, A[5].finish do o=I[i] 
        if pl[1]==10 then revert() PL=OFF else arm() PL=ON end 
    end 
PLX=pl[1] 
end 

--███████████████████████

-- public class AIDecisionTime // TypeDefIndex:
-- public static float GetDecisionTime(bool semiRandom, AIDecisionTime decisionTime) { }
A[6].class=0 A[6].method="GetDecisionTime" 

if v.x64 then xbd='h00F0AFD2' else xbd='h800F47E3' end

function braindead()
if A[6].error==1 then error() return end
    for i = A[6].start, A[6].finish do o=I[i] x=xbd 
       if BD==OFF then arm() else revert() end
    end 
    if BD==OFF then BD=ON else BD=OFF end
end 

--███████████████████████

-- public static class LocalUser 
-- public static bool IsSkinUnlocked(int skinID)
A[7].class=0 A[7].method="IsSkinUnlocked" 

function allskins()
if A[7].error==1 then error() return end 
    for i = A[7].start, A[7].finish do o=I[i] x=1 arm() 
    end 
AS=ON 
end 

--███████████████████████

-- public class AdsManager : MonoBehaviour 
-- public bool IsInterstitialAdReady() { }
-- private bool HasPurchasedNoads()
A[8].class=0 A[8].method="IsInterstitialAdReady" 
A[9].class=0 A[9].method="HasPurchasedNoads" 

function noads()
if A[8].error==1 or A[9].error==1 then error() return end 
    for i = A[8].start, A[9].finish do 
        if i >= A[9].start then x=1 else x=0 end
    o=I[i]  arm()
    end 
NA=ON 
end 

--███████████████████████
--███████████████████████
--███████████████████████
    if v.processName~=GProcess then
        print("This Script is For:\n    "..GLabel.."\n    "..GProcess.."\nYou Selected:\n    "..v.label.."\n    "..v.processName)
        gg.setVisible (true) os.exit()
        return
    end 
------------------------------------------------------------------------------
    if v.x64 then bitx=64 xBITx="[x64]" else bitx=32 xBITx="[x32]" end 
        print(xBITx)  
        print(printx)  
--███████████████████████
    if LibResult==1 then 
    xAPEXx={} xXx=0
    xLibRes=0 
    libx=gg.getRangesList()
        if #(libx)==0 then 
        print("×× LIB ERROR #01 ××\nNo Libs Found\nTry a Different Virtual Environment \nor Try a Better Game Installation Method\nor Download Game From 'apkcombo.com' ")
        gg.setVisible(true) 
        os.exit() 
        end
    libx=gg.getRangesList(xlib)
        if #(libx)==0 then  
        print("×× No "..xlib.." Found")
        xLibRes=2 
        goto APEX_SPLIT 
        end
    xlibn=0 
        for i, v in ipairs(libx) do 
            if libx[i].state=="Xa" then 
            xXx=xXx+1 
            xAPEXx[xXx]=libx[i].start
            xLibRes=1
            end
        end 
        if xLibRes==0 then 
        print("×× LIB ERROR #03 ××\nNo "..xlib.." Found in Xa\nTry a Different Virtual Environment \nor Try a Better Game Installation Method\nor Download Game From 'apkcombo.com' ")
        gg.setVisible(true) 
        os.exit()     
        end    
                  
        ::APEX_SPLIT::     
        if xLibRes==2 then
        splitapk=0
        libx=gg.getRangesList()
            for i, v in ipairs(libx) do 
                if libx[i].state=="Xa" and string.match(libx[i].name,"split_config") then
                splitapk=1
                end
            end 
            if splitapk==1 then 
            xsapk={} xsapkx=0
                for i, v in ipairs(libx) do
                    if libx[i].state=="Xa" then
                    xsapkx=xsapkx+1
                    xsapk[xsapkx]=libx[i]["end"]-libx[i].start
                    end
                end 
                if xsapkx~=0 then                 
                APEXQ=math.max(table.unpack(xsapk))
                    for i, v in ipairs(libx) do              
                        if libx[i].state=="Xa" and libx[i]["end"]-libx[i].start==APEXQ then              
                        xXx=xXx+1             
                       xAPEXx[xXx]=libx[i].start
                        print("√√ Split Apk Lib Found\n√√ "..libx[i].name) 
                        xLibRes=1                       
                        end
                    end
                end 
            end 
         
             if splitapk==0 and xLibRes~=1 then
             print("×× No split_config Lib Found")  
             xc=1 xt={} 
             libx=gg.getRangesList()
                 for i, v in ipairs(libx) do
                     if libx[i].state=="Xa" then 
                     xt[xc]=tonumber(libx[i]["end"]-libx[i].start) 
                     xc=xc+1
                     end
                 end
             APEXQ=math.max(table.unpack(xt))
                 for i, v in ipairs(libx) do              
                     if libx[i].state=="Xa" and libx[i]["end"]-libx[i].start==APEXQ then        
                     xXx=xXx+1       
                     xAPEXx[xXx]=libx[i].start
                     print("√√ math.max Xa Lib Found\n√√ "..libx[i].name) 
                     xLibRes=1   
                     end 
                 end
            end                        

            if xLibRes~=1 then
            print("×× Correct Lib Not Found ××\n×× Direct/Split Config/Xa Max ××")
            gg.setVisible(true) 
            os.exit()
             return
            end 
        end 
    end 
--███████████████████████
function arm()
o=tonumber(o) 
    for XxX=1,#(xAPEXx) do
    xdump=nil xdump={} 
    xdump[1]={} xdump[2]={}
    xdump[1].address=xAPEXx[XxX] + o
    xdump[1].flags=4
        if x==0 then xdump[1].value=xfalse end
        if x==1 then xdump[1].value=xtrue end
        if x~=0 and x~=1 then xdump[1].value=x end 
    xdump[2].address=xAPEXx[XxX]+(o+4)
    xdump[2].flags=4
    xdump[2].value=xEND 
    gg.setValues(xdump) 
    end 
end 
------------------------------------------------------------------------------  
function revert()
    for XxX=1,#(xAPEXx) do 
    REVERT=nil REVERT={} xRx=nil xRx=1 
        for i, v in ipairs(ORIG) do
            if tonumber(xAPEXx[XxX]+o)==ORIG[i].address then
            REVERT[xRx]={}
            REVERT[xRx].address=xAPEXx[XxX]+o
            REVERT[xRx].flags=4
            REVERT[xRx].value=ORIG[i].value
            xRx=xRx+1
            REVERT[xRx]={}
            REVERT[xRx].address=xAPEXx[XxX]+o+4
            REVERT[xRx].flags=4
            REVERT[xRx].value=ORIG[i+1].value
            gg.setValues(REVERT) 
            break
            end
        xRx=xRx+1
        end 
    end 
end 
--███████████████████████
if v.x64 then 
xtrue="h200080D2" -- MOV X0, #0x1
xfalse="h000080D2" -- MOV X0, #0x0 
xEND="hC0035FD6" -- RET
else 
xtrue="h0100A0E3" -- MOVW R0, #1 
xfalse="h0000A0E3" -- MOVW R0, #0 
xEND="h1EFF2FE1" -- BX LR 
end 
--███████████████████████

function clear()
gg.getResults(gg.getResultsCount())
gg.clearResults()
end
------------------------------------------------------------------------------  
function get()
gg.getResults(gg.getResultsCount())
end 
------------------------------------------------------------------------------  
function search()
gg.getResults(gg.getResultsCount())
gg.clearResults()
gg.searchNumber(x,t) 
end 
------------------------------------------------------------------------------  
function refine()
gg.refineNumber(x,t) 
end 
------------------------------------------------------------------------------  
function refinenot()
gg.refineNumber(x,t,false,gg.SIGN_NOT_EQUAL) 
end 
------------------------------------------------------------------------------  
function edit()
gg.getResults(gg.getResultsCount())
gg.editAll(x,t) 
end 
------------------------------------------------------------------------------  
function check()
E=nil E=gg.getResultsCount()
end 
------------------------------------------------------------------------------  
function offset()
o=tonumber(o) addoff=nil 
addoff=gg.getResults(gg.getResultsCount())
    for i, v in ipairs(addoff) do
        addoff[i].address=addoff[i].address+o
        addoff[i].flags=t
    end
gg.loadResults(addoff) 
end 
--███████████████████████
function cancel()
gg.toast("CANCELLED")
end 
------------------------------------------------------------------------------  
function wait()
gg.toast("Please Wait..") 
end 
------------------------------------------------------------------------------  
function error()
gg.toast("× ERROR ×")
gg.sleep(1000)
end 
------------------------------------------------------------------------------  
function exit()
gg.getListItems()
gg.clearList()
gg.getResults(gg.getResultsCount())
gg.clearResults()
gg.toast("[ EXIT ]")  
    if xhaX~=nil then 
        print(printx) 
        print(xhaX) 
        print(printx)  
    end 
gg.setVisible(true) 
os.exit()
return
end 
--███████████████████████
xrdy=gg.alert("SNAKE.IO\nThis Script is Auto Updating \nPleas Wait..","EXIT","START",xTAGx) 
    if xrdy==1 then exit() return end 
--███████████████████████
if v.x64 then off1=-16 typ=32 else off1=-8 typ=4 end 
gg.setRanges(gg.REGION_OTHER | gg.REGION_C_ALLOC) 
gmdx=gg.getRangesList("global-metadata.dat")
    if gmdx~=nil then        
    gmds=gg.getRangesList("global-metadata.dat")[1].start
    gmde=gg.getRangesList("global-metadata.dat")[1]["end"] 
    else gmds=nil gmde=nil
    end 

ATOTAL=0
for i = 1,100 do
    if A[i].class==nil then break end
    ATOTAL=ATOTAL+1
end 

ASTART=1 AEND=0 ATAB=1 ATABT=ATOTAL+1

    while ATAB<=ATOTAL do 
    ::AUTOSTART::
        if ATAB>ATOTAL then break goto FINISH end 
    gg.toast("Please Wait.. [ "..ATABT-ATAB.." ]") 
    A[ATAB].error=1 xmethodx=0
        if A[ATAB].class==0 then xmethodx=1 goto XMETHODX return end 
        ASTART=AEND+1   
        clear() gg.searchNumber(":"..tostring(A[ATAB].class),1,false,gg.SIGN_EQUAL,gmds, gmde) 
        check() 
            if E==0 then A[ATAB].error=1 ATAB=ATAB+1 
                if ATAB>ATOTAL then break end
            goto AUTOSTART return 
            end 
        xx=nil xx=gg.getResults(2) gg.getResults(gg.getResultsCount()) 
        x=xx[1].value..";"..xx[2].value.. "::2" refine() x=xx[1].value refine()
        o=-1 offset() x=0 refine() xx=#(A[ATAB].class) o=xx+1 offset() refine()
        check() 
            if E==0 then A[ATAB].error=1 ATAB=ATAB+1 
                if ATAB>ATOTAL then break end
            goto AUTOSTART return 
            end 
        o=-xx offset() xx=gg.getResults(gg.getResultsCount())
        clear()	i = 1
            while i <= #(xx) do
                ::NEXTMETHOD:: 
                xfrom=tonumber(xx[i].address)-1000 xto=xfrom+50000
                clear() gg.searchNumber(":"..A[ATAB].method,1,false, 536870912,xfrom, xto)
                xm=gg.getResults(2) gg.getResults(gg.getResultsCount())
                check() 
                    if E==0 then 
                        if i == #(xx) then ATAB=ATAB+1 goto AUTOSTART break return end	
                    i = i+1 
                    goto NEXTMETHOD return 
                    end 
                x=xm[1].value..";"..xm[2].value.."::2" refine()
                x=xm[1].value refine() 
                gg.searchPointer(0) xcount=gg.getResultsCount()
                xpoint=gg.getResults(xcount,nil, nil, nil, nil, nil, nil, nil,gg.POINTER_READ_ONLY)
                    if #(xpoint)==0 and i ==#(xx) then ATAB=ATAB+1 
                        if ATAB>ATOTAL then break end
                    goto AUTOSTART return 
                    end 
                    if #(xpoint) == 0 then i = i+1 goto NEXTMETHOD return end 
                clear() 
                    for xp=1,#(xpoint) do
                    xpoint[xp].address=xpoint[xp].address+off1
                    xpoint[xp].flags=typ
                    end
                gg.loadResults(xpoint) 
                xoff=gg.getResults(#(xpoint),nil, nil, nil, nil, nil, nil, nil, gg.POINTER_EXECUTABLE)
                    if #(xoff)==0 and i==#(xx) then ATAB=ATAB+1 
                        if ATAB>ATOTAL then break end
                    goto AUTOSTART return 
                    end 
                    if #(xoff) == 0 then i = i+1 goto NEXTMETHOD return end 
                    for xfin=1,#(xoff) do 
                        if gg.getTargetInfo().x64 then 
                            xadd=tonumber(xoff[xfin].value)  
                        else 
                            xadd=string.format("%X",tonumber(xoff[xfin].value)) 
                            xadd=string.sub(tostring(xadd), -8,-1)
                            xadd=tonumber("0x"..xadd) 
                        end                    
                    i = i +1 
                    gval=nil gval={} gval[1]={}
                    gval[1].address=xadd-xAPEXx[xXx] 
                    gval[1].flags=4
                    gval=gg.getValues(gval) 
                        if A[ATAB].value==gval[1].value then                            
                        A[ATAB].start=ASTART AEND=AEND+1
                        A[ATAB].finish=AEND 
                        A[ATAB].error=0 
                        clear() I[AEND]=xadd-xAPEXx[xXx]
                        end
                    end -- xfin 
            end -- for i 
        ::XMETHODX::
        if xmethodx==1 then 
                ASTART=AEND+1
                clear() 
                gg.searchNumber(":"..tostring(A[ATAB].method),1,false,gg.SIGN_EQUAL,gmds, gmde) 
                xm=gg.getResults(2) gg.getResults(gg.getResultsCount())
                check() 
                    if E==0 then ATAB=ATAB+1 
                        if ATAB>ATOTAL then break return end
                    goto AUTOSTART return 
                    end 
                x=xm[1].value..";"..xm[2].value.."::2" refine()
                x=xm[1].value refine() 
                gg.searchPointer(0) xcount=gg.getResultsCount()
                xpoint=gg.getResults(xcount,nil, nil, nil, nil, nil, nil, nil,gg.POINTER_READ_ONLY)
                    if #(xpoint)==0 then ATAB=ATAB+1 
                        if ATAB>ATOTAL then break return end
                    goto AUTOSTART return 
                    end 
                clear() 
                    for xp=1,#(xpoint) do
                    xpoint[xp].address=xpoint[xp].address+off1
                    xpoint[xp].flags=typ
                    end
                gg.loadResults(xpoint) 
                xoff=gg.getResults(#(xpoint),nil, nil, nil, nil, nil, nil, nil, gg.POINTER_EXECUTABLE)
                    if #(xoff)==0 then ATAB=ATAB+1 
                        if ATAB>ATOTAL then break return end
                    goto AUTOSTART return 
                    end 
                    for xfin=1,#(xoff) do 
                        if gg.getTargetInfo().x64 then 
                            xadd=tonumber(xoff[xfin].value)  
                        else 
                            xadd=string.format("%X",tonumber(xoff[xfin].value)) 
                            xadd=string.sub(tostring(xadd), -8,-1)
                            xadd=tonumber("0x"..xadd) 
                        end     
                    gval1=nil gval1={} gval1[1]={}
                        if gg.getTargetInfo().x64 then gvo=48 gvf=32 else gvo=24 gvf=4 end 
                    gval1[1].address=xoff[xfin].address+gvo
                    gval1[1].flags=gvf 
                    gval1=gg.getValues(gval1) 
                        if gg.getTargetInfo().x64 then 
                            gval=tonumber(gval1[1].value)  
                        else 
                            gval=string.format("%X",tonumber(gval1[1].value)) 
                            gval=string.sub(tostring(gval), -8,-1)
                            gval=tonumber("0x"..gval) 
                        end     
                    gval2=nil gval2={} gval2[1]={}
                    gval2[1].address=gval-4
                    gval2[1].flags=4
                    gval2=gg.getValues(gval2)
                        if A[ATAB].value==nil or A[ATAB].value==gval2[1].value then                            
                        A[ATAB].start=ASTART AEND=AEND+1
                        A[ATAB].finish=AEND 
                        A[ATAB].error=0 
                        clear() I[AEND]=xadd-xAPEXx[xXx]
                        end               
                    end -- xfin 
            end -- xmethodx 
        ATAB=ATAB+1
    end -- ATAB 

 -------------------------------
 ::FINISH:: 
 FUBAR=0
    for i = 1, ATOTAL do 
        if A[i].error~=0 then FUBAR=FUBAR+1 end
    end
    if FUBAR==ATOTAL  then 
        gg.alert("× AUTO UPDATE FAILURE ×","EXIT",nil, xTAGx)  
        exit() 
        return
    end 
    if FUBAR>=1 then gg.alert("× Auto Update Errors\nSome/All Hacks May Not Work","OK",nil, xTAGx) 
    else gg.alert("√ Auto Update Success","OK",nil, xTAGx) 
    end
    
--███████████████████████

function sort() 
SORT1={} apexsort=0
     for sorti = A[s].start, A[s].finish do
         apexsort=apexsort+1
         SORT1[apexsort] = I[sorti] 
     end 
SORT2={} table.sort(SORT1) 
    for sort2, v in pairs(SORT1) do
        SORT2[sort2]=v
    end 
r=SORT2[r] 
end

--███████████████████████
if xREV==1 then
xRx=1 ORIG={} xREV={} 
    for XxX=1,#(xAPEXx) do   
        for i, v in ipairs(I) do
        ORIG[xRx]={}
        ORIG[xRx].address=xAPEXx[XxX]+tonumber(I[i])
        ORIG[xRx].flags=4 
        xRx=xRx+1 
        ORIG[xRx]={}
        ORIG[xRx].address=xAPEXx[XxX]+tonumber(I[i])+4
        ORIG[xRx].flags=4 
        xRx=xRx+1
        end    
    end 
ORIG=gg.getValues(ORIG) 
end 
--███████████████████████
while true do
    if gg.isVisible() or apex==1 then
        gg.setVisible(false) apex=0
        menu() 
    end 
end 
