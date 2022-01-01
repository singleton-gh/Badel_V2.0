
package servlet;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet(name = "uploadImage", urlPatterns = {"/uploadImage"})
@MultipartConfig(maxFileSize = 116177216)//11.5mb
public class FileUploadInd extends HttpServlet {

    PrintWriter out;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        out = response.getWriter();
        int result = 0;
        Part part = request.getPart("image");
        if (part != null) {
            try {
               // Connection con = DB.getConnection();
                Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/badel", "root", "");
                PreparedStatement ps = con.prepareStatement("insert into data(image) values(?)");
                InputStream is = part.getInputStream();
                ps.setBlob(1, is);
                result = ps.executeUpdate();
              /*  if (result > 0) {
                    response.sendRedirect("view.jsp");
                } else {
                    response.sendRedirect("index.jsp?message=Some+Error+Occurred");
                }*/
            } catch (Exception e) {
                out.println(e);
            }
        }
    }

}