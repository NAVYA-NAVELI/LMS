package org.apache.jsp.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class add_005fuser_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <link href=\"../css-code/add_user.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"outer\">\n");
      out.write("            <div class=\"container\">     \n");
      out.write("                <h1>Add User</h1>      \n");
      out.write("                <form>     \n");
      out.write("                    <div class=\"form-group\">       \n");
      out.write("                        <label for=\"exampleInputEmail1\">User Name:</label>       \n");
      out.write("                        <input type=\"text\" class=\"form-control\" id=\"exampleInputEmail1\">     \n");
      out.write("                    </div>     \n");
      out.write("                    <div class=\"form-group\">       \n");
      out.write("                        <label for=\"exampleInputPassword1\">Gender:</label>       \n");
      out.write("                        <input type=\"radio\" class=\"form-control\" id=\"exampleInputPassword1\" name=\"g\">Male\n");
      out.write("                        <input type=\"radio\" class=\"form-control\" id=\"exampleInputPassword1\" name=\"g\">Female     \n");
      out.write("                    </div> \n");
      out.write("                    <div class=\"form-group\">       \n");
      out.write("                        <label for=\"exampleInputEmail1\">Mobile:</label>       \n");
      out.write("                        <input type=\"number\" class=\"form-control\" id=\"exampleInputEmail1\">     \n");
      out.write("                    </div> \n");
      out.write("                    <div class=\"form-group\">       \n");
      out.write("                        <label for=\"exampleInputEmail1\">E-mail:</label>       \n");
      out.write("                        <input type=\"email\" class=\"form-control\" id=\"exampleInputEmail1\">     \n");
      out.write("                    </div> \n");
      out.write("                    <div class=\"form-group\">       \n");
      out.write("                        <label for=\"exampleInputEmail1\">Course:</label>       \n");
      out.write("                        <select>\n");
      out.write("                            <option>B A</option>\n");
      out.write("                            <option>B Com</option>\n");
      out.write("                            <option>B Sc</option>\n");
      out.write("                            <option>B C A</option>\n");
      out.write("                            <option>B B A</option>\n");
      out.write("                            <option>B Tech</option>\n");
      out.write("                            <option>B Ed</option>\n");
      out.write("                            <option>B J M C</option>\n");
      out.write("                            <option> M A</option>\n");
      out.write("                            <option>M Com</option>\n");
      out.write("                            <option>M Sc</option>\n");
      out.write("                            <option>M C A</option>\n");
      out.write("                            <option>M B A</option>\n");
      out.write("                            <option>M Tech</option>\n");
      out.write("                            <option>M Ed</option>\n");
      out.write("                            <option>M J M C</option>\n");
      out.write("                        </select>   \n");
      out.write("                    </div> \n");
      out.write("                    <button type=\"submit\" class=\"btn btn-default\">Add User</button>     \n");
      out.write("                </form>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
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
