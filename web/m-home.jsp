<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>

<html:html lang="true">
    <head>
        <title><bean:message key="welcome.title"/></title>
        <link href="ew-style-mobile.css" rel="stylesheet" type="text/css"/>
        <%@include file="/scraps/metablock.jspf" %>
        <html:base/>
        <%@include file="scraps/mobile-navbar-style.jspf" %>
    </head>
    <body>
        <%!com.unixforensic.www.CS cs = new com.unixforensic.www.CS();%>
        <logic:notPresent name="org.apache.struts.action.MESSAGE" scope="application">
            <div  style="color: red">
                ERROR:  Application resources not loaded -- check servlet container
                logs for error messages.
            </div>
        </logic:notPresent>

        <table class="center">
            <%=cs.logo%>
            <tr>
                <td>
                    <%=cs.mobileNav("home.jsp")%>
                </td>
            </tr>           

            <tr>
                <td width="<bean:message key='mobile.width'/>"
                    bgcolor="#FFFFF0" valign="top">
                    <table width="<bean:message key='mobile.width'/>" 
                           cellpadding="10" cellspacing="0" border="0">
                       <tr>
                            <td class="bodytext">
                                <%=cs.headshot%>
                                <%@include file="scraps/home.jspf" %>
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
