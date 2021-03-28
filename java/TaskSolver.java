import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "TaskSolver", value = "/TaskSolver")
public class TaskSolver extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            Double a = Double.parseDouble(request.getParameter("a"));
            Double b = Double.parseDouble(request.getParameter("b"));
            Double c = Double.parseDouble(request.getParameter("c"));
            Double d = Double.parseDouble(request.getParameter("d"));
            request.setAttribute("a",a);
            request.setAttribute("b",b);
            request.setAttribute("c",c);
            request.setAttribute("d",d);
            Cookie cookie = new Cookie("a",a.toString());
            Cookie cookie1 = new Cookie("b",b.toString());
            Cookie cookie2 = new Cookie("c",c.toString());
            Cookie cookie3 = new Cookie("d",d.toString());
            cookie.setMaxAge(7000);
            cookie1.setMaxAge(7000);
            cookie2.setMaxAge(7000);
            cookie3.setMaxAge(7000);
            Cookie[] cookies = request.getCookies();
            request.setAttribute("taskNumber",request.getParameter("taskNumber"));
            switch (request.getParameter("taskNumber")){
                case "7":
                    double result=Math.pow(4*Math.cosh(Math.sqrt(a/b))+3*Math.acos(c),d);
                    request.setAttribute("result", result);
                    break;
                case "8":
                    double result1=5*a/Math.sin(a)+Math.sqrt(Math.tanh(Math.abs(b)*c)/Math.log(d));
                    request.setAttribute("result", result1);
                    break;
                case "9":
                    double result2=(Math.sin(Math.abs(a))+Math.cos(Math.sqrt(b)))/(2*Math.tan(c)+Math.pow(Math.E,d));
                    request.setAttribute("result", result2);
                    break;
            }
    } catch (NumberFormatException e){
        request.setAttribute("result","Invalid parameter");

    } finally {
            RequestDispatcher rd =request.getRequestDispatcher("index.jsp");
            rd.forward(request,response);
        }


    }
}
