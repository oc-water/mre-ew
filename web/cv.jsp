<%-- 
    Document   : cv
    Created on : Jun 25, 2019, 9:14:51 PM
    Author     : mre
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <title>CV Michael R. Elliott | Computer Forensic Investigator</title>
        <meta name="title" content="CV Michael R. Elliott | Computer Forensic Investigator">
        <link href="ew-style.css" rel="stylesheet" type="text/css"/>
        <%@include file="/scraps/metablock.jspf"%>
    </head>
    <body>
        <%!com.unixforensic.www.CS cs = new com.unixforensic.www.CS();%>
        <table class="center" width="920" cellpadding="0" cellspacing="0" border="0">
            <tr>
                <%=cs.logo%>
            </tr>
            <tr>
                <td width="169" bgcolor="#E1E1FF" valign="top">
                    <div style="text-align: left;">
                        <table width="169" cellpadding="0" cellspacing="0" border="0" align="left">
                            <%=cs.menuItem("Home")%>

                            <%=cs.menu_separator%>
                            <%=cs.menuItem("Litigation")%>

                            <%=cs.menu_separator%>
                            <%=cs.menuItem("Cases")%>

                            <%=cs.menu_separator%>
                            <%=cs.menuItem("Curriculum Vitae", "CV")%>
                            <%=cs.menuSub("Education", "CV", "education")%>
                            <%=cs.menuSub("Employment", "CV", "employment")%>
                            <%=cs.menuSub("Teaching", "CV", "instruction")%>
                            <%=cs.menuSub("Publications", "CV", "publications")%>
                            <%=cs.menuSub("Affiliations", "CV", "affiliations")%>
                            <%=cs.menuSub("Other", "CV", "other")%>
                            <%=cs.menuSub("Contact", "CV", "contact")%>

                            <%=cs.menu_separator%>
                            <%=cs.menuItem("Mobile Site", "m-cv.jsp")%>

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
                                <!-- picture and caption, upper right -->
                                <div style="float: right; border: 10px; border-color: blue; padding-left: 12px">
                                    <table>
                                        <tr>
                                            <td>
                                                <img src="images/hs-3.jpeg" alt="Mike Elliott" width="135"
                                                     height="180" hspace="7" vspace="5" border="0">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: center; padding-bottom: 12px">Michael R. Elliott</td>
                                        </tr>
                                    </table>
                                </div>
                                <!-- end of picture and caption, upper right -->
                                <%@include file="scraps/cv.jspf" %>
                                <hr>
                                <%@include file="scraps/contact.jsp"%>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    <img src= "images/spacer.gif" 
                         width="1" height="10" alt="" border="0">
                </td>
            </tr>
        </table>
    </body>
</html>