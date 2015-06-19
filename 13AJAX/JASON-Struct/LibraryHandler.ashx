<%@ WebHandler Language="C#" Class="LibraryHandler" %>

using System;
using System.Web;
using System.Web.Script.Serialization;

public class LibraryHandler : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {
        context.Response.ContentType = "text/plain";
        
         string o = context.Request["number"];
         double d = 0;
        
        d = Convert.ToDouble(o);

         var pr = new { Number = d, Cube = d * d * d, Square = d * d };
        
        JavaScriptSerializer jss = new JavaScriptSerializer();

        string op = jss.Serialize(pr);

        context.Response.Write(op);
       

        
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}