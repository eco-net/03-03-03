<html>
<head>
<!-- #BeginEditable "doctitle" --> 
<title>03-03-03.dk</title>
<!-- #EndEditable --> 
<script src="/shared/common.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link rel="stylesheet" href="/shared/styles.css" type="text/css">
<script language="JavaScript">
<!--
<!--
function MM_reloadPage(init) {  //reloads the window if Nav4 resized
  if (init==true) with (navigator) {if ((appName=="Netscape")&&(parseInt(appVersion)==4)) {
    document.MM_pgW=innerWidth; document.MM_pgH=innerHeight; onresize=MM_reloadPage; }}
  else if (innerWidth!=document.MM_pgW || innerHeight!=document.MM_pgH) location.reload();
}
MM_reloadPage(true);
// -->

function MM_showHideLayers() { //v6.0
  var i,p,v,obj,args=MM_showHideLayers.arguments;
  for (i=0; i<(args.length-2); i+=3) if ((obj=MM_findObj(args[i]))!=null) { v=args[i+2];
    if (obj.style) { obj=obj.style; v=(v=='show')?'visible':(v=='hide')?'hidden':v; }
    obj.visibility=v; }
}
//-->
</script>
</head>
<body bgcolor="#FFFFFF" text="#000000" leftmargin="0" topmargin="7" marginwidth="0" marginheight="7">
<table width="752" border="0" cellspacing="0" cellpadding="0" align="center" name="Pagetable">
<tr> 
<td background="/shared/graphics/layout/dots_vert.gif" width="1" valign="top"><img src="/shared/graphics/layout/cover_dots.gif" width="1" height="18"></td>
<td width="750" valign="top"> <!-- #BeginLibraryItem "/Library/header.lbi" --><table width="750" border="0" cellspacing="0" cellpadding="0" name="Header">
<tr> 
<td valign="top" rowspan="3"><img src="/shared/graphics/mmlogo.gif" width="569" height="36"> 
<table width="569" border="0" cellpadding="0" cellspacing="0" align="center">
<tr>


<td background="/shared/graphics/layout/dots_vert.gif" width="1" valign="top">
<td width="7"></td>
<td class="sitetag"> Kultur- og musikforening stiftet d. 03.03.03</td>
<td width="7"><br></td>

<td background="/shared/graphics/layout/dots_vert.gif" width="1" valign="top">
</tr></table>
</td>
<td valign="top" width="1"><br></td>
<td height="17" align="right" colspan="2"><a href="/home/index.asp">Forside</a>&nbsp;|&nbsp;<a href="/forening/about_2.asp">Kontakt 
og tilmelding</a></td>
</tr>
<tr> 
<td valign="top" rowspan="2" width="1" background="/shared/graphics/layout/dots_vert.gif"><img src="/shared/graphics/spacer.gif" width="1" height="1"></td>
<td background="/shared/graphics/layout/dots_horz.gif" height="1" colspan="3"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
</tr>
<tr> 
<td width="180"><img src="/shared/graphics/layout/striber.gif" width="180" height="55"></td>
</tr>
</table>
<!-- #EndLibraryItem --><!-- END HEADER -->
<!-- #BeginEditable "menu" --> <!-- #BeginLibraryItem "/Library/menu.lbi" -->
<table width="750" border="0" cellspacing="0" cellpadding="0" name="Menu">
<tr>
<%
'-- tab1 -- NYHEDER
response.write "<td><img src=""/shared/graphics/menu/stretch.gif"" width=""17"" height=""22"">"
'IF curtab=1 THEN
'	response.write "<img src=""/shared/graphics/menu/separator_left.gif"" width=""29"" height=""22"">" &_
'		"<img src=""/shared/graphics/menu/aktuelt_on.gif"" width=""57"" height=""22"">"
'ELSE
'	response.write "<img src=""/shared/graphics/menu/separator.gif"" width=""29"" height=""22"">" &_
'		"<a href=""/nyheder/index.asp""><img src=""/shared/graphics/menu/aktuelt_off.gif"" width=""57"" height=""22"" border=""0""></a>"
'END IF
'-- tab2 -- NYHEDSBLAD
IF curtab=2 THEN
	response.write "<img src=""/shared/graphics/menu/separator_left.gif"" width=""29"" height=""22"">" &_
		"<a href=""/arrangement/index.asp""><img src=""/shared/graphics/menu/arrangement_on.gif"" width=""150"" height=""22"" border=""0""></a>"
ELSE
	IF curtab=1 THEN
		response.write "<img src=""/shared/graphics/menu/separator_right.gif"" width=""29"" height=""22"">"
	ELSE
		response.write "<img src=""/shared/graphics/menu/separator.gif"" width=""29"" height=""22"">"
	END IF
	response.write "<a href=""/arrangement/index.asp""><img src=""/shared/graphics/menu/arrangement_off.gif"" width=""150"" height=""22"" border=""0""></a>"
END IF
'-- tab3 -- UDGIVELSER
IF curtab=3 THEN
	response.write "<img src=""/shared/graphics/menu/separator_left.gif"" width=""29"" height=""22"">" &_
		"<a href=""/forening/index.asp""><img src=""/shared/graphics/menu/forening_on.gif"" width=""150"" height=""22"" border=""0""></a>"
ELSE
	IF curtab=2 THEN
		response.write "<img src=""/shared/graphics/menu/separator_right.gif"" width=""29"" height=""22"">"
	ELSE
		response.write "<img src=""/shared/graphics/menu/separator.gif"" width=""29"" height=""22"">"
	END IF
	response.write "<a href=""/forening/index.asp""><img src=""/shared/graphics/menu/forening_off.gif"" width=""150"" height=""22"" border=""0""></a>"
END IF
'-- tab4 -- SEMINARER OG MØDER
IF curtab=4 THEN
	response.write "<img src=""/shared/graphics/menu/separator_left.gif"" width=""29"" height=""22"">" &_
		"<a href=""/leverandor/index.asp""><img src=""/shared/graphics/menu/leverandor_on.gif"" width=""150"" height=""22"" border=""0""></a>"
ELSE
	IF curtab=3 THEN
		response.write "<img src=""/shared/graphics/menu/separator_right.gif"" width=""29"" height=""22"">"
	ELSE
		response.write "<img src=""/shared/graphics/menu/separator.gif"" width=""29"" height=""22"">"
	END IF
	response.write "<a href=""/leverandor/index.asp""><img src=""/shared/graphics/menu/leverandor_off.gif"" width=""150"" height=""22"" border=""0""></a>"
END IF
'-- tab5 -- OM NETVÆRKET

IF curtab=5 THEN
	response.write "<img src=""/shared/graphics/menu/separator_left.gif"" width=""29"" height=""22"">" &_
		"<a href=""/links/index.asp""><img src=""/shared/graphics/menu/links_on.gif"" width=""96"" height=""22"" border=""0""></a>"
ELSE
	IF curtab=4 THEN
		response.write "<img src=""/shared/graphics/menu/separator_right.gif"" width=""29"" height=""22"">"
	ELSE
		response.write "<img src=""/shared/graphics/menu/separator.gif"" width=""29"" height=""22"">"
	END IF
	response.write "<a href=""/links/index.asp""><img src=""/shared/graphics/menu/links_off.gif"" width=""96"" height=""22"" border=""0""></a>"
	response.write "<img src=""/shared/graphics/menu/separator.gif"" width=""29"" height=""22"">"
END IF


'response.write "<img src=""/shared/graphics/menu/separator.gif"" width=""29"" height=""22"">"
response.write "<img src=""/shared/graphics/menu/stretch.gif"" width=""42"" height=""22""></td>"
%>
<%IF curtab>0 THEN%>
<tr><td class="menuBar">
<%
SET fs = CreateObject("Scripting.FileSystemObject")
Set ts=fs.OpenTextFile(Server.mapPath("inc_submenu.txt"))
response.write ts.ReadAll()
ts=""
fs=""
%>
</td></tr>
<%END IF%>


<tr>
<td background="/shared/graphics/layout/dots_horz.gif" height="1"><img src="/shared/graphics/menu/spacer.gif" width="3" height="1"></td>
</tr></table><!-- #EndLibraryItem --><!-- #EndEditable --> 
<table width="750" border="0" cellspacing="0" cellpadding="3">
<tr>
<td bgcolor="#FF9900">Billeder og program fra seneste arrangement</td>
</tr>
</table>
<table width="750" border="0" cellspacing="0" cellpadding="0" name="Contentarea">
<tr>
<td width="180" valign="top" name="leftbar"><!-- #BeginEditable "leftbar" --> 
<table width="180" border="0" cellspacing="0" cellpadding="0">
<tr> 
<td><img src="/shared/graphics/layout/header_arrows.gif" width="22" height="22"></td>
<td width="98%" class="sidebarHeader">&nbsp;&nbsp;BILLEDER FRA 2. MAJ</td>
</tr>
<tr> 
<td colspan="2" height="1" background="/shared/graphics/layout/dots_horz.gif"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
</tr>
<tr> 
<td valign="top" colspan="2"> 
<table width="90%" border="0" cellspacing="0" cellpadding="0" align="center">
<tr> 
<td><img src="/shared/graphics/spacer.gif" width="3" height="8"></td>
</tr>
<!-- CONTENT HERE -->
<tr>
<td> 
<p><br>
Program til 'MAD OG MUSIK P&Aring; SYDFYN' DEN 2. MAJ 2003<br>
<br>
</td>
<tr>
</tr>
<tr>
<td onMouseDown="MM_showHideLayers('Grill','','hide','Buffet','','hide','Festtale','','hide','Forestilling1','','hide','Forestilling2','','hide','Band1','','hide','Band2','','hide','Band3','','hide','Levering','','hide','Spisning','','hide','Menu','','show')"> 
18:30 Spisning, se menu<br>
<br>
</td>
</tr>
<tr> 
<td> 
<p>20:30 'Friheden tur/retur'<br>
- en forestilling om Jan Toftlund af Odense Internationale Musikteater<br>
<br>
</p>
</td>
</tr>
<tr> 
<td> 23-02: 'Captain Crawfish &amp; The Jumpin' Zydeco' spiller energisk Zydeco 
musik </td>
</tr>
<tr> 
<td><img src="/shared/graphics/spacer.gif" width="3" height="8"></td>
</tr>
</table>
</td>
</tr>
</table>
<!-- #EndEditable --></td>
<td width="1" background="/shared/graphics/layout/dots_vert.gif"><br>
</td>
<td width="569" height="100%" valign="top" name="maincontent"> 
<table width="100%" height="100%" border="0" cellspacing="0" cellpadding="0">
<tr> 
<td valign="top"> <!-- #BeginEditable "maincontent" -->
<table width="98%" border="0" cellspacing="0" cellpadding="10">
<tr>
<td>
<table width="98%" border="0" cellspacing="0" cellpadding="10">
<tr>
<td onMouseDown="MM_showHideLayers('Grill','','show','Buffet','','hide','Festtale','','hide','Forestilling1','','hide','Forestilling2','','hide','Band1','','hide','Band2','','hide','Band3','','hide','Levering','','hide','Spisning','','hide','Menu','','hide')">1</td>
<td onMouseDown="MM_showHideLayers('Grill','','hide','Buffet','','show','Festtale','','hide','Forestilling1','','hide','Forestilling2','','hide','Band1','','hide','Band2','','hide','Band3','','hide','Levering','','hide','Spisning','','hide','Menu','','hide')">2</td>
<td onMouseDown="MM_showHideLayers('Grill','','hide','Buffet','','hide','Festtale','','show','Forestilling1','','hide','Forestilling2','','hide','Band1','','hide','Band2','','hide','Band3','','hide','Levering','','hide','Spisning','','hide','Menu','','hide')">3</td>
<td onMouseDown="MM_showHideLayers('Grill','','hide','Buffet','','hide','Festtale','','hide','Forestilling1','','show','Forestilling2','','hide','Band1','','hide','Band2','','hide','Band3','','hide','Levering','','hide','Spisning','','hide','Menu','','hide')">4</td>
<td onMouseDown="MM_showHideLayers('Grill','','hide','Buffet','','hide','Festtale','','hide','Forestilling1','','hide','Forestilling2','','show','Band1','','hide','Band2','','hide','Band3','','hide','Levering','','hide','Spisning','','hide','Menu','','hide')">5</td>
<td onMouseDown="MM_showHideLayers('Grill','','hide','Buffet','','hide','Festtale','','hide','Forestilling1','','hide','Forestilling2','','hide','Band1','','show','Band2','','hide','Band3','','hide','Levering','','hide','Spisning','','hide','Menu','','hide')">6</td>
<td onMouseDown="MM_showHideLayers('Grill','','hide','Buffet','','hide','Festtale','','hide','Forestilling1','','hide','Forestilling2','','hide','Band1','','hide','Band2','','show','Band3','','hide','Levering','','hide','Spisning','','hide','Menu','','hide')">7</td>
<td onMouseDown="MM_showHideLayers('Grill','','hide','Buffet','','hide','Festtale','','hide','Forestilling1','','hide','Forestilling2','','hide','Band1','','hide','Band2','','hide','Band3','','show','Levering','','hide','Spisning','','hide','Menu','','hide')">8</td>
<td onMouseDown="MM_showHideLayers('Grill','','hide','Buffet','','hide','Festtale','','hide','Forestilling1','','hide','Forestilling2','','hide','Band1','','hide','Band2','','hide','Band3','','hide','Levering','','show','Spisning','','hide','Menu','','hide')">9</td>
<td onMouseDown="MM_showHideLayers('Grill','','hide','Buffet','','hide','Festtale','','hide','Forestilling1','','hide','Forestilling2','','hide','Band1','','hide','Band2','','hide','Band3','','hide','Levering','','hide','Spisning','','show','Menu','','hide')">10</td>
</tr>
</table>
</td>
</tr>
<tr>
<td height="350">
                        <div id="Grill" style="position:absolute; width:510px; height:370px; z-index:1; left: 208px; top: 180px; visibility: hidden"><img src="/arrangement/maj_billeder/grill.jpg"><br>
                          <br>
&Oslash;kologisk studek&oslash;d p&aring; grillen, som startes op af Freddy fra 
<a href="http://www.norhavegaard.dk/" target="_blank">N&oslash;rrehaveg&aring;rd</a>, Langeland.</div>
<div id="Buffet" style="position:absolute; width:510px; height:370px; z-index:1; left: 208px; top: 180px; visibility: hidden"><img src="/arrangement/maj_billeder/buffet.jpg">
<br><br>Økologisk buffet</div>
<div id="Festtale" style="position:absolute; width:510px; height:370px; z-index:1; left: 208px; top: 180px; visibility: hidden"><img src="/arrangement/maj_billeder/festtale.jpg">
<br><br>
Festtale holdt af Thomas Harttung fra <a href="http://www.aarstiderne.com/" target="_blank">Aarstiderne</a> 
</div>
<div id="Forestilling1" style="position:absolute; width:510px; height:370px; z-index:1; left: 208px; top: 180px; visibility: hidden"><img src="/arrangement/maj_billeder/forestilling1.jpg">
<br><br>
Forestillingen 'FRIHEDEN TUR/RETUR' fra <a href="http://www.oim.dk/html/forestillinger.html">Odense 
Internationale Musikteater</a>. </div>
<div id="Forestilling2" style="position:absolute; width:510px; height:370px; z-index:1; left: 208px; top: 180px; visibility: hidden"><img src="/arrangement/maj_billeder/forestilling2.jpg">
<br><br>
Forestillingen 'FRIHEDEN TUR/RETUR' fra <a href="http://www.oim.dk/html/forestillinger.html" target="_blank">Odense 
Internationale Musikteater</a>. </div>
<div id="Band1" style="position:absolute; width:510px; height:370px; z-index:1; left: 208px; top: 180px; visibility: hidden"><img src="/arrangement/maj_billeder/band.jpg">
<br><br>
<a href="http://www.ulrichklostergaard.dk/page3.html" target="_blank">Captain 
Crawfish & The Jumpin' Zydeco</a> fik folk på dansegulvet</div>
<div id="Band2" style="position:absolute; width:510px; height:370px; z-index:1; left: 208px; top: 180px; visibility: hidden"><img src="/arrangement/maj_billeder/band2.jpg">
<br><br>
<a href="http://www.ulrichklostergaard.dk/page3.html" target="_blank">Captain 
Crawfish & The Jumpin' Zydeco</a></div>
<div id="Band3" style="position:absolute; width:510px; height:370px; z-index:1; left: 208px; top: 180px; visibility: hidden"><img src="/arrangement/maj_billeder/band3.jpg">
<br><br>
</div>
<div id="Levering" style="position:absolute; width:510px; height:370px; z-index:1; left: 208px; top: 180px; visibility: hidden"><img src="/arrangement/maj_billeder/levering.jpg"> 
<br>
<a href="http://www.solhjulet.dk/" target="_blank"><br>
Solhjulet</a> leverer vin, øl m.m. til baren. </div>
                        <div id="Spisning" style="position:absolute; width:510px; height:370px; z-index:1; left: 208px; top: 180px"><img src="/arrangement/maj_billeder/spisning.jpg"> 
                          <br>
<br>
'Mad og Musik på Sydfyn' den 2. maj 2003</div>
<div id="Menu" style="position:absolute; width:510px; height:370px; z-index:1; left: 208px; top: 180px; visibility: hidden"><img src="/arrangement/maj_billeder/menu1.gif"> 
</div>
</td>
</tr>
</table>
<br>
<br>
<br>
<!-- #EndEditable --> </td>
</tr>
<tr> 
<td valign="bottom" align="left"> 
<!--#include virtual="/shared/pagetools.asp"-->
</td>
</tr>
</table>
</td>

</tr>
</table>
</td>
<td background="/shared/graphics/layout/dots_vert.gif" width="1" valign="top"><img src="/shared/graphics/layout/cover_dots.gif" width="1" height="18"></td>
</tr>
<tr> 
<td background="/shared/graphics/layout/dots_horz.gif" height="1" colspan="3"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
</tr>
<tr align="center"> 
<td colspan="3" class="footer" height="20" valign="middle">Se andre &Oslash;ko-net 
sites: <a href="http://www.eco-info.dk">&Oslash;ko-info</a> | <a href="http://baeredygtigudvikling.nu">B&aelig;redygtig 
Udvikling</a><br>
</td>
</tr>
</table>
<!-- START HEADER -->
</body>
</html>
