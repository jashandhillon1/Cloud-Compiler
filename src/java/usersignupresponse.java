

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import vmm.DBLoader;
import vmm.FileUploader;


@MultipartConfig
public class usersignupresponse extends HttpServlet {

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        
       PrintWriter out  = response.getWriter();
         
       try
       {
        
        // Extract text
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phoneno = request.getParameter("phoneno");
        String gender = request.getParameter("gender");
        String primarylanguage = request.getParameter("primarylanguage");
        
        
        // Extract file 
        Part p1 = request.getPart("photo");
        
        
        // Now Insert in Database
        ResultSet rs = DBLoader.executeSQl("select * from users where username=\'"+ username +"\'");
        
        if(rs.next())
        {
           out.println("Fail");
        }
        else
        {
            //  Save files on server
            String relpath="myuploads";
            String abspath = getServletContext().getRealPath("/"+relpath);
       
            
            String new_file_name = System.currentTimeMillis()+"-"+p1.getSubmittedFileName();
        
            String ans1 = FileUploader.savefileonserver(p1, abspath,new_file_name);
         
            
            rs.moveToInsertRow();
        
            rs.updateString("username", username);
            rs.updateString("password", password);
            rs.updateString("name", name);
            rs.updateString("email", email);
            rs.updateString("gender", gender);
            rs.updateString("phoneno", phoneno);
            rs.updateString("primarylanguage", primarylanguage);
            
            rs.updateString("photo", relpath+"/"+new_file_name );
        
            rs.insertRow();
        
            out.println("success");
        }
       }
       catch(Exception ex)
       {
           ex.printStackTrace();
       }
    }

   

}
