//��½����  
  
package yan.guoqi;  
  
import javax.servlet.http.*;  
  
import java.io.*;  
  
  
public class Login extends HttpServlet{  
      
    public void doGet(HttpServletRequest req, HttpServletResponse res){  
    //ҵ���߼�  
    try{  
        //����������  
        res.setContentType("text/html;charset=gbk");  
        PrintWriter pw = res.getWriter();  
          
        //���ص�½ҳ��  
        pw.println("<html>");  
        pw.println("<body>");  
        pw.println("<h1>��½����</h1>");  
        pw.println("<form action=logincl method=post>");  
        pw.println("�û���:<input type=text name=username><br>");  
        pw.println("����:<input type=password name=passwd><br>");  
        pw.println("<input type=submit value=��½><br>");  
        pw.println("</form>");  
        pw.println("<body/>");  
        pw.println("<html/>");  
    }  
    catch(Exception ex){  
        ex.printStackTrace();  
    }  
      
         
    }  
      
    public void doPost(HttpServletRequest req, HttpServletResponse res){  
          
        this.doGet(req, res);  
    }  
}  
