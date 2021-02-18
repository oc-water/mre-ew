<%-- 
    Document   : cases
    Created on : Jun 25, 2019, 12:31:49 PM
    Author     : mre
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <title>Digital Forensic Investigator | Cases | Michael R. Elliott</title>
        <meta name="title" content="Real-time, Safety-critical Software Engineering Expert Witness">
        <link href="ew-style.css" rel="stylesheet" type="text/css"/>
        <%@include file="/scraps/metablock.jspf"%>
    </head>
    <body>
        <%!com.unixforensic.www.CS cs = new com.unixforensic.www.CS();%>
        <table class="center" width="920" cellpadding="0" cellspacing="0" border="0">
            <%=cs.logo%>
            <tr>
                <td width="169" bgcolor="#E1E1FF" valign="top">
                    <div style="text-align: left;">
                        <table width="169" cellpadding="0" cellspacing="0"
                               border="0" align="left">

                            <%=cs.menuItem("Home")%>

                            <%=cs.menu_separator%>
                            <%=cs.menuItem("Litigation")%>

                            <%=cs.menu_separator%>
                            <%=cs.menuItem("Cases" )%>
                            <%=cs.menuSub("Contact", "Cases", "contact")%>

                            <%=cs.menu_separator%>
                            <%=cs.menuItem("Curriculum Vitae", "CV")%>

                            <%=cs.menu_separator%>
                            <%=cs.menuItem("Mobile Site", "m-cases.jsp")%>

                            <%=cs.menu_separator%>
                            <%=cs.comment_block%>
                        </table>
                    </div>
                </td>
                <td width="1">
                    <img src="images/line_vert.gif" width="1"
                         height="318" alt="" border="0">
                </td>
                <td width="750" bgcolor="#FFFFF0" valign="top">
                    <table width="750" cellpadding="10" cellspacing="0" border="0">
                        <tr>
                            <td class="bodytext">
                                <%=cs.headshot%>
                                <%@include file="scraps/cases.jspf" %>
                                <hr>
                                See <a href="litigation.jsp">Litigation Support</a>

                                <hr>
                                <%@include file="/scraps/contact.jsp"%>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    <img src= "images/spacer.gif" width="1" height="10" alt="" border="0">
                </td>
            </tr>
        </table>
    </body>
</html>
