package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import vmm.DBLoader;
import java.sql.ResultSet;

public final class userprofile_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <link href=\"//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css\" rel=\"stylesheet\" id=\"bootstrap-css\">\n");
      out.write("<script src=\"//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js\"></script>\n");
      out.write("<script src=\"//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js\"></script>\n");
      out.write("<style>\n");
      out.write("        body{\n");
      out.write("    background: -webkit-linear-gradient(left, #3931af, #00c6ff);\n");
      out.write("}\n");
      out.write(".emp-profile{\n");
      out.write("    padding: 3%;\n");
      out.write("    margin-top: 3%;\n");
      out.write("    margin-bottom: 3%;\n");
      out.write("    border-radius: 0.5rem;\n");
      out.write("    background: #fff;\n");
      out.write("}\n");
      out.write(".profile-img{\n");
      out.write("    text-align: center;\n");
      out.write("}\n");
      out.write(".profile-img img{\n");
      out.write("    width: 70%;\n");
      out.write("    height: 100%;\n");
      out.write("}\n");
      out.write(".profile-img .file {\n");
      out.write("    position: relative;\n");
      out.write("    overflow: hidden;\n");
      out.write("    margin-top: -20%;\n");
      out.write("    width: 70%;\n");
      out.write("    border: none;\n");
      out.write("    border-radius: 0;\n");
      out.write("    font-size: 15px;\n");
      out.write("    background: #212529b8;\n");
      out.write("}\n");
      out.write(".profile-img .file input {\n");
      out.write("    position: absolute;\n");
      out.write("    opacity: 0;\n");
      out.write("    right: 0;\n");
      out.write("    top: 0;\n");
      out.write("}\n");
      out.write(".profile-head h5{\n");
      out.write("    color: #333;\n");
      out.write("}\n");
      out.write(".profile-head h6{\n");
      out.write("    color: #0062cc;\n");
      out.write("}\n");
      out.write(".profile-edit-btn{\n");
      out.write("    border: none;\n");
      out.write("    border-radius: 1.5rem;\n");
      out.write("    width: 70%;\n");
      out.write("    padding: 2%;\n");
      out.write("    font-weight: 600;\n");
      out.write("    color: #6c757d;\n");
      out.write("    cursor: pointer;\n");
      out.write("}\n");
      out.write(".proile-rating{\n");
      out.write("    font-size: 12px;\n");
      out.write("    color: #818182;\n");
      out.write("    margin-top: 5%;\n");
      out.write("}\n");
      out.write(".proile-rating span{\n");
      out.write("    color: #495057;\n");
      out.write("    font-size: 15px;\n");
      out.write("    font-weight: 600;\n");
      out.write("}\n");
      out.write(".profile-head .nav-tabs{\n");
      out.write("    margin-bottom:5%;\n");
      out.write("}\n");
      out.write(".profile-head .nav-tabs .nav-link{\n");
      out.write("    font-weight:600;\n");
      out.write("    border: none;\n");
      out.write("}\n");
      out.write(".profile-head .nav-tabs .nav-link.active{\n");
      out.write("    border: none;\n");
      out.write("    border-bottom:2px solid #0062cc;\n");
      out.write("}\n");
      out.write(".profile-work{\n");
      out.write("    padding: 14%;\n");
      out.write("    margin-top: -15%;\n");
      out.write("}\n");
      out.write(".profile-work p{\n");
      out.write("    font-size: 12px;\n");
      out.write("    color: #818182;\n");
      out.write("    font-weight: 600;\n");
      out.write("    margin-top: 10%;\n");
      out.write("}\n");
      out.write(".profile-work a{\n");
      out.write("    text-decoration: none;\n");
      out.write("    color: #495057;\n");
      out.write("    font-weight: 600;\n");
      out.write("    font-size: 14px;\n");
      out.write("}\n");
      out.write(".profile-work ul{\n");
      out.write("    list-style: none;\n");
      out.write("}\n");
      out.write(".profile-tab label{\n");
      out.write("    font-weight: 600;\n");
      out.write("}\n");
      out.write(".profile-tab p{\n");
      out.write("    font-weight: 600;\n");
      out.write("    color: #0062cc;\n");
      out.write("}\n");
      out.write("</style>\n");
      out.write("           \n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

            try
            { String username=request.getParameter("username");
            ResultSet rs = DBLoader.executeSQl("select * from users where username=\'"+ username +"\'");
            while(rs.next()){
             
             
            
        
      out.write("\n");
      out.write("                 \n");
      out.write("        \n");
      out.write("        <div class=\"container emp-profile\">\n");
      out.write("            <form method=\"post\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-md-4\">\n");
      out.write("                        <div class=\"profile-img\">\n");
      out.write("                            <img src=\"");
      out.print( rs.getString("photo"));
      out.write("\" />\n");
      out.write("                            <div class=\"file btn btn-lg btn-primary\">\n");
      out.write("                                Change Photo\n");
      out.write("                                <input type=\"file\" name=\"file\"/>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-md-6\">\n");
      out.write("                        <div class=\"profile-head\">\n");
      out.write("                                    <h5>\n");
      out.write("                                        ");
      out.print(rs.getString("name"));
      out.write("\n");
      out.write("                                    </h5>\n");
      out.write("                                    <h6>\n");
      out.write("                                        ");
      out.print(rs.getString("primarylanguage"));
      out.write(" Developer and Designer\n");
      out.write("                                    </h6>\n");
      out.write("                                    <p class=\"proile-rating\">RANKINGS : <span>8/10</span></p>\n");
      out.write("                            <ul class=\"nav nav-tabs\" id=\"myTab\" role=\"tablist\">\n");
      out.write("                                <li class=\"nav-item\">\n");
      out.write("                                    <a class=\"nav-link active\" id=\"home-tab\" data-toggle=\"tab\" href=\"#home\" role=\"tab\" aria-controls=\"home\" aria-selected=\"true\">About</a>\n");
      out.write("                                </li>\n");
      out.write("                                <li class=\"nav-item\">\n");
      out.write("                                    <a class=\"nav-link\" id=\"profile-tab\" data-toggle=\"tab\" href=\"#profile\" role=\"tab\" aria-controls=\"profile\" aria-selected=\"false\">Timeline</a>\n");
      out.write("                                </li>\n");
      out.write("                            </ul>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-md-2\">\n");
      out.write("                        <input type=\"submit\" class=\"profile-edit-btn\" name=\"btnAddMore\" value=\"Edit Profile\"/>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-md-4\">\n");
      out.write("                        <div class=\"profile-work\">\n");
      out.write("                            <p>WORK LINK</p>\n");
      out.write("                            <a href=\"\">Website Link</a><br/>\n");
      out.write("                            <a href=\"\">Bootsnipp Profile</a><br/>\n");
      out.write("                            <a href=\"\">Bootply Profile</a>\n");
      out.write("                            <p>SKILLS</p>\n");
      out.write("                            <a href=\"\">Web Designer</a><br/>\n");
      out.write("                            <a href=\"\">Web Developer</a><br/>\n");
      out.write("                            <a href=\"\">WordPress</a><br/>\n");
      out.write("                            <a href=\"\">WooCommerce</a><br/>\n");
      out.write("                            <a href=\"\">PHP, .Net</a><br/>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-md-8\">\n");
      out.write("                        <div class=\"tab-content profile-tab\" id=\"myTabContent\">\n");
      out.write("                            <div class=\"tab-pane fade show active\" id=\"home\" role=\"tabpanel\" aria-labelledby=\"home-tab\">\n");
      out.write("                                        <div class=\"row\">\n");
      out.write("                                            <div class=\"col-md-6\">\n");
      out.write("                                                <label>User Id</label>\n");
      out.write("                                            </div>\n");
      out.write("                                            <div class=\"col-md-6\">\n");
      out.write("                                                <p>");
      out.print(username);
      out.write("</p>\n");
      out.write("                                            </div>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"row\">\n");
      out.write("                                            <div class=\"col-md-6\">\n");
      out.write("                                                <label>Name</label>\n");
      out.write("                                            </div>\n");
      out.write("                                            <div class=\"col-md-6\">\n");
      out.write("                                                <p>");
      out.print(rs.getString("name"));
      out.write("</p>\n");
      out.write("                                            </div>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"row\">\n");
      out.write("                                            <div class=\"col-md-6\">\n");
      out.write("                                                <label>Email</label>\n");
      out.write("                                            </div>\n");
      out.write("                                            <div class=\"col-md-6\">\n");
      out.write("                                                <p>");
      out.print(rs.getString("email"));
      out.write("</p>\n");
      out.write("                                            </div>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"row\">\n");
      out.write("                                            <div class=\"col-md-6\">\n");
      out.write("                                                <label>Phone</label>\n");
      out.write("                                            </div>\n");
      out.write("                                            <div class=\"col-md-6\">\n");
      out.write("                                                <p>123 456 7890</p>\n");
      out.write("                                            </div>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"row\">\n");
      out.write("                                            <div class=\"col-md-6\">\n");
      out.write("                                                <label>Profession</label>\n");
      out.write("                                            </div>\n");
      out.write("                                            <div class=\"col-md-6\">\n");
      out.write("                                                <p>Web Developer and Designer</p>\n");
      out.write("                                            </div>\n");
      out.write("                                        </div>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"tab-pane fade\" id=\"profile\" role=\"tabpanel\" aria-labelledby=\"profile-tab\">\n");
      out.write("                                        <div class=\"row\">\n");
      out.write("                                            <div class=\"col-md-6\">\n");
      out.write("                                                <label>Experience</label>\n");
      out.write("                                            </div>\n");
      out.write("                                            <div class=\"col-md-6\">\n");
      out.write("                                                <p>Expert</p>\n");
      out.write("                                            </div>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"row\">\n");
      out.write("                                            <div class=\"col-md-6\">\n");
      out.write("                                                <label>Hourly Rate</label>\n");
      out.write("                                            </div>\n");
      out.write("                                            <div class=\"col-md-6\">\n");
      out.write("                                                <p>10$/hr</p>\n");
      out.write("                                            </div>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"row\">\n");
      out.write("                                            <div class=\"col-md-6\">\n");
      out.write("                                                <label>Total Projects</label>\n");
      out.write("                                            </div>\n");
      out.write("                                            <div class=\"col-md-6\">\n");
      out.write("                                                <p>230</p>\n");
      out.write("                                            </div>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"row\">\n");
      out.write("                                            <div class=\"col-md-6\">\n");
      out.write("                                                <label>English Level</label>\n");
      out.write("                                            </div>\n");
      out.write("                                            <div class=\"col-md-6\">\n");
      out.write("                                                <p>Expert</p>\n");
      out.write("                                            </div>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"row\">\n");
      out.write("                                            <div class=\"col-md-6\">\n");
      out.write("                                                <label>Availability</label>\n");
      out.write("                                            </div>\n");
      out.write("                                            <div class=\"col-md-6\">\n");
      out.write("                                                <p>6 months</p>\n");
      out.write("                                            </div>\n");
      out.write("                                        </div>\n");
      out.write("                                <div class=\"row\">\n");
      out.write("                                    <div class=\"col-md-12\">\n");
      out.write("                                        <label>Your Bio</label><br/>\n");
      out.write("                                        <p>Your detail description</p>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </form>\n");
      out.write("                                                ");
}

      out.write("\n");
      out.write("            \n");
      out.write("                                                                           \n");
      out.write("             ");
         
            }
            catch(Exception ex)
            {
                ex.printStackTrace();
            }
        
      out.write("\n");
      out.write("     \n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
