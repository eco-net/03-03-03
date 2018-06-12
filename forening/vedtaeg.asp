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
VEDT&AElig;GTER for kultur- og musikforeningen <br>
'Mad &amp; musik -&oslash;kologi &amp; kultur' <br>
</div>
<div align="right"><font face="Verdana, Arial, Helvetica, sans-serif" size="2"> 
</font></div>
<p align="center"><br>
<b>&sect; 1 - Navn</b></p>
<p>Navnet p&aring; kultur- og musikforeningen er &quot;Mad &amp; Musik - &Oslash;kologi 
&amp; Kultur&quot;.</p>
<p>Foreningens hjemsted er Egebjerg kommune.</p>
<p align="center">&nbsp;</p>
<p align="center"><b>&sect; 2 - Form&aring;l</b></p>
<p>Stk. 1 Form&aring;let med kultur- og musikforeningen er at skabe almennyttige 
kulturelle sammenh&aelig;nge og samling om musik og andre kunstarter samt omkring 
en b&aelig;redygtig &oslash;kologisk kultur. <br>
S&aring;ledes er foreningen f&oslash;rst og fremmest en koncertarrang&oslash;r 
forening i traditionel forstand, der samtidig har som m&aring;l at alle arrangementer 
afholdes efter b&aelig;redygtige principper, s&aring;ledes at fx al servering 
er t&aelig;ttest muligt 100% &oslash;kologisk.</p>
<p>Stk. 2 Filosofien for foreningens kulturelle virksomhed er sammenfattet i f&oslash;lgende 
to udsagn, der er udviklet af Netv&aelig;rket for &oslash;kologisk folkeoplysning 
og praksis (&Oslash;ko-net) i forbindelse med dets arbejde for en folkelig oplysning 
om b&aelig;redygtig udvikling:<br>
</p>
<table width="650" border="0" cellspacing="0" cellpadding="0" align="center">
<tr> 
<td width="40">&nbsp;</td>
<td width="610"> 
<p><i>B&aelig;redygtig udvikling handler om en milj&oslash;m&aelig;ssig og social 
retf&aelig;rdig fremtid<br>
- din, vores og deres fremtid.<br>
Tager du stilling og handler, p&aring;virker du udviklingen.<br>
G&oslash;r du ikke, p&aring;virker du den ogs&aring;!</i></p>
<p><i>B&aelig;redygtig udvikling handler om fremtiden, forvaltet nu!<br>
- at tage h&oslash;jde for resultatet af nutidige handlinger,<br>
der rammer en anden, til en anden tid og et andet sted.</i></p>
</td>
</tr>
</table>
<p>Stk. 3 Kultur- og musikforeningen vil med sit form&aring;l v&aelig;re med til 
at skabe fornyet offentlig fokus p&aring; og folkeoplysning om &oslash;kologi, 
milj&oslash; og b&aelig;redygtig udvikling, uden pegefingre, men med basis i praktisk 
b&aelig;redygtighed og det gode liv.</p>
<p>Stk. 4 Kultur- og musikforeningen arbejder som udgangspunkt med arrangementer 
p&aring; Sydfyn, men kan ogs&aring; indg&aring; i aktiviteter og arrangementer 
i resten af landet eller udlandet.</p>
<p align="center">&nbsp;</p>
<p align="center"><b>&sect; 3 - &Oslash;konomi og organisering</b></p>
<p>Stk. 1 Kultur- og musikforeningens midler tilvejebringes gennem andelsmedlemmernes 
tegning af andelsbeviser samt deres &aring;rs kontingent og af almindelige st&oslash;tteforeningsmedlemmers 
&aring;rs kontingent. Desuden via fondsmidler, st&oslash;ttebel&oslash;b, sponsorst&oslash;tte 
og ved salg af diverse varer og tjenesteydelser, samt &eacute;ntre indt&aelig;gter.</p>
<p>Stk. 2 Eventuelt overskud skal g&aring; til aktiviteter der opfylder form&aring;let 
og filosofien for foreningens kulturelle virksomhed.</p>
<p>Stk. 3 Kultur- og musikforeningen indg&aring;r i et samarbejds- og form&aring;lsf&aelig;llesskab 
med Netv&aelig;rket for &oslash;kologisk folkeoplysning og praksis / &Oslash;ko-net. 
<br>
Dette indeb&aelig;rer, at &Oslash;ko-net varetager sekretariatsfunktionen for 
foreningen, ved at tr&aelig;kke p&aring; &Oslash;ko-nets faste sekretariatspersonale 
eller/og ved at have mindst &eacute;n medarbejdere (fx &eacute;n person i fleksjob 
eller jobtr&aelig;ning) ansat igennem &Oslash;ko-net, samt at der for hvert medlem 
af kultur- og musikforeningen ydes et st&oslash;ttebel&oslash;b af minimum 50 
kr. til &Oslash;ko-net.</p>
<p>&nbsp;</p>
<p align="center"><b>&sect; 4 Andelsmedlemmer og st&oslash;tteforeningsmedlemmer</b></p>
<p>Stk.1 Som andelsmedlemmer optages personer der kan tilslutte sig kultur- og 
musikforeningen form&aring;l og som tegner en st&oslash;tteandel &aacute; 1000 
kr., der det f&oslash;rste &aring;r ogs&aring; d&aelig;kker det f&oslash;rste 
&aring;rskontingent.<br>
<br>
Stk. 2 Som st&oslash;tteforeningsmedlemmer optages personer der kan tilslutte 
sig kultur- og musikforeningen form&aring;l og som betaler forenings &aring;rskontingent, 
der fasts&aelig;ttes af andelsforeningens bestyrelse, dog til minimum 50 kr. pr. 
&aring;r.</p>
<p>Stk. 3 Kun medlemmer af kultur- og musikforeningen kan deltage i forenings 
arrangementer, men ved arrangementer kan der laves undtagelser omkring deltagelse 
i arrangementet uden medlemskab. Ved deltagelse i arrangementer uden medlemskab, 
deltager man for dette ene arrangement i et midlertidig pr&oslash;ve medlemskab, 
der efterf&oslash;lgende kan konventers til et rigtig medlemskab.</p>
<p>Stk. 4 Hverken andelsmedlemmer, st&oslash;ttemedlemmer eller andre personer 
h&aelig;fter for foreningens forpligtelser, dog kan andelsmedlemmer, st&oslash;ttemedlemmer 
og andre personer miste deres eventuelle indskud/kontingent. For foreningens forpligtelser 
h&aelig;fter alene foreningens formue.</p>
<p>&nbsp;</p>
<p align="center"><b>&sect; 5 Udmeldelse og udelukkelse</b></p>
<p>Stk. 1 Hvis et medlem ikke fornyer sit &aring;rskontingent, betragtes medlemskabet 
som opl&oslash;st. </p>
<p>Stk. 2 Andelskapital tilbagebetales ikke ved udmeldelse.</p>
<p>Stk. 3 Et medlem kan af bestyrelsen udelukkes fra kultur og musikforeningen, 
hvis medlemmet ved omtale eller handling skader foreningens interesser eller anseelse.</p>
<p><br>
</p>
<p align="center"><b>&sect; 6 Generalforsamling</b></p>
<p>Stk 1. Generalforsamlingen er kultur- og musikforeningens &oslash;verste myndighed 
og afholdes hvert &aring;r i f&oslash;rste kvartal. Indkaldelse til generalforsamlingen 
sker gennem direkte underretning af andelsmedlemmerne, mindst 1 m&aring;ned forud. 
Forslag, som man &oslash;nsker dr&oslash;ftet p&aring; generalforsamlingen, skal 
v&aelig;re bestyrelsen i h&aelig;nde 14 dage forud for m&oslash;det.</p>
<table width="650" border="0" cellspacing="0" cellpadding="0" align="center">
<tr> 
<td width="41">&nbsp;</td>
<td width="609">Dagsorden for ordin&aelig;r generalforsamling skal indeholde f&oslash;lgende 
punkter:<br>
1. Valg af dirigent.<br>
2. Beretning vedr. kultur- og musikforeningens aktiviteter i &aring;rets l&oslash;b.<br>
3. Freml&aelig;ggelse af &aring;rsregnskab.<br>
4. Indkomne forslag.<br>
5. Bestyrelsens motiverede forslag til kommende &aring;rs budget og aktiviteter. 
<br>
6. Fasts&aelig;ttelse af &aring;rskontingentet.<br>
7. Valg til bestyrelse og 1 bestyrelsessuppleant.<br>
8. Evt.</td>
</tr>
</table>
<p>Stk. 2 Generalforsamlingen v&aelig;lger en dirigent, der leder m&oslash;det. 
Enhver stemmeberettiget kan forlange skriftlig afstemning.</p>
<p>Stk. 3 De p&aring; generalforsamlingen behandlede anliggender afg&oslash;res 
ved simpelt stemmeflertal.</p>
<p>Stk. 4 Hvert andelsmedlem i kultur- og musikforeningen har 1 stemme. Stemmeberettigelse 
kr&aelig;ver medlemskab i det forgangne &aring;r. Stemmeberettigede medlemmer 
er valgbare til kultur- og musikforeningen bestyrelse.</p>
<p>Stk. 5 St&oslash;tteforeningsmedlemmer i kultur- og musikforeningen har taleret 
men ikke stemmeret p&aring; generalforsamlingen.</p>
<p>Stk. 6 Der f&oslash;res beslutningsreferat.</p>
<p>Stk. 7 Ekstraordin&aelig;r generalforsamling indkaldes n&aring;r bestyrelsen 
eller mindst en 1/3 af andelsmedlemmerne beg&aelig;rer det.</p>
<p>Stk. 8 I forbindelse med godkendelse af regnskabet godkender generalforsamlingen 
bestyrelsens disponering af eventuelt overskud. Overskud kan aldrig udbetales 
til enkeltpersoner eller stifterne, men kun til form&aring;l der er d&aelig;kket 
af foreningens form&aring;lsbestemmelse, jfr. &sect; 2 stk. 6. Overskud kan udbetales 
til en fond eller til en forening med et almennyttigt form&aring;l inden for samme 
omr&aring;de som foreningen d&aelig;kker.</p>
<p>&nbsp;</p>
<p align="center"><b>&sect; 7 Bestyrelsens sammens&aelig;tning og arbejdsopgave</b></p>
<p>Stk. 1 Generalforsamlingen v&aelig;lger en bestyrelse best&aring;ende af mindst 
3 medlemmer og 1 suppleant. Efter valg konstituerer bestyrelsen sig med formand 
og n&aelig;stformand. I tilf&aelig;lde af formandens frav&aelig;r fungerer n&aelig;stformanden 
som formand.</p>
<p>Stk. 2 Bestyrelsesvalg g&aelig;lder for 2 &aring;r. Hvert andet &aring;r er 
hhv. et medlem og to medlemmer p&aring; valg. Genvalg kan finde sted.</p>
<p>Stk. 3 Bestyrelsen er beslutningsdygtig, n&aring;r mindst halvdelen af medlemmerne 
er til stede. I tilf&aelig;lde af stemmelighed g&oslash;r formandens og i dennes 
frav&aelig;r n&aelig;stformandens stemme udslaget.</p>
<p>Stk. 4 Bestyrelsen f&oslash;rer referat over sine m&oslash;der, der p&aring; 
det efterf&oslash;lgende m&oslash;de godkendes.</p>
<p>Stk. 5 Den daglige drift af kultur- og musikforeningen varetages af &Oslash;ko-nets 
sekretariat, der ledes af &Oslash;ko-nets sekretariatsleder.</p>
<p>Stk. 6 Bestyrelsen laver en fremadrettet handlingsplan og &oslash;nskeliste 
over aktiviteter i kultur- og musikforeningen og st&aring;r for at organisere 
frivillige, fx fra lokale institutioner eller direkte blandt andelsmedlemmerne 
og st&oslash;tteforeningsmedlemmerne, til at deltage i afviklingen af arrangementerne.</p>
<p>&nbsp;</p>
<p align="center"><b>&sect; 8 Regnskab</b></p>
<p>Stk. 1 Kultur- og musikforeningens regnskabs&aring;r f&oslash;lger kalender&aring;ret.</p>
<p>Stk. 2 Kultur- og musikforeningens regnskaber varetages af &Oslash;ko-nets 
regnskabsmedarbejder og revideres af den samme revisor som &Oslash;ko-net benytter. 
Revisionen betales efter regning.</p>
<p>&nbsp;</p>
<p align="center"><b>&sect; 9 Vedt&aelig;gts&aelig;ndringer og opl&oslash;sning</b></p>
<p>Stk. 1 Vedt&aelig;gterne kan &aelig;ndres p&aring; en generalforsamling, n&aring;r 
forslaget er udsendt mindst 2 uger f&oslash;r generalforsamlingen og n&aring;r 
mindst 2/3 af de fremm&oslash;dte stemmer derfor.</p>
<p>Stk. 2 Opl&oslash;sning af kultur- og musikforeningen kan ske ved beslutning 
af s&aring;vel den ordin&aelig;re som af en ekstraordin&aelig;rt indkaldt generalforsamling. 
Vedtagelse af beslutning om kultur- og musikforeningens opl&oslash;sning kr&aelig;ver, 
at mindst tre fjerdedele af andelsmedlemmerne er repr&aelig;senterede ved generalforsamlingen 
og at to tredjedele af disse stemmer for opl&oslash;sningen af kultur- og musikforeningen.<br>
Hvis ikke tre fjerdedele af kultur- og musikforeningen andelsmedlemmer er repr&aelig;senteret 
ved generalforsamlingen, indkalder bestyrelsen til en ny ekstraordin&aelig;r generalforsamling, 
hvor opl&oslash;sningen af kultur- og musikforeningen kan vedtages af to tredjedele 
af de repr&aelig;senterede.</p>
<p>Stk. 3 S&aring;fremt opl&oslash;sningen vedtages og der ved likvidationen er 
midler i behold ud over, hvad der er forn&oslash;dent til d&aelig;kning af kultur- 
og musikforeningen forpligtelser, skal midlerne sk&aelig;nkes til form&aring;l, 
der ligger p&aring; linie med kultur- og musikforeningens form&aring;l og, hvis 
&Oslash;ko-net eksisterer, til denne forening.</p>
<p align="center"><i><br>
S&aring;ledes vedtaget p&aring; den stiftende generalforsamling <br>
p&aring; H&oslash;jskolehjemmet i Ollerup, mandag den 03.03.03</i><br>
</p>
<p>&nbsp;</p>
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
