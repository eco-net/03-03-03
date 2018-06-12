<%@LANGUAGE="VBSCRIPT"%>
<!--#include virtual="/shared/showimage.asp" -->
<!--#include virtual="/Connections/ecoinfo.asp" -->
<!--#include file="nav.asp"-->
<%
Dim rsPageData__theID
rsPageData__theID = "0"
if (request("id") <> "") then rsPageData__theID = request("id")
%>
<!--#include virtual="log/econet/newsnr.inc"-->
<%
set rsPageData = Server.CreateObject("ADODB.Recordset")
rsPageData.ActiveConnection = MM_ecoinfo_STRING
rsPageData.Source = "SELECT *  FROM bu_Artikel INNER JOIN bu_Artikel_site ON bu_Artikel.Artikel_ID=bu_Artikel_site.artikel_id  WHERE bu_Artikel.Artikel_ID=" + Replace(rsPageData__theID, "'", "''") + ";  "
rsPageData.CursorType = 0
rsPageData.CursorLocation = 2
rsPageData.LockType = 3
rsPageData.Open()
rsPageData_numRows = 0
%>
<%
set rsBlad = Server.CreateObject("ADODB.Recordset")
rsBlad.ActiveConnection = MM_ecoinfo_STRING
rsBlad.Source = "SELECT *  FROM enblad_maindata  WHERE chosen=1"
rsBlad.CursorType = 0
rsBlad.CursorLocation = 2
rsBlad.LockType = 3
rsBlad.Open()
rsBlad_numRows = 0
%>
<html><!-- #BeginTemplate "/Templates/3cols.dwt" --><!-- DW6 -->
<head>
<!-- #BeginEditable "doctitle" --> 
<title>Øko-Net</title>
<!-- #EndEditable --> 
<script src="/shared/common.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link rel="stylesheet" href="/shared/styles.css" type="text/css">
</head>
<body bgcolor="#FFFFFF" text="#000000" leftmargin="0" topmargin="7" marginwidth="0" marginheight="7" onLoad="MM_preloadImages('/shared/graphics/pagetools/print_txt.gif','/shared/graphics/pagetools/bookmark_txt.gif','/shared/graphics/pagetools/mail_txt.gif')">
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
<!-- #BeginEditable "menu" --><!-- #BeginLibraryItem "/Library/menu.lbi" -->
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
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr> 
<td><img src="/shared/graphics/layout/header_arrows.gif" width="22" height="22"></td>
<td width="98%" class="sidebarHeader">&nbsp;&nbsp;NYESTE BLAD</td>
</tr>
<tr> 
<td colspan="2" height="1" background="/shared/graphics/layout/dots_horz.gif"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr> 
<td valign="top"> 
<table width="90%" border="0" cellspacing="0" cellpadding="0" align="center">
<tr> 
<td> 
<div align="center"><br>
<a href="/nyhedsblad/index.asp"><img src="<%=getImage(rsBlad("img_id"),"R")%>" border="0"></a></div>
</td>
</tr>
<tr> 
<td valign="top" colspan="2"> 
<div align="left"><%=(rsBlad.Fields.Item("dato").Value)%>, nr. <%=(rsBlad.Fields.Item("nr").Value)%></div>
</td>
</tr>
<tr> 
<td valign="top" colspan="2" class="listheader"><%=(rsBlad.Fields.Item("title").Value)%></td>
</tr>
<tr> 
<td valign="top" colspan="2"><a href="/nyhedsblad/index.asp"><%=(rsBlad.Fields.Item("descr").Value)%></a></td>
</tr>
</table>
<br>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr> 
<td colspan="2" height="1" background="/shared/graphics/layout/dots_horz.gif"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
</tr>
<tr> 
<td><img src="/shared/graphics/layout/header_arrows.gif" width="22" height="22"></td>
<td width="98%" class="sidebarHeader">&nbsp;&nbsp;SEMINAR OG &Aring;RSM&Oslash;DE</td>
</tr>
<tr> 
<td colspan="2" height="1" background="/shared/graphics/layout/dots_horz.gif"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
</tr>
</table>
<div align="center"><span class="listheader" align="center"><br>
Det r&aring;ber til himlen!</span><br>
&Oslash;ko-net's <br>
seminar og &aring;rsm&oslash;de 2003<br>
d. 25.-26. januar <br>
p&aring; Brenderup Folkeh&oslash;jskole<br>
<a href="/seminar/aarsmode_2003.asp">Se program mv.</a><br>
<br>
</div>
</td>
</tr>
<tr> 
<td height="1" background="/shared/graphics/layout/dots_horz.gif"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
</tr>
</table>
<!-- #BeginLibraryItem "/Library/newsmail.lbi" --><table width="180" border="0" cellspacing="0" cellpadding="0">
<tr> 
<td colspan="2" height="1" background="/shared/graphics/layout/dots_horz.gif"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
</tr>
<tr>
<td><img src="/shared/graphics/layout/header_arrows.gif" width="22" height="22"></td>
<td width="98%" class="sidebarHeader">&nbsp;&nbsp;NYHEDSBREV</td>
</tr>
<tr> 
<td colspan="2" height="1" background="/shared/graphics/layout/dots_horz.gif"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
</tr>
<tr> 
<td colspan="2" class="sidebarText"> 
<script src="/shared/newsmail.js"></script>
<table width="90%" border="0" cellspacing="0" cellpadding="0" align="center">
<form name="newsmail" action="" onSubmit="return newsMail(1,document.newsmail.themail.value,document.newsmail.site.value);">
<tr>
<td><img src="/shared/graphics/spacer.gif" width="3" height="8"></td>
</tr>
<tr> 
<td><span class="formLabeltext">Din emailadresse </span> 
<input type="text" name="themail" value="" class="formInputobject">
<input type="hidden" value="1" name="site">
<input type="button" value="Afmeld" class="formbutton"  name="afmeld" onClick="javascript:newsMail(2,document.newsmail.themail.value,document.newsmail.site.value);">
<input type="submit" value="Tilmeld" name="tilmeld" class="formSubmitbutton">
</td>
</tr>
<tr>
<td><img src="/shared/graphics/spacer.gif" width="3" height="8"></td>
</tr>
</form>
</table>
</td>
</tr>
</table><!-- #EndLibraryItem --> 
<p>&nbsp;</p>
<!-- #EndEditable --></td>
<td width="1" background="/shared/graphics/layout/dots_vert.gif"><br>
</td>
<td width="388" height="100%" valign="top" name="maincontent"> 
<table width="100%" height="100%" border="0" cellspacing="0" cellpadding="0">
<tr> 
<td valign="top"> <!-- #BeginEditable "maincontent" --> 
<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
<tr> 
<td colspan="2"> 
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr> 
<td><img src="/shared/graphics/layout/header_arrows.gif" width="22" height="22"></td>
<td width="98%" class="sidebarHeader">&nbsp;&nbsp;&Oslash;KO-NYT</td>
</tr>
<tr> 
<td colspan="2" height="1" background="/shared/graphics/layout/dots_horz.gif"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
</tr>
</table>
</td>
</tr>
</table>
<br>
<table width="95%" border="0" cellspacing="0" cellpadding="0" align="center">
<tr> 
<td><a href="index.asp">Tilbage til oversigt</a></td>
<td> 
<div align="right"><%=navHTML()%></div>
</td>
<td>&nbsp;</td>
</tr>
</table>
<br>
<table width="98%" border="0" cellspacing="0" cellpadding="0" align="center">
<tr> 
<td valign="top"> <i><%=DateValue(rsPageData.Fields.Item("create_date").Value)%></i><span class="contentHeader2"><br>
<%=(rsPageData.Fields.Item("Header").Value)%></span><br>
<br>
<br>
<%=(rsPageData.Fields.Item("Content").Value)%> <br><br>
</td>
</tr>
<tr> 
<td height="1" background="/shared/graphics/layout/dots_horz.gif"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
</tr>
<tr> 
<td><br>
</td>
</tr>
</table>
<p>&nbsp;</p>
<!-- #EndEditable --> </td>
</tr>
<tr> 
<td valign="bottom" align="left"> 
<!--#include virtual="/shared/pagetools.asp" -->
</td>
</tr>
</table>
</td>
<td width="1" background="/shared/graphics/layout/dots_vert.gif"><br>
</td>
<td width="180" valign="top" name="rightbar"><!-- #BeginEditable "rightbar" --> 
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr> 
<td><img src="/shared/graphics/layout/header_arrows.gif" width="22" height="22"></td>
<td width="98%" class="sidebarHeader">&nbsp;&nbsp;L&AElig;S MERE</td>
</tr>
<tr> 
<td colspan="2" height="1" background="/shared/graphics/layout/dots_horz.gif"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
</tr>
</table>
<table width="90%" border="0" cellspacing="0" cellpadding="0" align="center">
<tr> 
<td width="160" valign="top"> 
<div align="center"> 
<p>&nbsp;</p>
<p> 
<% if (rsPageData.Fields.Item("img_id").Value)>0 then %>
<img src="<%=getImage(rsPageData.Fields.Item("img_id").Value,"R")%>"> 
<% end if %>
<br>
</p>
</div>
</td>
</tr>
<tr> 
<td colspan="2" height="1" background="/shared/graphics/layout/dots_horz.gif"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
</tr>
<tr> 
<td width="160" valign="top"> 
<%if(rsPageData.Fields.Item("FileName").Value)<>"" then %>
<br>
<p> <a href="<%=(rsPageData.Fields.Item("FileName").Value)%>" title="<%=(rsPageData.Fields.Item("FileName").Value)%>" <%if rsPageData.Fields.Item("newwin").Value =0 then response.write("target='_blank'")%>> 
<% if rsPageData.Fields.Item("linktext").Value<>"" then %>
<%=(rsPageData.Fields.Item("linktext").Value)%> 
<%else %>
L&aelig;s mere.. 
<%end if %>
</a> </p>
<%end if %>
<%if(rsPageData.Fields.Item("FileName2").Value)<>"" then %>
<p> <a href="<%=(rsPageData.Fields.Item("FileName2").Value)%>" title="<%=(rsPageData.Fields.Item("FileName2").Value)%>"> 
<% if rsPageData.Fields.Item("linktext2").Value<>"" then %>
<%=(rsPageData.Fields.Item("linktext2").Value)%> 
<%else %>
L&aelig;s mere.. 
<%end if %>
</a> </p>
<%end if %>
<%if(rsPageData.Fields.Item("FileName3").Value)<>"" then %>
<p> <a href="<%=(rsPageData.Fields.Item("FileName3").Value)%>" title="<%=(rsPageData.Fields.Item("FileName3").Value)%>"> 
<% if rsPageData.Fields.Item("linktext3").Value<>"" then %>
<%=(rsPageData.Fields.Item("linktext3").Value)%> 
<%else %>
L&aelig;s mere.. 
<%end if %>
</a> </p>
<%end if %>
<br>
</td>
</tr>
</table>
<!-- #EndEditable --></td>
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
sites: <a href="http://www.eco-info.dk">&Oslash;ko-info</a> | <a href="http://www.baeredygtigudvikling.nu">B&aelig;redygtig 
Udvikling</a><br>
</td>
</tr>
</table>
<!-- START HEADER -->
</body>
<!-- #EndTemplate --></html>
<%
rsPageData.Close()
%>
<%
rsBlad.Close()
%>
