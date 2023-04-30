package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class usersignup_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        \n");
      out.write("        <!-- Meta tag Keywords -->\n");
      out.write("\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("\t\n");
      out.write("\t<meta name=\"keywords\" content=\"Flex Art Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, \n");
      out.write("\tSmartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design\" />\n");
      out.write("\t\n");
      out.write("\t<!--// Meta tag Keywords -->\n");
      out.write("    \n");
      out.write("\t<!-- banner slider css -->\n");
      out.write("\t<link href=\"css/minimal-slider.css\" rel='stylesheet' type='text/css' />\n");
      out.write("\t<!-- //banner slider css -->\n");
      out.write("\t\n");
      out.write("\t<!-- css files -->\n");
      out.write("\t<link rel=\"stylesheet\" href=\"css/bootstrap.css\"> <!-- Bootstrap-Core-CSS -->\n");
      out.write("    <link href=\"css/style6.css\" rel='stylesheet' type='text/css' />\n");
      out.write("\t<link rel=\"stylesheet\" href=\"css/style.css\" type=\"text/css\" media=\"all\" /> <!-- Style-CSS --> \n");
      out.write("\t<link rel=\"stylesheet\" href=\"css/fontawesome-all.css\"> <!-- Font-Awesome-Icons-CSS -->\n");
      out.write("\t<!-- //css files -->\n");
      out.write("\t\n");
      out.write("\t<!--web font-->\n");
      out.write("\t<link href=\"//fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&amp;subset=latin-ext\" rel=\"stylesheet\">\n");
      out.write("\t<!--//web font-->\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"modal fade\" id=\"exampleModalCenter2\" tabindex=\"-1\" role=\"dialog\" aria-hidden=\"true\">\n");
      out.write("        <div class=\"modal-dialog modal-dialog-centered\" role=\"document\">\n");
      out.write("            <div class=\"modal-content\">\n");
      out.write("                <div class=\"modal-header text-center\">\n");
      out.write("                    <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\">\n");
      out.write("                        <span aria-hidden=\"true\">&times;</span>\n");
      out.write("                    </button>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"modal-body\">\n");
      out.write("                    <div class=\"login px-4 mx-auto mw-100\">\n");
      out.write("                        <h5 class=\"text-center mb-4\">Register Now</h5>\n");
      out.write("                        <form action=\"#\" method=\"post\">\n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                                <label>First name</label>\n");
      out.write("\n");
      out.write("                                <input type=\"text\" class=\"form-control\" id=\"validationDefault01\" placeholder=\"\" required=\"\">\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                                <label>Last name</label>\n");
      out.write("                                <input type=\"text\" class=\"form-control\" id=\"validationDefault02\" placeholder=\"\" required=\"\">\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                                <label class=\"mb-2\">Password</label>\n");
      out.write("                                <input type=\"password\" class=\"form-control\" id=\"password1\" placeholder=\"\" required=\"\">\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                                <label>Confirm Password</label>\n");
      out.write("                                <input type=\"password\" class=\"form-control\" id=\"password2\" placeholder=\"\" required=\"\">\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("                            <button type=\"submit\" class=\"btn btn-primary submit mb-4\">Register</button>\n");
      out.write("                            <p class=\"text-center pb-4\">\n");
      out.write("                                <a href=\"#\">By clicking Register, I agree to your terms</a>\n");
      out.write("                            </p>\n");
      out.write("                        </form>\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
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
