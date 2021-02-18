<%-- 
    Document   : litigation
    Created on : Jun 23, 2019, 6:43:11 PM
    Author     : pi
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>Digital Forensics | Real-time, Safety-critical Software Engineering</title>
        <link href="ew-style.css" rel="stylesheet" type="text/css"/>
        <%@include file="scraps/metablock.jspf"%>
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
                             
                            <%=cs.menuItem("Home" )%>
                            
                            <%=cs.menu_separator%>
                            <%=cs.menuItem("Litigation")%>
                            <%=cs.menuSub("Expertise", "Litigation", "expertise")%>
                            <%=cs.menuSub("Contact", "Litigation", "contact")%>
                            
                            <%=cs.menu_separator%>
                            <%=cs.menuItem("Cases")%>
 
                            <%=cs.menu_separator%>
                            <%=cs.menuItem("Curriculum Vitae", "CV")%>

                            <%=cs.menu_separator%>
                            <%=cs.menuItem("Mobile Site", "m-litigation.jsp")%>

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
                                <%@include file="scraps/litigation.jspf" %>
                                <hr>
                                See <a href="cases.html">Cases</a>
                                <hr>
                                <p class="bodytext">
                                    <span class="bodyHeadBold">
                                        <a name="contact">Contact Information</a>
                                    </span></p>

                                <table width="100%" cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td align="left">
                                            <blockquote>
                                                <p class="bodytext">Michael R. Elliott<br>
                                                    <a href="mailto:mre@unixforensic.com">mre@unixforensic.com</a></p>

                                                <p class="bodytext">PO Box 804<br>
                                                    Huntington Beach, 
                                                    CA 92648-0804</p>

                                                <p class="bodytext">(562) 645-3355</p>
                                            </blockquote>
                                        </td>
                                        <td align="right" valign="bottom">
                                            <p>
                                                <a href="http://validator.w3.org/check?uri=referer"><img
                                                        src="http://www.w3.org/Icons/valid-html401"
                                                        alt="Valid HTML 4.01 Transitional" height="31" width="88"></a>
                                            </p>
                                        </td>
                                    </tr>
                                </table>

                                <!--Start of StatCounter Code -->
                                <script type="text/javascript" language="javascript">
                                    <!--
                                var sc_project = 2315868;
                                    var sc_invisible = 1;
                                    var sc_partition = 21;
                                    var sc_security = "5d299e12";
                                    //-->
                                </script>

                                <script type="text/javascript" language="javascript" src="http://www.statcounter.com/counter/counter.js"></script><noscript><a href="http://www.statcounter.com/" target="_blank"><img  src="http://c22.statcounter.com/counter.php?sc_project=2315868&amp;java=0&amp;security=5d299e12&amp;invisible=1" alt="unique visitors counter" border="0"></a> </noscript>
                                <!--End of StatCounter Code -->

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
