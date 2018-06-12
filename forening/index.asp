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

function MM_showHideLayers() { //v3.0
  var i,p,v,obj,args=MM_showHideLayers.arguments;
  for (i=0; i<(args.length-2); i+=3) if ((obj=MM_findObj(args[i]))!=null) { v=args[i+2];
    if (obj.style) { obj=obj.style; v=(v=='show')?'visible':(v='hide')?'hidden':v; }
    obj.visibility=v; }
}
//-->
</script>
<style type="text/css">
<!--
.lag {  padding-right: 50px; padding-left: 50px}
-->
</style>
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
<table width="750" border="0" cellspacing="0" cellpadding="0" name="Contentarea">
<tr> 
<td width="180" valign="top" name="leftbar"><!-- #BeginEditable "leftbar" --> 
<table width="180" border="0" cellspacing="0" cellpadding="0">
<tr> 
<td><img src="/shared/graphics/layout/header_arrows.gif" width="22" height="22"></td>
<td width="98%" class="sidebarHeader">&nbsp;&nbsp;OM FORENINGEN</td>
</tr>
<tr> 
<td colspan="2" height="1" background="/shared/graphics/layout/dots_horz.gif"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
</tr>
<tr> 
<td valign="top" colspan="2"> 
<table width="90%" border="0" cellspacing="0" cellpadding="0" align="center">
<tr> 
<td><img src="/shared/graphics/spacer.gif" width="3" height="8">
<table width="98%" border="0" cellspacing="0" cellpadding="3">
<tr> 
<td>&nbsp;</td>
</tr>
</table>
</td>
</tr>
<!-- CONTENT HERE -->
<tr> 
<td><img src="/shared/graphics/spacer.gif" width="3" height="8">
<%level1=1%>
<!--#include file="inc_about_leftbar.asp"-->
</td>
</tr>
</table>
</td>
<td>

</tr>
</table>
<!-- #EndEditable --></td>
<td width="1" background="/shared/graphics/layout/dots_vert.gif"><br>
</td>
<td width="569" height="100%" valign="top" name="maincontent"> 
<table width="100%" height="100%" border="0" cellspacing="0" cellpadding="10">
<tr> 
<td valign="top" height="410"> <!-- #BeginEditable "maincontent" -->
<div align="left" class="sidebarHeader"><br>
<br>
mad &amp; musik -&oslash;kologi &amp; Kultur <br>
- ny kultur- og musikforening p&aring; Sydfyn</div>
<p>Mad &amp; Musik - &Oslash;kologi &amp; Kultur&quot; er navnet p&aring; en ny 
kultur- og musikforening p&aring; Sydfyn, hvis form&aring;l er at skabe almennyttige 
kulturelle sammenh&aelig;nge og samling om musik og andre kunstarter samt omkring 
en b&aelig;redygtig &oslash;kologisk kultur. S&aring;ledes er foreningen f&oslash;rst 
og fremmest en koncertarrang&oslash;r forening i traditionel forstand, der samtidig 
har som m&aring;l at alle arrangementer afholdes efter b&aelig;redygtige principper, 
s&aring;ledes at fx al servering er t&aelig;ttest muligt 100% &oslash;kologisk.</p>
<p>Kultur- og musikforeningen vil med sit form&aring;l v&aelig;re med til at skabe 
fornyet offentlig fokus p&aring; og oplysning om &oslash;kologi, milj&oslash; 
og b&aelig;redygtig udvikling, og indirekte tage arven op fra det landsd&aelig;kkende 
Gr&oslash;n Guide netv&aelig;rk, hvis form&aring;l var at fremme en b&aelig;redygtig 
levevis hos den enkelte borger dels ved at styrke de allerede igangv&aelig;rende 
gr&oslash;nne spirer, dels ved at v&aelig;re igangs&aelig;ttende og inspirerende 
i forhold til et samarbejde mellem borgere, de lokale erhvervsdrivende, de lokale 
foreninger og det offentlige.</p>
<p>Der er to m&aring;der at v&aelig;re medlem af kultur- og musikforeningen:</p>
<ul>
<li>som andelsmedlemmer optages personer der kan tilslutte sig kultur- og musikforeningen 
form&aring;l og som tegner en st&oslash;tteandel &aacute; 1000 kr., der det f&oslash;rste 
&aring;r ogs&aring; d&aelig;kker det f&oslash;rste &aring;rskontingent.</li>
<li>som st&oslash;tteforeningsmedlemmer optages personer der kan tilslutte sig 
kultur- og musikforeningen form&aring;l og som betaler forenings &aring;rskontingent, 
der er p&aring; 50 kr. pr. &aring;r.</li>
</ul>
<p>Det er foreningens m&aring;l at lave mindst fire arrangementer om &aring;ret 
og M&aring;let er at tr&aelig;kke st&oslash;rre danske navne til Ollerup og Sydfyn.<br>
Vedr. maden er der etableret kontakt til den &oslash;kologiske N&oslash;rhavegaard 
p&aring; Langeland og det &oslash;kologiske pensionat Den Gr&oslash;nne Gren p&aring; 
&AElig;r&oslash;, der er g&aring;et positivt ind i opgaven, der kan betyde at 
servere mad for op til 500 mennesker i forbindelse med et arrangement.</p>
<p>M&aring;let er at der ved hver arrangement er ca. 15-20 frivillige, fx studerende 
fra Den Frie L&aelig;rerskole eller de andre skoler, der deltager i afviklingen 
(s&aelig;tter op, passer bar, serverer mad og rydder af). Selve den daglige administration 
varetages gennem et samarbejde med sekretariatet for &Oslash;ko-net, der stiller 
personale, database og web-hostning m.v. til r&aring;dighed.</p>
<p>Foreningen blev stiftet mandag d. 03.03.03 og vil fremover kunne findes p&aring; 
hjemmesiden: <b>www.03-03-03.dk</b> St&oslash;t op omkring foreningen - send en 
e-mail om du vil v&aelig;re andelsmedlem eller st&oslash;ttemedlem, s&aring; sender 
vi et indbetalingskort eller foreningens kontonummer i Merkur Bank. <a href="/Templates/vedtag.html">Se 
vedt&aelig;gter.</a></p>
<p>Foreningens motto er, n&aring;r vi indbyder til fest: <br>
<i>&quot;Konsekvent handling, godt samv&aelig;rd og god musik - s&aring; kan det 
ikke g&aring; helt galt!&quot;</i></p>
<p>F&oslash;rste arrangement foregik fredag d. 2. maj 2003 i Ollerup. Se stemningsbilleder 
fra denne aften, hvor musikteater forestillingen 'Friheden tur/retur' blev opf&oslash;rt 
af Odense Internationale Musikteater. </p>
<p>Hen over sommerferien arbejdes der p&aring; mindst et arrangement i efter&aring;ret 
2003 - det vil blive annonceret her p&aring; sitet.</p>
<p>Med venlig hilsen<br>
bestyrelsen &aacute; 03.03.03</p>
<p>Lars Myrthu-Nielsen (&Oslash;ko-net)<br>
Ebbe Finn Hansen (&Oslash;kologisk landmand)<br>
Nils Knudsen (Aktivt seniornetv&aelig;rk)<br>
Ane Bodil S&oslash;gaard (&Oslash;kologisk foredragsholder)</p>
<p>Mad &amp; Musik - &Oslash;kologi &amp; Kultur<br>
c/o &Oslash;ko-net<br>
Svendborgvej 9, Ollerup<br>
5762 Vester Skerninge</p>
<p>Tlf.: 62 24 43 24<br>
Fax: 62 24 43 23</p>
<p class="mailto">E-mail: <a href="mailto:lars@eco-net.dk" class="mailto">lars@eco-net.dk</a> 
</p>
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
