package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class changepassword_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        \n");
      out.write("        <title>Flex Art Corporate Category Flat Bootstrap Responsive Website Template | Home : W3layouts</title>\n");
      out.write("\n");
      out.write("        <!-- Meta tag Keywords -->\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta name=\"keywords\" content=\"Flex Art Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, \n");
      out.write("              Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design\" />\n");
      out.write("        \n");
      out.write("        <link href=\"css/minimal-slider.css\" rel='stylesheet' type='text/css' />\n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/bootstrap.css\"> <!-- Bootstrap-Core-CSS -->\n");
      out.write("        <link href=\"css/style6.css\" rel='stylesheet' type='text/css' />\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/style.css\" type=\"text/css\" media=\"all\" /> <!-- Style-CSS --> \n");
      out.write("        <link rel=\"stylesheet\" href=\"css/fontawesome-all.css\"> <!-- Font-Awesome-Icons-CSS -->\n");
      out.write("\n");
      out.write("        <link href=\"//fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&amp;subset=latin-ext\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("\n");
      out.write("        <script>\n");
      out.write("            function userchangepasswordfx(){\n");
      out.write("                alert('a');\n");
      out.write("            var username=document.getElementById(\"username\").value;\n");
      out.write("            var oldpassword=document.getElementById(\"oldpassword\").value;\n");
      out.write("            var newpassword=document.getElementById(\"newpassword\").value;\n");
      out.write("            var confirmpassword=document.getElementById(\"confirmpassword\").value;\n");
      out.write("            \n");
      out.write("            if(username==\"\" || oldpassword==\"\" || newpassword==\"\" || confirmpassword==\"\"){\n");
      out.write("                document.getElementById(\"errorchangepassword\").innerHTML=\"please fill all the fields\";\n");
      out.write("            }\n");
      out.write("            else if(newpassword != confirmpassword){\n");
      out.write("                document.getElementById(\"errorchangepassword\").innerHTML=\"newpassword is not equal to confirm password\";\n");
      out.write("            }\n");
      out.write("            else{\n");
      out.write("                var xhttp = new XMLHttpRequest();\n");
      out.write("\n");
      out.write("                    xhttp.onreadystatechange = function ()\n");
      out.write("                    {\n");
      out.write("                        if (this.readyState == 4 && this.status == 200)\n");
      out.write("                        {\n");
      out.write("                            var res = this.responseText;\n");
      out.write("                            res = res.trim();\n");
      out.write("                            alert(res);\n");
      out.write("                            if (res == \"success\") {\n");
      out.write("                                document.getElementById(\"errorchanegpassword\").innerHTML = \"Password changed\";\n");
      out.write("                                \n");
      out.write("\n");
      out.write("                            } else {\n");
      out.write("                                document.getElementById(\"errorchangepassword\").innerHTML = \"password change fail\";\n");
      out.write("                            }\n");
      out.write("                        }\n");
      out.write("                        ;\n");
      out.write("\n");
      out.write("                      \n");
      out.write("                    }\n");
      out.write("                    \n");
      out.write("                      var url = \"./userchangepassword?username=\" + username + \"&oldpassword=\" + oldpassword + \"&newpassword=\" +newpassword;\n");
      out.write("                        xhttp.open(\"GET\", url, true);\n");
      out.write("                        xhttp.send();\n");
      out.write("\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("        }\n");
      out.write("            </script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"login px-4 mx-auto mw-100\">\n");
      out.write("                            <h5 class=\"text-center mb-4\">change password</h5>\n");
      out.write("                            <form action=\"#\" method=\"post\">\n");
      out.write("                                <div class=\"form-group\">\n");
      out.write("                                    <label class=\"mb-2\">Username</label>\n");
      out.write("                                    <input type=\"text\" class=\"form-control\" id=\"username\" aria-describedby=\"emailHelp\" placeholder=\"\" required=\"\">\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"form-group\">\n");
      out.write("                                    <label class=\"mb-2\">Enter old Password</label>\n");
      out.write("                                    <input type=\"password\" class=\"form-control\" id=\"oldpassword\" placeholder=\"\" required=\"\">\n");
      out.write("                                </div>\n");
      out.write("<div class=\"form-group\">\n");
      out.write("                                    <label class=\"mb-2\">Enter new Password</label>\n");
      out.write("                                    <input type=\"password\" class=\"form-control\" id=\"newpassword\" placeholder=\"\" required=\"\">\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"form-group\">\n");
      out.write("                                    <label class=\"mb-2\">Confirm Password</label>\n");
      out.write("                                    <input type=\"password\" class=\"form-control\" id=\"confirmpassword\" placeholder=\"\" required=\"\">\n");
      out.write("                                </div>\n");
      out.write("                                <input type=\"button\" class=\"btn btn-primary submit mb-4\" onclick=\"userchangepasswordfx()\" value=\"Change password\">\n");
      out.write("                                \n");
      out.write("                                <h1 id=\"errorchangepassword\"><h1>\n");
      out.write("                                        <p class=\"text-center pb-4\">\n");
      out.write("                                            <a href=\"#\" data-toggle=\"modal2\" data-target=\"#exampleModalCenter\"> Don't have an account?</a>\n");
      out.write("                                        </p>\n");
      out.write("                                        </form>\n");
      out.write("                                        </div>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("         <!-- js -->\n");
      out.write("                                        <script src=\"js/jquery-2.1.4.min.js\"></script>\n");
      out.write("                                        <script src=\"js/bootstrap.js\"></script> <!-- Necessary-JavaScript-File-For-Bootstrap --> \n");
      out.write("                                        <!-- //js -->\n");
      out.write("\n");
      out.write("                                        <!-- search overlay -->\n");
      out.write("                                        <script src=\"js/modernizr-2.6.2.min.js\"></script> \n");
      out.write("                                        <!-- //search overlay -->\n");
      out.write("\n");
      out.write("                                        <!--search jQuery-->\n");
      out.write("                                        <script src=\"js/classie-search.js\"></script>\n");
      out.write("                                        <script src=\"js/demo1-search.js\"></script>\n");
      out.write("                                        <!--//search jQuery-->\n");
      out.write("\n");
      out.write("                                        <!-- dropdown nav -->\n");
      out.write("                                        <script>\n");
      out.write("                                                                    $(document).ready(function () {\n");
      out.write("                                                                        $(\".dropdown\").hover(\n");
      out.write("                                                                                function () {\n");
      out.write("                                                                                    $('.dropdown-menu', this).stop(true, true).slideDown(\"fast\");\n");
      out.write("                                                                                    $(this).toggleClass('open');\n");
      out.write("                                                                                },\n");
      out.write("                                                                                function () {\n");
      out.write("                                                                                    $('.dropdown-menu', this).stop(true, true).slideUp(\"fast\");\n");
      out.write("                                                                                    $(this).toggleClass('open');\n");
      out.write("                                                                                }\n");
      out.write("                                                                        );\n");
      out.write("                                                                    });\n");
      out.write("                                        </script>\n");
      out.write("                                        <!-- //dropdown nav -->\n");
      out.write("\n");
      out.write("                                        <!-- banner slider js -->\n");
      out.write("                                        <script src=\"js/minimal-slider.js\"></script>\n");
      out.write("                                        <!-- //banner slider js -->\n");
      out.write("\n");
      out.write("                                        <!-- Stats-Number-Scroller-Animation-JavaScript -->\n");
      out.write("                                        <script src=\"js/waypoints.min.js\"></script> \n");
      out.write("                                        <script src=\"js/counterup.min.js\"></script> \n");
      out.write("                                        <script>\n");
      out.write("                                                                    jQuery(document).ready(function ($) {\n");
      out.write("                                                                        $('.counter').counterUp({\n");
      out.write("                                                                            delay: 100,\n");
      out.write("                                                                            time: 1000\n");
      out.write("                                                                        });\n");
      out.write("                                                                    });\n");
      out.write("                                        </script>\n");
      out.write("                                        <!-- //Stats-Number-Scroller-Animation-JavaScript -->\n");
      out.write("\n");
      out.write("                                        <!-- start-smoth-scrolling -->\n");
      out.write("                                        <script src=\"js/SmoothScroll.min.js\"></script>\n");
      out.write("                                        <script src=\"js/move-top.js\"></script>\n");
      out.write("                                        <script src=\"js/easing.js\"></script>\n");
      out.write("                                        <script>\n");
      out.write("                                                                    jQuery(document).ready(function ($) {\n");
      out.write("                                                                        $(\".scroll\").click(function (event) {\n");
      out.write("                                                                            event.preventDefault();\n");
      out.write("                                                                            $('html,body').animate({scrollTop: $(this.hash).offset().top}, 1000);\n");
      out.write("                                                                        });\n");
      out.write("                                                                    });\n");
      out.write("                                        </script>\n");
      out.write("                                        <!-- here stars scrolling icon -->\n");
      out.write("                                        <script>\n");
      out.write("                                            $(document).ready(function () {\n");
      out.write("                                                /*\n");
      out.write("                                                 var defaults = {\n");
      out.write("                                                 containerID: 'toTop', // fading element id\n");
      out.write("                                                 containerHoverID: 'toTopHover', // fading element hover id\n");
      out.write("                                                 scrollSpeed: 1200,\n");
      out.write("                                                 easingType: 'linear' \n");
      out.write("                                                 };\n");
      out.write("                                                 */\n");
      out.write("\n");
      out.write("                                                $().UItoTop({easingType: 'easeOutQuart'});\n");
      out.write("\n");
      out.write("                                            });\n");
      out.write("                                        </script>\n");
      out.write("                                        <!-- //here ends scrolling icon -->\n");
      out.write("                                        <!-- start-smoth-scrolling -->\n");
      out.write("\n");
      out.write("                                       \n");
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
