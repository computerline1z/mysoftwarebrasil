//****** AllWebMenus Libraries Version # 626 ******

// Copyright (c) Likno Software 2000-2006
// The present javascript code is property of Likno Software.
// This code can only be used inside Internet/Intranet web sites located on *web servers*, as the outcome of a licensed AllWebMenus application only. 
// This code *cannot* be used inside distributable implementations (such as demos, applications or CD-based webs), unless this implementation is licensed with an "AllWebMenus License for Distributed Applications". 
// Any unauthorized use, reverse-engineering, alteration, transmission, transformation, facsimile, or copying of any means (electronic or not) is strictly prohibited and will be prosecuted.
// ***Removal of the present copyright notice is strictly prohibited***

var awmhd=200,awmdst="",is60=(navigator.userAgent.indexOf("6.0")!=-1),n=null,awmcrm,awmcre,awmmo,awmso,awmctm=n,awmuc,awmud,awmctu,awmun,awmdid,awmsht="",awmsoo=0,awmNS6OffsetX,awmNS6OffsetY,awmKonOffsetX,awmKonOffsetY,awmRTLSupport,awmRelativeCorner,awmRightToLeftFrame,awmlsx=window.pageXOffset,awmlsy=window.pageYOffset,awmalt=["left","center","right"],awmplt=["absolute","relative"],awmvlt=["visible","hidden","inherit"],awmctlt=["default","pointer","crosshair","help","move","text","wait"],SI=["687474703A2F2F7777772E","6C696B6E6F","2E636F6D2F","4448544D4C","4A415641534352495054","44524F50444F574E","646F63756D656E742E6C696E6B73","4D454E55"],aL=eval(aue(SI[6])),mpi,awmwblt,isGecko1=parseFloat(navigator.userAgent.substring(navigator.userAgent.indexOf("rv:")+3,navigator.userAgent.indexOf("rv:")+6))>1,awmCoordId,vl,vt,vr,vb,awmHide2ID,isKonq=navigator.userAgent.indexOf('Konqueror')>-1;aCo();if (awmso>0){awmsoo=awmso+1;}else  {var awmsc=new Array();}var awmlssx=window.pageXOffset,awmlssy=window.pageYOffset,awmSelectedItem,awmSepr,awmHideID,awmCollID,awmUnloadFunction;if (!awmun) awmun=0;if (awmcre>=0); else  awmcre=0;var aRsF,aRsF1;if (aRsF1!=1){aRsF=window.onresize;aRsF1=1;}window.onresize=awmwr;function awmpopup(link,parms){window.open(link,"def",parms);}function awmhidediv(){var m=1;while (document.getElementById("awmflash"+m)){document.getElementById("awmflash"+m).style.visibility="hidden";m++;}}function awmshowdiv(){var m=1;while (document.getElementById("awmflash"+m)){document.getElementById("awmflash"+m).style.visibility="visible";m++;}}function aue(s){s2=s.split("");s1="";for(var i=0;i<s.length;i++){s1+="%"+s2[i]+s2[i+1];i++;}return unescape(s1);}function aLf(){for(var i=0;i<aL.length;i++){var aa=aL[i];if (aa.href.substr(0,20)+"/"==aue(SI[0]+SI[1]+SI[2])&&aLg(aa.innerHTML)) return 1;}}function aLg($){$$=$.toUpperCase();if ($$.search(aue(SI[7]))<6) return 0;for(var i=3;i<6;i++) if ($$.search(aue(SI[i]))>-1) return 1;}function awmiht (image,lgg){return "<img src='"+awmMenuPath+awmImagesPath+"/"+awmImagesColl[image*3]+"' width='"+awmImagesColl[image*3+1]+"' height='"+awmImagesColl[image*3+2]+"' align='"+((lgg)?lgg:"absmiddle")+"' alt=''>";}function awmatai (text,image,algn){if (text==null) text="";var i=0;while(text.charAt(0)==" "){i++;text=text.substring(1);}while(i>0){text="&nbsp;"+text;i--;}i=0;while(text.charAt(text.length-1)==" "){i++;text=text.substring(0,text.length-1);}while(i>0){text+="&nbsp;";i--;}var s1=(text!=""&&text!=null&&(algn==0||algn==2)&&image!=null)?"<br>":"";var s2=(image!=n)?awmiht (image):"";return "<nobr>"+((algn==0||algn==3)?s2+s1+text:text+s1+s2)+"</nobr>";}function awmCreateCSS (pos,vis,algnm,fgc,bgc,bgi,fnt,tdec,bs,bw,bc,pd,crs){if (awmso>=0) awmso++; else  awmso=0;var style={ id:"AWMST"+awmso,id2:"AWMSTTD"+awmso,id3:"AWMSTBG"+awmso,id3a:"AWMSTBGa"+awmso,id3b:"AWMSTBGb"+awmso,id3c:"AWMSTBGc"+awmso,id4:"AWMSTCBG"+awmso,pos:pos,vis:vis,algnm:algnm,fgc:fgc,bgc:bgc,bgi:bgi,fnt:fnt,tdec:tdec,bs:bs,bw:bw,bc:bc,zi:awmzindex,pd:pd,crs:crs};awmsht+="."+style.id+" {position:absolute; width:0px; visibility:"+awmvlt[vis]+"; "+"text-align:"+awmalt[algnm]+"; "+((fnt!=n)?"font:"+fnt+"; ":"")+((tdec!=n)?"text-decoration:"+tdec+"; ":"")+((fgc!=n)?"color:"+fgc+";":"")+"background-color:transparent;"+((bs!=n)?"border-style:"+bs+"; ":"")+((bw!=n)?"border-width:"+bw+"px; ":"")+((bc!=n)?"border-color:"+bc+"; ":"")+" cursor:"+awmctlt[crs]+";z-index:"+style.zi+"}";awmsht+="."+style.id2+" {border-style:none;border-width:0px;text-align:"+awmalt[algnm]+"; "+((fnt!=n)?"font:"+fnt+"; ":"")+((tdec!=n)?"text-decoration:"+tdec+"; ":"")+((fgc!=n)?"color:"+fgc+";":"")+"background-color:transparent;}";awmsht+="."+style.id3+" {position:absolute;left:0px;top:0px;"+((bs!=n)?"border-style:"+bs+"; ":"")+((bw!=n)?"border-width:"+bw+"px; ":"")+((bc!=n)?"border-color:"+bc+";":"")+((bgi!=n)?"background-image:url('"+awmMenuPath+awmImagesPath+"/"+awmImagesColl[bgi*3]+"');":"")+"background-color:"+((bgc!=n)?bgc+";":"transparent;")+"z-index:auto;}";awmsht+="."+style.id4+" {position:absolute; width:0px; visibility:"+awmvlt[vis]+";"+((bgi!=n)?"background-image:url('"+awmMenuPath+awmImagesPath+"/"+awmImagesColl[bgi*3]+"');":"")+"background-color:"+((bgc!=n)?bgc+";":"transparent;")+((bs!=n)?"border-style:"+bs+";":"")+((bw!=n)?"border-width:"+bw+"px;":"")+((bc!=n)?"border-color:"+bc+";":"")+"z-index:"+style.zi+"}";if (bgi!=n){awmsht+="."+style.id3a+" {background-image:url('"+awmMenuPath+awmImagesPath+"/"+awmImagesColl[bgi*3]+"')}";awmsht+="."+style.id3b+" {position:absolute;left:0px;top:0px;"+((bs!=n)?"border-style:"+bs+"; ":"")+((bw!=n)?"border-width:"+bw+"px; ":"")+((bc!=n)?"border-color:"+bc+";":"")+"background-color:"+((bgc!=n)?bgc+";":"transparent;")+"z-index:auto;}";awmsht+="."+style.id3c+" {position:absolute;left:0px;top:0px}";}awmsc[awmsc.length]=style;}function awmCreateMenu (cll,swn,swr,mh,ud,sa,mvb,dft,crn,dx,dy,ss,ct,cs,dbi,ew,eh,jcoo,jcoc,opc,elemRel,groupID,offX2,offY2){if (awmmo>=0) awmmo++; else  {awmm=new Array(); awmmo=0};var me={ ind:awmmo,nm:awmMenuName,cn:new Array(),fl:!awmsc[cs].pos,cll:cll,mvb:mvb,dft:dft,crn:crn,dx:(ct<2)?dx:0,dy:dy,ss:ss,sht:"<STYLE>"+awmsht+"</STYLE>",rep:0,mio:0,st:awmOptimize?2:3,submenusFrameOffset:awmSubmenusFrameOffset,selectedItem:(typeof(awmSelectedItem)=='undefined')?0:awmSelectedItem,opc:opc,offX:(isKonq?((awmKonOffsetX)?awmKonOffsetX:0):((awmNS6OffsetX)?awmNS6OffsetX:0)),offY:(isKonq?((awmKonOffsetY)?awmKonOffsetY:0):((awmNS6OffsetY)?awmNS6OffsetY:0)),offX2:(offX2)?offX2:0,offY2:(offY2)?offY2:0,rtls:(awmRTLSupport)?awmRTLSupport:0,rtlf:(awmRightToLeftFrame)?awmRightToLeftFrame:0,rc:(awmRelativeCorner)?awmRelativeCorner:0,elemRel:elemRel,addSubmenu:awmas,ght:awmmght,whtd:awmmwhttd,buildMenu:awmbmm,cm:awmmcm};awmNS6OffsetX=awmNS6OffsetY=awmKonOffsetX=awmKonOffsetY=awmRTLSupport=awmRelativeCorner=awmRightToLeftFrame=0;me.pm=me;me.addSubmenu(ct,swn,swr,mh,ud,sa,1,cs,dbi,ew,eh,jcoo,jcoc,opc,0,groupID);me.cn[0].pi=null;if (mvb) document.onmousemove=awmoimm;awmm[awmmo]=me;awmsht="";return me.cn[0];}function awmas (ct,swn,swr,shw,ud,sa,od,cs,dbi,ew,eh,jcoo,jcoc,opc,alO,groupID){cnt={ id:"AWMEL"+(awmcre++),it:new Array(),ct:ct,swn:swn,swr:swr,shw:(shw>2)?2:shw,ud:ud,sa:sa,od:od,cs:awmsc[cs+awmsoo],dbi:dbi,ew:ew,eh:eh,jcoo:jcoo,jcoc:jcoc,pi:this,pm:this.pm,pm:this.pm,siw:0,wtd:false,argd:0,ft:0,mio:0,hsid:null,uid:null,dox:0,doy:0,opc:opc,alO:alO,ccc:0,groupID:"gr"+groupID,addItem:awmai,addItemWithImages:awmaiwi,show:awmcs,fe:awmcfe,arr:awmca,ght:awmcght,pc:awmpc,unf:awmcu,hdt:awmchdt,onmouseover:awmocmo,onmouseout:awmocmot};this.sm=cnt;cnt.pm.cn[cnt.ind=cnt.pm.cn.length]=cnt;cnt.cd=(cnt.ind==0&&cnt.pm.cll==0)?0:1;return cnt;}function awmai (st0,st1,st2,in0,in1,in2,tt,sbt,jc0,jc1,jc2,url,tf,mnW,mnH,iHF,hSp,sWt,sC1,sC2){var itm={ id:"AWMEL"+(awmcre++),style:[(st0==n)?n:awmsc[st0+awmsoo],(st1==n)?n:awmsc[st1+awmsoo],(st2==n)?n:awmsc[st2+awmsoo]],inm:[in0,(in1==n)?in0:in1,(in2==n)?in0:in2],ii:[n,n,n],ia:[n,n,n],hsi:[n,n,n],rI:[n,n,n],lI:[n,n,n],bIP:[0,0,0],tt:tt,sbt:sbt,jc:[jc0,jc1,jc2],tf:tf,top:0,left:0,layer:[n,n,n],bglayer:[n,n,n],bglayer2:[n,n,n],ps:this,pm:this.pm,sm:null,mnH:(mnH)?mnH:0,mnW:(mnW)?mnW:0,iHF:iHF,hSp:hSp,sWt:(hSp)?((awmSepr)?awmSepr[hSp*4]:sWt):"",sC1:(hSp)?((awmSepr)?awmSepr[hSp*4+1]:sC1):"",sC2:(hSp)?((awmSepr)?awmSepr[hSp*4+2]:sC2):"",sMg:(hSp)?((awmSepr)?awmSepr[hSp*4+3]:3):0,sMs:1,ght:awmight,shst:awmiss,addSubmenu:awmas,onmouseover:awmoimo,onmouseout:awmoimot,onmousedown:awmoimd,onmouseup:awmoimu};if (itm.jc[2]!=n){if (itm.jc[2].indexOf("window.open")==0){var xyz1=itm.jc[2].substring(0,itm.jc[2].indexOf(";")+1);var xyz2=itm.jc[2].substring(xyz1.length);var xyz=xyz1.split("'");itm.tf="new";url=xyz[1];itm.params=xyz[5];itm.jc[2]=((xyz1.length)?xyz2:null);}}if (url!=null){if ((url.search("://")<0)&&(url.substring(0,7)!="mailto:")&&(url.substring(0,1)!="/")) url=awmMenuPath+"/"+url;}itm.url=url;if (hSp>0&&itm.sC2) itm.sMs=0;this.it[itm.ind=this.it.length]=itm;return itm;}function awmaiwi (st0,st1,st2,in0,in1,in2,tt,ii0,ii1,ii2,ia0,ia1,ia2,hsi0,hsi1,hsi2,sbt,jc0,jc1,jc2,url,tf,mnW,mnH,iHF,lI0,lI1,lI2,rI0,rI1,rI2,bIP0,bIP1,bIP2,hSp,sWt,sC1,sC2){var itm=this.addItem (st0,st1,st2,in0,in1,in2,tt,sbt,jc0,jc1,jc2,url,tf,mnW,mnH,iHF,hSp,sWt,sC1,sC2);itm.ii=[ii0,ii1,ii2];itm.ia=[ia0,ia1,ia2];itm.hsi=[hsi0,hsi1,hsi2];itm.lI=[lI0,lI1,lI2];itm.rI=[rI0,rI1,rI2];itm.bIP=[bIP0,bIP1,bIP2];this.siw=Math.max(this.siw,Math.max(((hsi0!=n)?awmImagesColl[hsi0*3+1]:0),Math.max(((hsi1!=n)?awmImagesColl[hsi1*3+1]:0),((hsi2!=n)?awmImagesColl[hsi2*3+1]:0))));return itm;}function awmmght(cnt){for (var cno=0; cno<this.cn.length; cno++)this.cn[cno].ght();}function awmcght(){var hct="";if (this.pm.fl||this.pi!=null) hct+="left:-3000px;top:-3000px;"; if (isGecko1>0) hct+="-moz-opacity:"+(this.opc/100)+";";if (hct!="") hct=" style='"+hct+"'";this.htx="<div id='"+this.id+"' class='"+this.cs.id4+"'"+hct+" onMouseOver='this.prc.onmouseover();' onMouseOut='this.prc.onmouseout();'>";for (p=0; p<this.it.length; p++){this.htx+=this.it[p].ght();}this.htx+="<span style='font-size:0'>&nbsp;</span></div>";return this.htx;}function awmight(){var htx="";for (var q=0; q<this.pm.st; q++){var ist=this.style[q];htx+="<table id='"+this.id+"_"+q+"' class='"+this.style[q].id+"' style='left:-3000' width='100%' border='0' cellpadding='0' cellspacing='0'><tr><td class='"+this.style[q].id2+"' valign='middle' style='padding:"+ist.pd+"px;"+((this.ps.siw>0&&this.iHF==2)?"padding-right:0px;":"")+((ist.fnt!=n)?"font:"+ist.fnt+"; ":"")+((ist.tdec!=n)?"text-decoration:"+ist.tdec+"; ":"")+((ist.fgc!=n)?"color:"+ist.fgc+";":"")+"'>"+awmatai(this.inm[q],this.ii[q],this.ia[q])+"</td>";if (this.ps.siw>0&&this.iHF==2){htx+="<td class='"+this.style[q].id2+"' style='padding:"+ist.pd+"px;padding-left:0px;' width='"+this.ps.siw+"'>";if (this.hsi[q]!=n) htx+=awmiht(this.hsi[q]);else  htx+="<span style='font-size:0;'>&nbsp;</span>";htx+="</td>";}htx+="</tr></table>";}for (var q=0; q<this.pm.st; q++){htx+="<table class='"+((this.bIP[q])?this.style[q].id3b:this.style[q].id3)+"' style='left:-3000px;' id='"+this.id+"_"+q+"a' border='0' cellpadding='0' cellspacing='0'><tr>";if (this.lI[q]!=n){htx+="<td width='100%'>"+awmiht(this.lI[q],"top")+"</td>";}if (this.rI[q]!=n){if (this.lI[q]==n) htx+="<td"+((this.bIP[q])?" class='"+this.style[q].id3a+"'":"")+" width=100%></td>";htx+="<td width='"+awmImagesColl[this.rI[q]*3+1]+"'>"+awmiht(this.rI[q],"top")+"</td>";}if (this.rI[q]==n&&this.lI[q]==n)htx+="<td"+((this.bIP[q])?" class='"+this.style[q].id3a+"'":"")+" style='background-color:transparent;'><img src='"+awmMenuPath+awmLibraryPath+"/dot.gif' border='0' width='1' height='1'></td>";htx+="</tr></table>";}for (var q=0; q<this.pm.st; q++){if (this.lI[q]!=n&&this.bIP[q]){htx+="<table class='"+this.style[q].id3c+"' id='"+this.id+"_"+q+"b' border='0' width=1 height=1 cellpadding='0' cellspacing='0'><tr><td"+((this.bIP[q])?" class='"+this.style[q].id3a+"'":"")+"><img src='"+awmMenuPath+awmLibraryPath+"/dot.gif' border='0' width='1' height='1'></td></tr></table>";}}if (this.hSp){if (this.ps.ct==0){htx+="<table id='"+this.id+"_5' style='position:absolute' width='100%' height='"+parseInt(this.sMg*2+2-this.sMs+this.ps.dbi)+"' border='0' cellpadding='0' cellspacing='0'><tr><td><center><table border='0' cellpadding='0' cellspacing='0' width='"+this.sWt+"%'><tr><td height='"+parseInt(1*this.sMg+1*this.ps.dbi)+"'></td></tr><tr><td height='1' bgcolor='"+this.sC1+"'></td></tr><tr><td height='1'"+((this.sC2)?" bgcolor='"+this.sC2+"'":"")+"></td></tr><tr><td height='"+this.sMg+"'></td></tr></table></center></td></tr></table>";} else  {htx+="<table id='"+this.id+"_5' style='position:absolute' height='100%' width='"+parseInt(this.sMg*2+2-this.sMs+this.ps.dbi)+"' border='0' cellpadding='0' cellspacing='0'><tr height='"+parseInt((100-this.sWt)/2)+"%' width='0%'><td width='0%'></td></tr><tr height='"+this.sWt+"%'><td width='"+parseInt(1*this.sMg+1*this.ps.dbi)+"'></td><td width='1' bgcolor='"+this.sC1+"'></td><td width='1'"+((this.sC2)?" bgcolor="+this.sC2:"")+"></td><td width='"+this.sMg+"'></td></tr><tr height="+parseInt((100-this.sWt)/2)+"%><td></td></tr></table>";}}if(this.url!=null&&this.tf=="new"){if (this.params)htx+="<a href='javascript:awmpopup(\""+this.url+"\",\""+this.params+"\");'>";else htx+="<a href='"+this.url+"' target='_blank'>";}htx+="<img border='0' id='"+this.id+"_4' title='"+this.tt+"' style='position:absolute; cursor:"+awmctlt[this.style[0].crs]+"; z-index:"+(awmzindex+1)+";' src='"+awmMenuPath+awmLibraryPath+"/dot.gif' onMouseOver='this.pi.onmouseover();return true' onMouseOut='this.pi.onmouseout();' onMouseDown='this.pi.onmousedown();' alt=''>";if(this.url!=null&&this.tf=="new") htx+="</a>";return htx;}function awmmwhttd(){document.write(this.sht);for (var i=0; i<this.cn.length; i++) document.write(this.cn[i].htx);}function awmcfe(){if (this.ft) return;this.layer=document.getElementById(this.id);this.layer.prc=this;var var4=0,var9=0;var cnt=0;for (var p=0; p<this.it.length; p++){cnt+=this.pm.st*2+1;var4=(this.it[p].hSp)?1:0;cnt+=var4;var9=0;for (var q=0; q<this.pm.st; q++){var9+=((this.it[p].lI[q]!=n&&this.it[p].bIP[q])?1:0);}cnt+=var9;for (var q=0; q<this.pm.st; q++){this.it[p].layer[q]=this.layer.childNodes[cnt-this.pm.st*2-1+q-var4-var9];this.it[p].layer[q].pi=this.it[p];this.it[p].bglayer[q]=this.layer.childNodes[cnt-this.pm.st-1+q-var4-var9];if (this.it[p].lI[q]!=n&&this.it[p].bIP[q]) this.it[p].bglayer2[q]=document.getElementById(this.it[p].id+"_"+q+"b");}this.it[p].elr=this.layer.childNodes[cnt-1];if (this.it[p].url!=null&&this.it[p].tf=="new") this.it[p].elr=this.it[p].elr.childNodes[0];this.it[p].elr.pi=this.it[p];this.it[p].elr.onmouseup=awmoimu;this.it[p].elr.onmousedown=awmoimd;if (this.it[p].iHF==1) this.it[p].elr.onmousemove=awmoimm;if (var4) this.it[p].splayer=this.layer.childNodes[cnt-2];}this.ft=1;}function awmca(){if (this.argd) return;var w, h, iw, ih, mwt=0, mht=0, nl=0, nt=0;var wts=new Array(), hts=new Array();for (var p=0; p<this.it.length; p++){iw=this.it[p].mnW+((this.it[p].style[0].bs=="none")?0:2*this.it[p].style[0].bw);ih=this.it[p].mnH+((this.it[p].style[0].bs=="none")?0:2*this.it[p].style[0].bw);for (var q=this.pm.st-1; q>=0; q--){iw=Math.max(iw,this.it[p].layer[q].offsetWidth);ih=Math.max(ih,this.it[p].layer[q].offsetHeight);iw=Math.max(iw,this.it[p].bglayer[q].offsetWidth);ih=Math.max(ih,this.it[p].bglayer[q].offsetHeight);mwt=Math.max(iw,mwt);mht=Math.max(ih,mht);}wts[p]=iw;hts[p]=ih;}for (var p=0; p<this.it.length; p++){w=(this.ew)?mwt:wts[p];h=(this.eh)?mht:hts[p];for (var q=0; q<this.pm.st; q++){this.it[p].layer[q].setAttribute("style",((q>0)?"visibility:hidden; ":"")+"left:"+(this.it[p].left=nl)+"px; top:"+(this.it[p].top=nt)+"px; width:"+(this.it[p].width=w)+"px; height:"+(this.it[p].height=h)+"px;");this.it[p].bglayer[q].setAttribute("style",((q>0)?"visibility:hidden; ":"")+"left:"+(this.it[p].left=nl)+"px; top:"+(this.it[p].top=nt)+"px; width:"+(this.it[p].width=w)+"px; height:"+(this.it[p].height=h)+"px;");while(!this.it[p].layer[q].offsetWidth>0);while(!this.it[p].bglayer[q].offsetWidth>0);if (this.it[p].bglayer2[q]){this.it[p].bglayer2[q].setAttribute("style",((q>0)?"visibility:hidden; ":"")+"left:"+(nl+awmImagesColl[this.it[p].lI[q]*3+1])+"px; top:"+(nt+this.it[p].style[q].bw)+"px; width:"+(w-awmImagesColl[this.it[p].lI[q]*3+1]-((this.it[p].rI[q])?awmImagesColl[this.it[p].rI[q]*3+1]:0))+"px; height:"+(h-2*this.it[p].style[q].bw)+"px;");if (((this.it[p].lI[q]!=n)?awmImagesColl[this.it[p].lI[q]*3+1]:0)+((this.it[p].rI[q]!=n)?awmImagesColl[this.it[p].rI[q]*3+1]:0)>=parseFloat(this.it[p].bglayer[q].style.width.replace(/px/, ""))) this.it[p].bglayer2[q].style.visibility="hidden";}}var els=this.it[p].elr.style;els.left=nl+"px";els.top=nt+"px";els.width=w+"px";els.height=h+"px";if (this.ct==0) nt+=h+this.dbi; else  nl+=w+this.dbi;if (this.it[p].hSp){if (this.ct==0){this.it[p].splayer.style.top=(nt-this.dbi)+"px";this.it[p].splayer.style.left="0px";nt+=parseInt(this.it[p].sMg*2+2-this.it[p].sMs+this.dbi);} else  {this.it[p].splayer.style.top="0px";this.it[p].splayer.style.left=(nl-this.dbi)+"px";nl+=parseInt(this.it[p].sMg*2+2-this.it[p].sMs+this.dbi);}}}if (this.ct==0){this.layer.style.width=mwt+"px";this.layer.style.height=(nt-this.dbi)+"px";} else  {this.layer.style.width=(nl-this.dbi)+"px";this.layer.style.height=mht+"px";}if (this.ct==2) this.layer.style.width=(window.innerWidth-2*this.cs.bw)+"px";this.argd=1;}function awmcs(sf,x,y){if (sf){if (mpi||aLf()){this.cd=0;this.fe();this.arr();if (arguments.length==1) this.pc();else  {this.left=x;this.layer.style.left=x+"px";this.top=y;this.layer.style.top=y+"px";}this.layer.style.visibility="visible";if (this.shw>0&&!awmun) this.unf();if (this.jcoo!=null) eval("setTimeout(\""+this.jcoo+"\",10);");var tmpHead=parseInt(((this.it[0].iHF==2)?1:0));if (this.ind==0) if (this.pm.selectedItem>0) this.it[this.pm.selectedItem-tmpHead].shst(2);}} else  {if (!this.ft||this.mio||this.cd) return;this.layer.style.left="-3000px";this.layer.style.top="-3000px";var tmpHead=0;if (this.pi) tmpHead=parseInt(((this.pi.ps.it[0].iHF==2)?1:0));if (this.pi!=null) if (this.pm.selectedItem<1){this.pi.shst(0);}else  {if (this.pi.ind==(this.pm.selectedItem-tmpHead)&&this.pi.ps.ind==0){this.pi.shst(2);} else  {this.pi.shst(0);}}if (this.jcoc!=null&&! this.cd) eval("setTimeout(\""+this.jcoc+"\",10);");this.cd=1;}}function awmchdt(flg){var p;for (p=0; p<this.it.length; p++){if (this.it[p].sm!=n) this.it[p].sm.hdt(0);}if (arguments.length==1&&!this.cd) this.show(0);}function awmmcm(flg){if (this.mio&&!flg) return;for (var cno=(this.cll&&awmctm==null)?0:1; cno<this.cn.length; cno++){if (flg){this.cn[cno].mio=0;}this.cn[cno].show(0);}if (awmSubmenusFrame!=""){for (p=0; p<this.cn[0].it.length; p++){if (this.cn[0].it[p].sm!=n) this.cn[0].it[p].sm.pm.cm(flg);}}}function awmodmd(){for (mno=0; mno<awmm.length; mno++){awmm[mno].cm(0);}}function awmocmo(){clearTimeout(awmHide2ID);this.mio=1;this.pm.mio=1;if (this.pi!=null) this.pi.shst((this.swn==0)?1:2);if (this.ind>0) clearTimeout(this.pi.ps.hsid);clearTimeout(this.hsid);}function awmocmot(){this.mio=0;this.pm.mio=0;if (!this.pm.ss){clearTimeout(awmCollID);awmCollID=setTimeout("awmm["+this.pm.ind+"].cm(0);",awmhd);if (awmSubmenusFrame==""){this.hsid=setTimeout("awmm["+this.pm.ind+"].cn["+this.ind+"].hdt("+((this.ind==0)?"":"0")+");",awmhd);awmHideID=this.hsid;}}}function awmiss(sts){if (sts==2&&this.pm.st==2) sts=1;if (isKonq){this.layer[0].style.visibility=this.bglayer[0].style.visibility=((sts==0)?"visible":"hidden");if (this.bglayer2[0]) this.bglayer2[0].style.visibility=this.bglayer[0].style.visibility;for (q=1; q<this.pm.st; q++){if (sts==q){this.layer[q].style.left=this.bglayer[q].style.left=this.layer[0].style.left;this.layer[q].style.top=this.bglayer[q].style.top=this.layer[0].style.top;this.layer[q].style.width=this.bglayer[q].style.width=this.layer[0].style.width;this.layer[q].style.height=this.bglayer[q].style.height=this.layer[0].style.height;this.layer[q].style.visibility=this.bglayer[q].style.visibility="visible";} else  {this.layer[q].style.left=this.bglayer[q].style.left="-3000px";}}} else  {for (q=0; q<this.pm.st; q++){if (this.layer[q]) this.layer[q].style.visibility=this.bglayer[q].style.visibility=(q==sts)?"visible":"hidden";if (this.bglayer2[q]){this.bglayer2[q].style.visibility=this.bglayer[q].style.visibility;if (((this.lI[q]!=n)?awmImagesColl[this.lI[q]*3+1]:0)+((this.rI[q]!=n)?awmImagesColl[this.rI[q]*3+1]:0)>=parseFloat(this.bglayer[q].style.width.replace(/px/, ""))) this.bglayer2[q].style.visibility="hidden";}}}}function awmoimo(){this.shst(1);if (this.ii[1]!=null){this.layer[1].childNodes[0].childNodes[0].childNodes[0].childNodes[0].childNodes[0].src=this.layer[1].childNodes[0].childNodes[0].childNodes[0].childNodes[0].childNodes[0].src;}if (awmctm!=null) return;if (awmSubmenusFrame!=""){eval ("var frex=parent."+awmSubmenusFrame);if (frex){eval("this.sm=parent."+awmSubmenusFrame+".awm"+this.pm.nm+"_sub_"+(this.ind+1));if (this.sm){this.sm.pi=this;this.sm.pm.ss=this.pm.ss;} else  this.sm=null;}}this.ps.mio=1;this.pm.mio=1;this.ps.hdt();this.shst(1);window.status=this.sbt;if (this.sm!=n) if (!this.sm.swn){clearTimeout(this.sm.hsid);this.sm.show(1);}if (this.jc[1]!=null) eval("setTimeout(\""+this.jc[1]+"\",10);");}function awmoimot(){if (this.sm==null||(this.sm!=null&&this.sm.cd)){if (this.pm.selectedItem<1){this.shst(0);}else  {var tmpHead=parseInt(((this.ps.it[0].iHF==2)?1:0));if (this.ps.ind==0&&(this.ind==this.pm.selectedItem-tmpHead)){this.shst(2);} else  {this.shst(0);}}}if (!this.pm.ss){if (this.sm!=n&&awmSubmenusFrame==""){this.sm.hsid=setTimeout("awmm["+this.pm.ind+"].cn["+this.sm.ind+"].hdt(0);",awmhd);awmHideID=this.sm.hsid;}}window.status=awmdst;if (this.jc[0]!=null) eval("setTimeout(\""+this.jc[0]+"\",10);");}function awmoimd(e){this.pi.shst(2);if (this.pi.iHF==1){this.pi.pm.mio=0;awmctm=this.pi.ps;this.pi.pm.cm(0);this.pi.pm.mio=1;awmmox=e.clientX-awmctm.layer.offsetLeft;awmmoy=e.clientY-awmctm.layer.offsetTop;awmml=awmctm.layer.offsetLeft-awmctm.layer.style.left;awmmt=awmctm.layer.offsetTop-awmctm.layer.style.top;} else  {if (this.pi.sm!=n) if (this.pi.sm.swn){clearTimeout(this.pi.sm.hsid);this.pi.sm.show(1);}if (this.pi.jc[2]!=null){if (this.pi.jc[2].indexOf("this.")!=-1){eval(this.pi.jc[2]);} else  {eval("setTimeout(\""+this.pi.jc[2]+"\",10);");}}if (this.pi.url!=null){this.awmoimot;if(e.shiftKey)setTimeout("window.open('"+this.pi.url+"');",50);else  if (this.pi.tf==null) setTimeout("eval(window.location='"+this.pi.url+"')",100);else  if (this.pi.tf=="new") ; else  if (this.pi.tf=="top") window.top.location=this.pi.url;else  eval("parent."+this.pi.tf+".location=this.pi.url");}}}function awmoimu(e){if (this.pi.iHF==1){if (awmctm!=null){awmctm.pm.rep=1;awmctm=null;}} else  {this.pi.shst(1);if (this.pi.sm==n&&!this.pi.pm.ss){this.pi.pm.cm(1);}}}function awmoimm(e){if (awmctm!=null){awmctm.pm.rep=1;awmctm.left=e.clientX-awmmox;awmctm.layer.style.left=awmctm.left+"px";awmctm.top=e.clientY-awmmoy;awmctm.layer.style.top=awmctm.top+"px";}}function awmpc(flg){this.fe();this.arr();var me=this.pm;if (this.pi==null){var tmpEl=document.getElementById("awmAnchor-"+this.pm.nm);var x=this.pm.offX,y=this.pm.offY;if (tmpEl){x+=tmpEl.offsetLeft+this.pm.offX2;y+=tmpEl.offsetTop+this.pm.offY2;z=tmpEl.offsetParent;while (z!=null){x+=z.offsetLeft;y+=z.offsetTop;z=z.offsetParent;}var crn=me.rc;if (crn==4||crn==6||crn==8) y-=this.layer.offsetHeight/2;if (crn==5||crn==7||crn==8) x-=this.layer.offsetWidth/2;if (crn==1||crn==2||crn==6) x-=this.layer.offsetWidth;if (crn==2||crn==3||crn==7) y-=this.layer.offsetHeight;if (tmpEl.tagName!="SPAN"){crn=me.crn;if (crn==1||crn==2||crn==6) x+=tmpEl.offsetWidth;if (crn==2||crn==3||crn==7) y+=tmpEl.offsetHeight;if (crn==5||crn==7||crn==8) x+=tmpEl.offsetWidth/2;if (crn==4||crn==6||crn==8) y+=tmpEl.offsetHeight/2;}} else  {var crn=me.crn;x+=(crn==0||crn==4||crn==3)?(me.dx):((crn==1||crn==6||crn==2)?vr-vl-this.layer.offsetWidth-me.dx:(vr-vl-this.layer.offsetWidth)/2);y+=(crn==0||crn==5||crn==1)?(me.dy):((crn==3||crn==7||crn==2)?vb-vt-this.layer.offsetHeight-me.dy:(vb-vt-this.layer.offsetHeight)/2);}if ((this.left!=x+awmlssx||this.top!=y+awmlssy)&&!this.pm.rep){x+=(this.pm.dft==1||this.pm.dft==3||this.pm.dft==4||this.pm.dft==6)?vl:0;y+=(this.pm.dft==1||this.pm.dft==2||this.pm.dft==4||this.pm.dft==5)?vt:0;this.left=x;this.layer.style.left=x+"px";this.top=y;this.layer.style.top=y+"px";return;if (vb-this.top<21){this.top-=21-(vb-this.top);this.layer.style.top=this.top+"px";}}} else  {if(!this.pi.ps) return;if(flg) return;var psl=this.pi.ps.layer;var pil=this.pi.layer[0];var parentBorder=(is60)?this.pi.ps.cs.bw:0;this.lod=this.od;if (this.lod==0){if (this.pi.ps.ct==0){if (this.pm.rtls)this.lod=((psl.offsetLeft-this.swr-this.layer.offsetWidth>vl)?2:1);else this.lod=((psl.offsetLeft+psl.offsetWidth+this.swr+this.layer.offsetWidth>vr)&&(psl.offsetLeft-this.swr-this.layer.offsetWidth>vl))?2:1;} else  {this.lod=((psl.offsetTop+psl.offsetHeight+this.swr+this.layer.offsetHeight>vb)&&(psl.offsetTop-this.swr-this.layer.offsetHeight>vl))?2:1;}}if (this.pi.ps.ct==0){this.left=(this.lod==1)?((this.pm.submenusFrameOffset>-9000&&this.ind==0)?vl:psl.offsetLeft+psl.offsetWidth)+this.swr-parentBorder:psl.offsetLeft-this.layer.offsetWidth-this.swr-parentBorder;if (this.pm.submenusFrameOffset>-9000&&this.ind==0&&((this.pm.rtls&&this.pm.rtlf!=2)||this.pm.rtlf==1)){this.left=window.innerWidth-this.layer.offsetWidth-this.swr-parentBorder;}this.layer.style.left=this.left+"px";this.top=((this.sa==0)?((is60)?0:psl.offsetTop+this.pi.ps.cs.bw)+pil.offsetTop:((this.sa==1)?psl.offsetTop-parentBorder:((this.sa==2)?psl.offsetTop+psl.offsetHeight-this.layer.offsetHeight-parentBorder:psl.offsetTop-parentBorder+(psl.offsetHeight-this.layer.offsetHeight)/2)));this.top+=((this.pm.submenusFrameOffset>-9000&&this.ind==0)?this.pm.submenusFrameOffset-this.pi.ps.doy+vt:0)+this.alO;this.layer.style.top=this.top+"px";if (this.top+this.layer.offsetHeight>vb) this.layer.style.top=this.top=vb-this.layer.offsetHeight;} else {this.left=(this.sa==0)?(((is60)?0:psl.offsetLeft+this.pi.ps.cs.bw)+pil.offsetLeft+((this.pm.rtls)?(pil.offsetWidth-this.layer.offsetWidth):0)):((this.sa==1)?psl.offsetLeft-parentBorder:((this.sa==2)?psl.offsetLeft+psl.offsetWidth-this.layer.offsetWidth-parentBorder:psl.offsetLeft-parentBorder+(psl.offsetWidth-this.layer.offsetWidth)/2));this.left+=((this.pm.submenusFrameOffset>-9000&&this.ind==0)?this.pm.submenusFrameOffset-this.pi.ps.dox+vl:0)+this.alO;this.layer.style.left=this.left+"px";if (this.left+this.layer.offsetWidth>vr) this.layer.style.left=this.left=vr-this.layer.offsetWidth;this.top=(this.lod==1)?((this.pm.submenusFrameOffset>-9000&&this.ind==0)?vt:psl.offsetTop+psl.offsetHeight)+this.swr-parentBorder:psl.offsetTop-this.layer.offsetHeight-this.swr-parentBorder;this.layer.style.top=this.top+"px";}}}function awmu(){if (awmuc>10||awmctu.shw==2){awmctu.layer.style.visibility="hidden";awmctu.layer.style.visibility="visible";}if (awmuc>10){clearInterval (awmctu.uid);awmun=0;return;}var layer=awmctu.layer;switch (awmud){case 1: if (awmctu.shw==1){layer.style.left=(awmctu.left-layer.offsetWidth*(10-awmuc)/10)+"px";layer.style.clip="rect(0px,"+layer.offsetWidth+"px,"+layer.offsetHeight+"px,"+Math.round(layer.offsetWidth*(10-awmuc)/10)+"px)";} else  layer.style.clip="rect(0px,"+Math.round(layer.offsetWidth*awmuc/10)+"px,"+layer.offsetHeight+"px,0px)";break;case 2: if (awmctu.shw==1){layer.style.left=(awmctu.left+layer.offsetWidth*(10-awmuc)/10)+"px";layer.style.clip="rect(0px,"+Math.round(layer.offsetWidth*awmuc/10)+"px,"+layer.offsetHeight+"px,0px)";} else  layer.style.clip="rect(0px,"+layer.offsetWidth+"px,"+layer.offsetHeight+"px,"+layer.offsetWidth*(10-awmuc)/10+"px)";break;case 3: if (awmctu.shw==1){layer.style.top=(awmctu.top-layer.offsetHeight*(10-awmuc)/10)+"px";layer.style.clip="rect("+Math.round(layer.offsetHeight*(10-awmuc)/10)+"px,"+layer.offsetWidth+"px,"+layer.offsetHeight+"px,0px)";} else  layer.style.clip="rect(0px,"+layer.offsetWidth+"px,"+Math.round(layer.offsetHeight*awmuc/10)+"px,0px)";break;case 4: if (awmctu.shw==1){layer.style.top=(awmctu.top+layer.offsetHeight*(10-awmuc)/10)+"px";layer.style.clip="rect(0px,"+layer.offsetWidth+"px,"+Math.round(layer.offsetHeight*awmuc/10)+"px,0px)";} else  layer.style.clip="rect("+Math.round(layer.offsetHeight*(10-awmuc)/10)+"px,"+layer.offsetWidth+"px,"+layer.offsetHeight+"px,0px)";break;case 5: if (awmctu.shw==1){layer.style.left=(awmctu.left-layer.offsetWidth*(10-awmuc)/10)+"px";layer.style.top=(awmctu.top-layer.offsetHeight*(10-awmuc)/10)+"px";layer.style.clip="rect("+Math.round(layer.offsetHeight*(10-awmuc)/10)+"px,"+layer.offsetWidth+"px,"+layer.offsetHeight+"px,"+Math.round(layer.offsetWidth*(10-awmuc)/10)+"px)";} else  layer.style.clip="rect(0px,"+Math.round(layer.offsetWidth*awmuc/10)+"px,"+Math.round(layer.offsetHeight*awmuc/10)+"px,0px)";break;case 6: if (awmctu.shw==1){layer.style.left=(awmctu.left-layer.offsetWidth*(10-awmuc)/10)+"px";layer.style.top=(awmctu.top+layer.offsetHeight*(10-awmuc)/10)+"px";layer.style.clip="rect(0px,"+layer.offsetWidth+"px,"+Math.round(layer.offsetHeight*awmuc/10)+"px,"+Math.round(layer.offsetWidth*(10-awmuc)/10)+"px)";} else  layer.style.clip="rect("+Math.round(layer.offsetHeight*(10-awmuc)/10)+"px,"+Math.round(layer.offsetWidth*awmuc/10)+"px,"+layer.offsetHeight+"px,0px)";break;case 7: if (awmctu.shw==1){layer.style.left=(awmctu.left+layer.offsetWidth*(10-awmuc)/10)+"px";layer.style.top=(awmctu.top-layer.offsetHeight*(10-awmuc)/10)+"px";layer.style.clip="rect("+Math.round(layer.offsetHeight*(10-awmuc)/10)+"px,"+Math.round(layer.offsetWidth*awmuc/10)+"px,"+layer.offsetHeight+"px,"+layer.offsetWidth*(10-awmuc)/10+"px)";} else  layer.style.clip="rect(0px,"+layer.offsetWidth+"px,"+Math.round(layer.offsetHeight*awmuc/10)+"px,"+layer.offsetWidth*(10-awmuc)/10+"px)";break;case 8: if (awmctu.shw==1){layer.style.left=(awmctu.left+layer.offsetWidth*(10-awmuc)/10)+"px";layer.style.top=(awmctu.top+layer.offsetHeight*(10-awmuc)/10)+"px";layer.style.clip="rect(0px,"+Math.round(layer.offsetWidth*awmuc/10)+"px,"+Math.round(layer.offsetHeight*awmuc/10)+"px,0px)";} else  layer.style.clip="rect("+Math.round(layer.offsetHeight*(10-awmuc)/10)+"px,"+layer.offsetWidth+"px,"+layer.offsetHeight+"px,"+layer.offsetWidth*(10-awmuc)/10+"px)";break;}awmuc+=2;}function awmcu(){clearInterval(this.uid);this.layer.style.clip='rect(0,0,0,0)';this.layer.style.visibility="visible";awmun=1;awmuc=0;if (typeof(this.lod=="undefined")) this.lod=(this.od==0)?1:this.od;awmud=(this.ud!=0)?this.ud:(this.lod+((this.pi.ps.ct==0)?0:2));awmctu=this;this.uid=setInterval("awmu()",50);}function awmwr(){if (typeof(aRsF)!="undefined") aRsF();if (!(awmSubmenusFrameOffset>-9000)){for (var mno=0; mno<awmm.length; mno++){if (awmm[mno].cn[0].ct==2) awmm[mno].cn[0].layer.style.width=(window.innerWidth-2*awmm[mno].cn[0].cs.bw);if (!awmm[mno].rep&&awmm[mno].cll==0) awmm[mno].cn[0].pc();awmm[mno].cm(0);if (awmm[mno].cll&&!awmm[mno].cd) awmm[mno].cn[0].hdt(0);}}}function awmwu(){if (awmUnloadFunction!=null) awmUnloadFunction ();if (awmSubmenusFrameOffset>-9000){for (var mno=0; mno<awmm.length; mno++){if (awmm[mno].cn[0].pi!=null){awmm[mno].cn[0].pi.shst(0);awmm[mno].cn[0].pi.sm=null;}}}}function awmwbl(){}function awmwl(){if (!isKonq) awmwbl();for (var mno=0; mno<awmm.length; mno++){if (!awmm[mno].cll) awmm[mno].cn[0].pc();}}function awmd(){var clientX=window.innerWidth;var clientY=window.innerHeight;var sx=5;var sy=5;var divider=5;var snx,sny;if (vl!=awmlsx ||vt!=awmlsy){for (var mno=0; mno<awmm.length; mno++){var crm=awmm[mno];if (crm.cll==0){crm.mio=0;crm.cm(0);if (crm.dft==1||crm.dft==3){crm.cn[0].left=parseInt(crm.cn[0].layer.style.left)+vl-awmlsx;crm.cn[0].layer.style.left=crm.cn[0].left+"px";if (awmSubmenusFrame!=''&&crm.cn[0].ct>0) crm.cn[0].dox=vl;}if (crm.dft==1||crm.dft==2){crm.cn[0].top=parseInt(crm.cn[0].layer.style.top)+vt-awmlsy;crm.cn[0].layer.style.top=crm.cn[0].top+"px";if (awmSubmenusFrame!=''&&crm.cn[0].ct==0) crm.cn[0].doy=vt;}}}awmlsx=vl;awmlsy=vt;}if (vl!=awmlssx||vt!=awmlssy){for (var mno=0; mno<awmm.length; mno++){var crm=awmm[mno];if (crm.cn[0].ft&&crm.cll==0){if ((crm.dft==4||crm.dft==6)&&vl!=awmlssx){crm.mio=0;crm.cm(0);snx=Math.abs(vl-awmlssx)/(vl-awmlssx);if((Math.round(Math.abs(vl-awmlssx)/divider))>=sx) sx=Math.round(Math.abs(vl-awmlssx)/divider);if (Math.abs(vl-awmlssx)<sx) sx=Math.abs(vl-awmlssx);crm.cn[0].left=parseInt(crm.cn[0].layer.style.left)+snx*sx;crm.cn[0].layer.style.left=crm.cn[0].left+"px";if (awmSubmenusFrame!=''&&crm.cn[0].ct>0) crm.cn[0].dox=vl;}if ((crm.dft==4||crm.dft==5)&&vt!=awmlssy){crm.mio=0;crm.cm(0);sny=Math.abs(vt-awmlssy)/(vt-awmlssy);if((Math.round(Math.abs(vt-awmlssy)/divider))>=sy) sy=Math.round(Math.abs(vt-awmlssy)/divider);if (Math.abs(vt-awmlssy)<sy) sy=Math.abs(vt-awmlssy);crm.cn[0].top=parseInt(crm.cn[0].layer.style.top)+sny*sy;crm.cn[0].layer.style.top=crm.cn[0].top+"px";if (awmSubmenusFrame!=''&&crm.cn[0].ct==0) crm.cn[0].doy=vt;}}}if (vl!=awmlssx) awmlssx+=snx*sx;if (vt!=awmlssy) awmlssy+=sny*sy;}for (var mno=0; mno<awmm.length; mno++) if (awmm[mno].cn[0].cll==0) awmm[mno].cn[0].pc(1);}function aCo(){vl=((isKonq)?window.pageXOffset:window.scrollX);vt=((isKonq)?window.pageYOffset:window.scrollY);vr=vl+window.innerWidth;vb=vt+window.innerHeight;}function awmdb(mi){var crc=awmm[mi].cn[0];if (document.getElementById(crc.id).offsetWidth>0||!is60){if (!awmm[mi].cll){if ((!awmm[mi].elemRel||document.getElementById("awmAnchor-"+awmm[mi].nm))&&(mpi||aLf())) crc.show(1);else  setTimeout("awmdb("+mi+")",10);}} else  setTimeout("awmdb("+mi+")",0);}function awmbmm(){if (typeof(awmTarget)!='undefined'&&this.ind>0) return;document.onmousedown=awmodmd;window.status="."+(this.ind+1);this.ght();this.whtd();clearInterval(awmCoordId);awmCoordId=setInterval("aCo()",50);awmdb(this.ind);window.status=awmdst;clearInterval(awmdid);awmdid=setInterval("awmd()",50);awmsoo=awmso+1;if (this.ind==0){if (typeof(window.onload)!='undefined'){awmwbl=window.onload;awmwblt=window.onload;}else  awmwblt=awmwbl;window.onload=awmwl;awmUnloadFunction=window.onunload;window.onunload=awmwu;}else  awmwbl=awmwblt;}function awmHideMenu(mNm){var ml=awmm;if (ml){var i=0;while (i<ml.length){if (ml[i].nm==mNm||mNm==null){ml[i].cm(1);ml[i].cn[0].show(0);}i++;}ml=null;}}function awmShowMenu (mNm,x,y,frame){var ml;if (arguments.length<4||frame==null) ml=awmm;else  {eval ("var frex=parent."+awmSubmenusFrame);if (!frex) return;eval("ml=parent."+frame+".awmm;");}if (ml){var i=0;while (ml[i].nm!=mNm&&i<ml.length-1) i++;if (ml[i].nm==mNm){ml[i].cn[0].top=-3000;ml[i].cn[0].left=-3000;if (arguments.length<3||x==null||y==null) ml[i].cn[0].show(1);else  {ml[i].cn[0].pm.rep=1;ml[i].cn[0].show(1,x,y);}}ml=null;}}function awmHideGroup(){if (typeof(awmTarget)!='undefined') return;clearTimeout(awmHide2ID);awmHide2ID=setTimeout("awmHideMenu();",awmhd);}function awmShowGroup(gNm,gCr,eCr,ofX,ofY){if (typeof(awmTarget)!='undefined') return;var tmp;var mNm=gNm.split("-")[0];gNm=gNm.split("-")[1];clearTimeout(awmCollID);clearTimeout(awmHideID);awmHideMenu(mNm);clearTimeout(awmHide2ID);for(i=0;i<awmm.length; i++){for (j=0;j<awmm[i].cn.length;j++){if (awmm[i].cn[j].groupID==gNm) if (mNm==awmm[i].nm||mNm==n) tmp=awmm[i].cn[j];if (tmp){imgs=document.getElementById("awmAnchor-"+mNm+"-"+gNm);if (imgs==n){if (gNm=="gr0"){tmp.cd=0;tmp.fe();tmp.arr();tmp.show(1);}return;}x=imgs.offsetLeft;y=imgs.offsetTop;z=imgs.offsetParent;while (z!=null){x+=z.offsetLeft;y+=z.offsetTop;z=z.offsetParent;}tmp.cd=0;tmp.fe();tmp.arr();if (gCr!=null&&eCr!=null){if (eCr==1||eCr==2||eCr==6) x+=imgs.offsetWidth;if (eCr==2||eCr==3||eCr==7) y+=imgs.offsetHeight;if (eCr==5||eCr==7||eCr==8) x+=imgs.offsetWidth/2;if (eCr==4||eCr==6||eCr==8) y+=imgs.offsetHeight/2;if (gCr==1||gCr==2||gCr==6) x-=tmp.layer.offsetWidth;if (gCr==2||gCr==3||gCr==7) y-=tmp.layer.offsetHeight;if (gCr==5||gCr==7||gCr==8) x-=tmp.layer.offsetWidth/2;if (gCr==4||gCr==6||gCr==8) y-=tmp.layer.offsetHeight/2;} else  {if (tmp.pi){if (tmp.pi.ps.ct==0){x+=(imgs.offsetWidth+tmp.swr);y+=tmp.alO;} else  {x+=tmp.alO;y+=(imgs.offsetHeight+tmp.swr);}} else  {y+=imgs.offsetHeight;}}if (ofX) x+=ofX;if (ofY) y+=ofY;y=Math.min(y,vb-tmp.layer.offsetHeight);x=Math.min(x,vr-tmp.layer.offsetWidth);y=Math.max(y,vt);x=Math.max(x,vl);tmp.show(1,x,y);return;}}}}/*2*/