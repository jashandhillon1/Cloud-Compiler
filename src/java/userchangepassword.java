/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import vmm.DBLoader;

/**
 *
 * @author 91905
 */
public class userchangepassword extends HttpServlet {

   
        
   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out=response.getWriter();
        try{
            
        String username=request.getParameter("username");
        String oldpassword=request.getParameter("oldpassword");
        String newpassword=request.getParameter("newpassword");
        ResultSet rs=DBLoader.executeSQl("Select * from users where username='"+username+"' and password='"+oldpassword+"'");
        if(rs.next()){
            request.getSession().removeAttribute("username");
            rs.updateString("password",newpassword);
            rs.updateRow();
            out.println("success");
        }
        else{
            out.println("fail");
        }
        
        }
        catch(Exception e){
            e.printStackTrace();
            }
    }

   
   // </editor-fold>

}
