//��ӭ����  
  
  
package yan.guoqi;  
  
import javax.servlet.http.*;  
  
import java.io.*;  
  
  
public class Wel extends HttpServlet{  
      
    public void doGet(HttpServletRequest req, HttpServletResponse res){  
    //ҵ���߼�  
    try{  
        res.setContentType("text/html;charset=gbk");  
        PrintWriter pw = res.getWriter();             
        pw.println("Welcome,��ϲ�����ѳɹ���½��");  
      
  
  
    }  
    catch(Exception ex){  
        ex.printStackTrace();  
    }  
      
          
    }  
      
    public void doPost(HttpServletRequest req, HttpServletResponse res){  
          
        this.doGet(req, res);  
    }  
}  
