//�û���֤servlet  
  
  
package yan.guoqi;  
  
import javax.servlet.http.*;  
  
import java.io.*;  
  
  
  
public class LoginCL extends HttpServlet{  
      
    public void doGet(HttpServletRequest req, HttpServletResponse res){  
    //ҵ���߼�  
    try{  
    //�����û���������  
    String u = req.getParameter("username");  
    String p = req.getParameter("passwd");  
    //��֤  
    if(u.equals("yan") && p.equals("yan")){  
        //�Ϸ�  
        //��ת��welcome  
              
        res.sendRedirect("wel");  
          
    }  
    else{  
        //���Ϸ�  
        //��ת  
        res.sendRedirect("login");//��Ҫ��ת��servlet��url  
    }  
          
      
    }  
    catch(Exception ex){  
        ex.printStackTrace();  
    }  
      
          
    }  
      
    public void doPost(HttpServletRequest req, HttpServletResponse res){  
          
        this.doGet(req, res);  
    }  
}  
