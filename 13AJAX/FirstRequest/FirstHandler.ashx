<%@ WebHandler Language="C#" Class="FirstHandler"%>

using System;
using System.Web;

public class FirstHandler : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {

        System.Threading.Thread.Sleep(4000);
        context.Response.ContentType = "text/plain";
        context.Response.Write("Hello World");
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}