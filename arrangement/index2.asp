<%@LANGUAGE="VBSCRIPT"%>
<!--#include virtual="/shared/showimage.asp" -->
<!--#include virtual="/Connections/ecoinfo.asp" -->


<!--include file="../shared/stat.asp"-->
<%
set rsArr = Server.CreateObject("ADODB.Recordset")
rsArr.ActiveConnection = MM_ecoinfo_STRING
if request("id")<>"" then
rsArr.Source = "SELECT * FROM mmarr_maindata WHERE id=" & request("id")
else
rsArr.Source = "SELECT * FROM mmarr_maindata WHERE arr_date>=" & FormatDateDB(date) & " ORDER BY arr_date"
end if
rsArr.CursorType = 0
rsArr.CursorLocation = 2
rsArr.LockType = 3
rsArr.Open()
set rsOld = Server.CreateObject("ADODB.Recordset")
rsOld.ActiveConnection = MM_ecoinfo_STRING
rsOld.Source = "SELECT * FROM mmarr_maindata WHERE arr_date<" & FormatDateDB(date)
rsOld.CursorType = 0
rsOld.CursorLocation = 2
rsOld.LockType = 3
rsOld.Open()
set rsNew = Server.CreateObject("ADODB.Recordset")
rsNew.ActiveConnection = MM_ecoinfo_STRING
rsNew.Source = "SELECT id,title FROM mmarr_maindata WHERE arr_date>=" & FormatDateDB(date) & " ORDER BY arr_date"
rsNew.CursorType = 0
rsNew.CursorLocation = 2
rsNew.LockType = 3
rsNew.Open()
FUNCTION FormatDateDB(theDate)
	theDate=CDate(theDate)
	FormatDateDB="{ts '" & datepart("yyyy",theDate) & "-" & right("0" & CStr(datepart("m",theDate)),2) & "-" &_
		right("0" & CSTR(datepart("d",theDate)),2) & " 00:00:00'}"
END FUNCTION
%>
<html><!-- #BeginTemplate "/Templates/3cols.dwt" --><!-- DW6 -->
<head>
<!-- #BeginEditable "doctitle" --> 
<title>Arrangementer af Mad & Musik - Økologi & Kultur</title>
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
                <td><img src="/shared/graphics/layout/header_arrows.gif" width="22" height="22"> 
                </td>
                <td width="98%" class="sidebarHeader">&nbsp;&nbsp;KALENDEREN</td>
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
                        <% if not rsNew.EOF then
while not rsNew.EOF
%>
                        <a href="index2.asp?id=<%=rsNew("id")%>"><%=rsNew("title")%></a><br>
                        <br>
                        <% rsNew.MoveNext
wend
end if
%>
                      </td>
                    </tr>
                    <tr> 
                      <td valign="top" colspan="2"> </td>
                    </tr>
                    <tr> 
                      <td valign="top" colspan="2" class="listheader">&nbsp;</td>
                    </tr>
                    <tr> 
                      <td valign="top" colspan="2">&nbsp;</td>
                    </tr>
                  </table>
                  <br>
                  <div align="center"></div>
                </td>
              </tr>
              <tr> 
                <td height="1" background="/shared/graphics/layout/dots_horz.gif"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
              </tr>
            </table>
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr> 
                <td><img src="/shared/graphics/layout/header_arrows.gif" width="22" height="22"></td>
                <td width="98%" class="sidebarHeader">&nbsp;&nbsp;INFORMATION</td>
              </tr>
              <tr> 
                <td colspan="2" height="1" background="/shared/graphics/layout/dots_horz.gif"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
              </tr>
            </table>
            <table width="90%" border="0" cellspacing="0" cellpadding="0" align="center">
              <tr> 
                <td> 
                  <p><a href="#" onClick="javascript:window.open('http://www.eco-info.dk/home/newsmail_okonet.asp','subwin','scrollbars=no,resizable=no,width=500,height=330,top=200,left=200');"> 
                    Bliv medlem </a>af foreningen 'Mad&amp;Musik -&Oslash;kologi&amp;Kultur'<br>
                    Kontingent er 50 kr. pr. &aring;r<br>
                    (man kan godt deltage i arrangementer uden at v&aelig;re medlem)</p>
                </td>
              </tr>
            </table>
            <div align="center"> 
              <table width="90%" border="0" cellspacing="0" cellpadding="0">
                <tr> 
                  <td> 
                    <div align="center"> 
                      <p>&nbsp;</p>
                    </div>
                  </td>
                </tr>
              </table>
              <p>&nbsp;</p>
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
                      <td width="98%" class="sidebarHeader">&nbsp;&nbsp; 
                        <% if request("id")<>"" then %>
                        ARRANGEMENTET 
                        <% else %>
                        P&Aring;&nbsp;PLAKATEN 
                        <% end if %>
                      </td>
                    </tr>
                    <tr> 
                      <td colspan="2" height="1" background="/shared/graphics/layout/dots_horz.gif"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
                    </tr>
                  </table>
                  <div align="center"> 
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                      <tr> 
                        <td> 
                          <% if not rsArr.EOF then 
				  while not rsArr.EOF
				  %>
                          <p class="contentHeader1" align="center"> <%=rsArr("title")%> 
                          </p>
                          <p class="space" align="center">
                            <% if rsArr("article_img")>0 then %>
                            <img src="<%=getImage(rsArr("article_img"),"3")%>">
                            <% end if %>
                          </p>
                          <p align="center"><b><%=WeekDayName(Weekday(rsArr("arr_date")))%>&nbsp;den&nbsp;<%=DatePart("d",rsArr("arr_date"))%>.&nbsp;<%=MonthName(DatePart("m",rsArr("arr_date")))%>&nbsp;<%=DatePart("yyyy",rsArr("arr_date"))%><br>
                            <%=rsArr("arr_time")%> </b><br>
                            <%=rsArr("arr_address")%></p>
                          <p align="left"><%=rsArr("short_descr")%> <br>
                          </p>
                          <p align="left"><%=rsArr("descr")%> <br>
                          </p>
                          <hr>
                          <% 
					rsArr.MoveNext
					wend
					else
					%>
                          <div align="center"><img src="/images/oeko_ork.jpg" width="260" height="205"><br>
                            Der arbejdes p&aring; det n&aelig;ste arrangement 
                            -<br>
                            som selvf&oslash;lgelig bliver annonceret her p&aring; 
                            siden. <br>
                            <br>
                            Foreningen er f&oslash;rst og fremmest en koncertarrang&oslash;rforening 
                            i traditionel forstand, der samtidig har som m&aring;l, 
                            at alle arrangementer afholdes efter b&aelig;redygtige 
                          principper. </div>
                          <%end if %>
                        </td>
                      </tr>
                    </table>
                  </div>
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
            <table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
              <tr> 
                <td><img src="/shared/graphics/layout/header_arrows.gif" width="22" height="22"></td>
                <td width="98%" class="sidebarHeader">&nbsp;&nbsp;AFHOLDTE ARR.</td>
              </tr>
              <tr> 
                <td colspan="2" height="1" background="/shared/graphics/layout/dots_horz.gif"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
              </tr>
              <tr> 
                <td colspan="2" align="right"> 
                  <table width="90%" border="0" cellspacing="0" cellpadding="0" align="center">
                    <tr> 
                      <td> 
                        <% if not rsOld.EOF then
						while not rsOld.EOF %>
                        <br><a href="index2.asp?id=<%=rsOld("id")%>"><%=rsOld("title")%></a><br>
                        
                        <%
							rsOld.MoveNext
						wend
						end if
						%>
                      </td>
                    </tr>
                  </table>
                  <p>&nbsp;</p>
                </td>
              </tr>
              <tr> 
                <td colspan="2" height="1" background="/shared/graphics/layout/dots_horz.gif"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
              </tr>
              <tr> 
                <td><img src="/shared/graphics/layout/header_arrows.gif" width="22" height="22"></td>
                <td width="98%" class="sidebarHeader">&nbsp;&nbsp;BILLEDER</td>
              </tr>
              <tr> 
                <td colspan="2" height="1" background="/shared/graphics/layout/dots_horz.gif"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
              </tr>
            </table>
            <table width="90%" border="0" cellspacing="0" cellpadding="0" align="center">
              <tr> 
                <td><br>
				<a href="/arrangement/billede.asp">Mad&amp;Musik 2. maj 2003</a></td>
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
rsArr.Close()
rsOld.Close()
rsNew.Close()
%>
<!--include virtual="shared/log.asp"-->
<%'reg("homeindex")%>