<table width="100%" border="0" cellspacing="0" cellpadding="0">

<tr>
<td colspan="2" background="/shared/graphics/layout/dots_horz.gif"><img src="/shared/graphics/spacer.gif" width="3" height="3"></td>
</tr>
<tr height="20">
<td>
<%
IF level1=1 THEN
	response.write "<img src=""/shared/graphics/layout/arrows_fwd.gif"" width=""10"" height=""7"">"
ELSE
	response.write "<img src=""/shared/graphics/spacer.gif"" width=""10"" height=""20"">"
END IF
%>
</td>
<td class="sidebarHeader"><a href="index.asp"> &nbsp;Om foreningen</a></td>
</tr>
<tr>
<td colspan="2" background="/shared/graphics/layout/dots_horz.gif"><img src="/shared/graphics/spacer.gif" width="3" height="3"></td>
</tr>
<tr height="20">
<td>
<%
IF level1=2 THEN
	response.write "<img src=""/shared/graphics/layout/arrows_fwd.gif"">"
ELSE
	response.write "<img src=""/shared/graphics/spacer.gif"" width=""10"" height=""20"">"
END IF
%>
</td>
<td class="sidebarHeader"><a href="about_2.asp">
&nbsp;Kontakt</a> </td>
</tr>
<tr>
<td colspan="2" background="/shared/graphics/layout/dots_horz.gif"><img src="/shared/graphics/spacer.gif" width="3" height="3"></td>
</tr>
<tr height="20">
<td>
<%
IF level1=4 THEN
	response.write "<img src=""/shared/graphics/layout/arrows_fwd.gif"" width=""10"" height=""7"">"
ELSE
	response.write "<img src=""/shared/graphics/spacer.gif"" width=""10"" height=""20"">"
END IF
%>
</td>
<td class="sidebarHeader"><a href="vedtaeg.asp"> &nbsp;Vedt&aelig;gter</a></td>
</tr>
<tr>
<td colspan="2" background="/shared/graphics/layout/dots_horz.gif"><img src="/shared/graphics/spacer.gif" width="3" height="3"></td>
</tr>

</table>
