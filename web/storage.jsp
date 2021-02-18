<%-- 
    Document   : storage
    Created on : Jun 27, 2019, 1:51:57 PM
    Author     : mre
--%>

<%@page import="java.util.Arrays"%>
<%@page import="java.io.File"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.0//EN" "http://www.w3.org/TR/REC-html40/strict.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Storage</title>
    </head>
    <body>
        <%!public class SSclass {

                final static String dirName = "downloads";

                public String downloadItem(String name) {
                    return "<li>\n"
                            + "<a href=\"" + dirName + "/" + name + "\">" + name
                            + "</a>\n" + "</li>\n";
                }

                public String fileList() {
                    String contextPath = getServletContext().getRealPath("/");
                    File top = new File(contextPath, dirName);
                    String result = "";
                    String[] list = top.list();
                    Arrays.sort(list);
                    for (String val : list) {
                        result += "\n" + downloadItem(val);
                    }
                    return result;
                }
            }
            SSclass SS = new SSclass();
        %>

        <html:link page="/upload"><h1>Upload</h1></html:link>

    <h1>Storage</h1>
        <ul>
            <%=SS.fileList()%>
        </ul>

    </body>
</html>
