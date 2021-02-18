<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>

<html:html lang="true">
    <head>
        <title><bean:message key="welcome.title"/></title>
        <link href="ew-style.css" rel="stylesheet" type="text/css"/>
        <%@include file="/scraps/metablock.jspf" %>
        <html:base/>
    </head>
    <body>
        <%!com.unixforensic.www.CS cs = new com.unixforensic.www.CS();%>
        <logic:notPresent name="org.apache.struts.action.MESSAGE" scope="application">
            <div  style="color: red">
                ERROR:  Application resources not loaded -- check servlet container
                logs for error messages.
            </div>
        </logic:notPresent>
        <table class="center" width="920" cellpadding="0" cellspacing="0" border="0">
            <%=cs.logo%>
            <tr>
                <td width="169" bgcolor="#E1E1FF" valign="top">
                    <div style="text-align: left;">
                        <table width="169" cellpadding="0" cellspacing="0"
                               border="0" align="left">

                            <%=cs.menuItem("Home")%>
                            <%=cs.menuSub("Services", "Home", "services")%>
                            <%=cs.menuSub("Overview", "Home", "overview")%>
                            <%=cs.menuSub("Expertise", "Home", "expertise")%>
                            <%=cs.menuSub("Contact", "Home", "contact")%>

                            <%=cs.menu_separator%>
                            <%=cs.menuItem("Litigation")%>

                            <%=cs.menu_separator%>
                            <%=cs.menuItem("Cases")%>

                            <%=cs.menu_separator%>
                            <%=cs.menuItem("Curriculum Vitae", "CV")%>

                            <%=cs.menu_separator%>
                            <%=cs.menuItem("Mobile Site", "m-home.jsp")%>

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
                                <%@include file="scraps/home.jspf" %>
                                <hr>
                                See <a href="<%=cs.pageReference("CV")%>">Mike's CV</a>
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
</html:html>
