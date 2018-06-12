<!--#include virtual="/shared/showimage.asp" -->
<!--#include virtual="/Connections/ecoinfo.asp" -->
<!--include virtual="/shared/stat.asp"-->
<%

'set rsArr = Server.CreateObject("ADODB.Recordset")
'rsArr.ActiveConnection = MM_ecoinfo_STRING

show_date=DateAdd("d",-1,Date())
'rsArr.Source = "SELECT * FROM mmarr_maindata WHERE arr_date>=" & FormatDateDB(date) & " ORDER BY arr_date"
'rsArr.CursorType = 0
'rsArr.CursorLocation = 2
'rsArr.LockType = 3
'rsArr.Open()
FUNCTION FormatDateDB(theDate)
	theDate=CDate(theDate)
	FormatDateDB="{ts '" & datepart("yyyy",theDate) & "-" & right("0" & CStr(datepart("m",theDate)),2) & "-" &_
		right("0" & CSTR(datepart("d",theDate)),2) & " 00:00:00'}"
END FUNCTION
%>
<html><!-- #BeginTemplate "/Templates/3cols.dwt" --><!-- DW6 -->
<head>
<!-- #BeginEditable "doctitle" --> 
<title>Kultur- og musikforeningen 'Mad & Musik - Økologi & Kultur'</title>
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
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr> 
<td><img src="/shared/graphics/layout/header_arrows.gif" width="22" height="22"></td>
<td width="98%" class="sidebarHeader">&nbsp;&nbsp;FORENINGENS M&Aring;L</td>
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
<td><br>
Form&aring;let er at skabe almennyttige kulturelle sammenh&aelig;nge og samling 
om musik og andre kunstarter, samt omkring b&aelig;redygtig &oslash;kologisk kultur. 
</td>
</tr>
<tr> 
<td valign="top" colspan="2">&nbsp;</td>
</tr>
<tr> 
<td valign="top" colspan="2" class="listheader">&nbsp;</td>
</tr>
</table>
</td>
</tr>
<tr> 
<td height="1" background="/shared/graphics/layout/dots_horz.gif"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr> 
<td><img src="/shared/graphics/layout/header_arrows.gif" width="22" height="22"></td>
<td width="98%" class="sidebarHeader">&nbsp;&nbsp;MEDLEMSSKAB</td>
</tr>
<tr> 
<td colspan="2" height="1" background="/shared/graphics/layout/dots_horz.gif"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
</tr>
</table>
<br>
<table width="90%" border="0" cellspacing="0" cellpadding="0" align="center">
<tr> 
<td> 
<p>Ring p&aring; tlf. 6224 4324 eller<br>
<a href="mailto:03-03-03@eco-net.dk">send mail</a></p>
</td>
</tr>
</table>
<br>
<div align="center"> 
<table width="90%" border="0" cellspacing="0" cellpadding="0">
<tr> 
<td> 
<div align="center"> 
<p>
</div>
</td>
</tr>
</table>
              <p>&nbsp;</p>
              <p><img src="/images/oeko_ork160.jpg" width="160" height="126"></p>
</div>
<!-- #EndEditable --></td>
<td width="1" background="/shared/graphics/layout/dots_vert.gif"><br>
</td>
<td width="388" height="100%" valign="top" name="maincontent"> 
<table width="100%" height="100%" border="0" cellspacing="0" cellpadding="0">
<tr> 
<td valign="top"> <!-- #BeginEditable "maincontent" --> 
                  <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr> 
                      <td><img src="/shared/graphics/layout/header_arrows.gif" width="22" height="22"></td>
                      <td width="98%" class="sidebarHeader">&nbsp;&nbsp;&nbsp;P&Aring; 
                        PLAKATEN</td>
                    </tr>
                    <tr> 
                      <td colspan="2" height="1" background="/shared/graphics/layout/dots_horz.gif"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
                    </tr>
                  </table>
				  <table width="95%" border="0" cellspacing="0" cellpadding="0" align="center">
                    <tr> 
                      <td>
				  <%' if not rsArr.EOF then 
				  'while not rsArr.EOF
				  %>
                  <p class="contentHeader1" align="center">
				  <%'=rsArr("title")%>
				  </p>
                  <p align="center"><b><%'=WeekDayName(Weekday(rsArr("arr_date")))%>&nbsp;&nbsp;<%'=DatePart("d",rsArr("arr_date"))%>&nbsp;<%'=MonthName(DatePart("m",rsArr("arr_date")))%>&nbsp;<%'=DatePart("yyyy",rsArr("arr_date"))%><br>
				  <%'=rsArr("arr_time")%>
				  </b><br>
                    <%'=rsArr("arr_address")%></p>
                  <p align="center"><%'=rsArr("short_descr")%> 
                    <br>
                  </p>
<!--                  <p class="space" align="center"><a href="/arrangement/index.asp">
				  <img src="<%'=getImage(rsArr("frontpage_img"),"3")%>"></a></p> -->
                  <p class="space" align="center"><a href="/arrangement/index.asp">Se 
                    Programmet</a></p>
					<% 
					'rsArr.MoveNext
					'wend
					'else
					%>
					    <div align="center"><img src="/images/oeko_ork.jpg" width="260" height="205"><br>
                          Der arbejdes p&aring; det n&aelig;ste arrangement -<br>
                          som selvf&oslash;lgelig bliver annonceret her p&aring; 
                          siden. <br>
                          <br>
                          Foreningen er f&oslash;rst og fremmest en koncertarrang&oslash;rforening 
                          i traditionel forstand, der samtidig har som m&aring;l, 
                          at alle arrangementer afholdes efter b&aelig;redygtige 
                          principper. </div>
					<%'end if %>
					</td></tr></table>
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
<td width="98%" class="sidebarHeader">&nbsp;&nbsp;&Oslash;KO-NET SITES</td>
</tr>
<tr> 
<td colspan="2" height="1" background="/shared/graphics/layout/dots_horz.gif"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
</tr>
</table>
<table width="90%" border="0" cellspacing="0" cellpadding="0" align="center">
<tr> 
<td><br>
                  <a href="http://www.eco-info.dk"><img src="/shared/graphics/layout/eco-info-logo.gif" border="0"></a><br>
</td>
</tr>
<td colspan="2" height="1" background="/shared/graphics/layout/dots_horz.gif" class="sidebarHeader"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
<tr> 
<td> 
<div align="center"><br>
                    <a href="http://www.baeredygtigudvikling.nu"><img src="/shared/graphics/layout/bu_logo_ad.jpg" width="169" height="129" border="0"></a></div>
</td>
</tr>
<tr> 
<td colspan="2" height="1" background="/shared/graphics/layout/dots_horz.gif"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
</tr>
<tr> 
<td><br>
<br>
<a href="http://www.eco-net.dk/"><img src="/shared/graphics/layout/okonet_logo.gif" width="162" height="73" border="0"></a></td>
</tr>

<tr> 
<td>&nbsp;</td>
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
'rsArr.Close()
%>

<!--include virtual="shared/log.asp"-->
<%'reg("homeindex")%>