<%@ WebHandler Language="C#" Class="PowersHandler" %>

using System;
using System.Web;

public class PowersHandler : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {
        System.Threading.Thread.Sleep(2000);
        string o = context.Request["number"];
        double d = 0;
        try
        {

            d = Convert.ToDouble(o);

            //d *= d;
            

            System.Text.StringBuilder s = new System.Text.StringBuilder();

            s.Append("({");
            s.Append("number:" + d  + ", ");
            s.Append("square:" + d*d + ", ");
            s.Append("cube:" + d*d*d  );
            s.Append("})");
            
            context.Response.Write(s);
            context.Response.StatusCode = 200;
        }
        catch (FormatException)
        {
            context.Response.StatusCode = 400;
            context.Response.Write("Invalid cast");
        }
        catch (Exception)
        {
            context.Response.StatusCode = 400;
            context.Response.Write("Unknown error");
        }
        
        
        context.Response.ContentType = "text/plain";
        
        
        
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}