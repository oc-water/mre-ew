package com.unixforensic.www;

/**
 *
 * @author mre
 */
public class CS {
    public String menu_separator = 
            "<tr>\n" +
            " <td><img src=\"images/menudivider.gif\" width=\"169\"\n" +
            " height=\"2\" alt=\"\" border=\"0\">\n" +
            " </td>\n" +
            "</tr>";

    public String comment_block = 
            "<tr>\n" +
            "<td class=\"comment-text\">\n" +
            " <div class=\"comment-title\">Client Comment:</div>\n" +
            " <div class=\"comment-text\">\n" +
            "   <span style=\"font-style: italic\">\n" +
            "    This is the biggest smoking gun I've seen in 25 years!\n" +
            "   </span>\n" +
            "  </div>\n" +
            "  <div class=\"comment-commenter\">\n" +
            "     GB: Attorney<br>Los Angeles, CA\n" +
            "  </div>\n" +
            "</td>\n" +
            "</tr>";
    
    public String logo = 
            "<tr><td colspan=\"3\" class=\"logo\">"
            + "<img src=\"images/mre-sweng-logo-white.png\""
            + " width=400"
            + " alt=\"Michael R. Elliott\" border=\"0\"></td></tr>\n";
        
    public String headshot = 
            "<!-- picture and caption, upper right -->\n" +
            "<div style=\"float: right; border: 10px; border-color: blue; "
            + "padding-left: 12px\">\n" +
            "    <table>\n" +
            "        <tr>\n" +
            "            <td>\n" +
            "                <img src=\"images/hs-3.jpeg\" alt=\"Mike Elliott\""
            + " width=\"135\"\n" +
            "                     height=\"180\" hspace=\"7\" vspace=\"5\""
            + " border=\"0\">\n" +
            "            </td>\n" +
            "        </tr>\n" +
            "        <tr>\n" +
            "            <td style=\"text-align: center; "
            + "padding-bottom: 12px\">Michael R. Elliott</td>\n" +
            "        </tr>\n" +
            "    </table>\n" +
            "</div>\n" +
            "<!-- end of picture and caption, upper right -->\n" +
            "\n";
    
    
    public String pageReference( String page ) {
        return ROOT + page;
    }

    public String menuItem( String title, String link ) {
        return "<tr>\n" +
                " <td height=\"25\" " +
                "class=\"menutext\" onmouseover=\"bgColor = '#CCCCFF'\" "
                + "onmouseout=\"bgColor = '#E1E1FF'\">" +
                "<img src=\"images/spacer.gif\" width=\"5\" height=\"1\" "
                + "alt=\"\" border=\"0\">&nbsp;" +
                "<a href=\"" + link + "\">" + title + "</a>\n" +
                "</td>\n" +
                "</tr>\n";
    }
    
    public String menuItem( String title ) {
        return menuItem( title, title );
    }
    
    public String menuSub(String title, String link, String line) {
        return "<tr><td height=\"25\"\n" +
                " class=\"menutext\" onmouseover=\"bgColor='#CCCCFF'\""
                + " onmouseout=\"bgColor='#E1E1FF'\">\n" +
                " <img src=\"images/spacer.gif\" width=\"15\" height=\"1\""
                + " alt=\"\" border=\"0\"><img src=\"images/Green_Ball.gif\""
                + " alt=\"\" height=\"8\" width=\"8\">\n" +
                "&nbsp;<a href=\"" + link + "#" + line + "\">" + title + "</a>";
    }
    
    static class MobileNav {
        String activePage;
        MobileNav( String activePage ) {
            this.activePage = activePage;
        }
        String item( String page, String title, boolean isActive) {
            StringBuilder sb = new StringBuilder();
            sb.append( "<a ");
            if (isActive) sb.append( "class =\"active\" " );
            sb.append( "href=\"").append(page).append("\">");
            sb.append(title).append("</a>\n");
            return sb.toString();
        }
        
        String mobilePage( String page ) {
            return "m-" + page;
        }
        
        String m_item( String page, String title ) {
            boolean isActive = activePage.equals( page );
            return item( mobilePage( page ), title, isActive );
        }
        
        String contact() {
            return item( mobilePage( activePage ) 
                    + "#contact", "Contact", false );
        }
        
        String fullSite() {
            return item( activePage, "Full Site", false );
        }
    }
    
    public String mobileNav( String activePage ) {
        MobileNav mobileNav = new MobileNav( activePage );
        StringBuilder sb = new StringBuilder();
        sb.append( "<div class='topnav'>\n");
        sb.append( mobileNav.fullSite() );
        sb.append( mobileNav.m_item( "home.jsp", "Home"));
        sb.append( mobileNav.m_item( "litigation.jsp", "Litigation Support"));
        sb.append( mobileNav.m_item( "cases.jsp", "Cases"));
        sb.append( mobileNav.m_item( "cv.jsp", "Curriculum Vitae"));
        sb.append( mobileNav.contact());
        sb.append( "</div>\n");
        return sb.toString();
    }
    
    final private static String ROOT = "/mre/";
}