<%@ WebHandler Language="C#" Class="AddressBook" %>

using System;
using System.Web;

public class AddressBook : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {
        context.Response.ContentType = "text/plain";
        
        string op = "({'AddressBook':[{'Address': 'Sailsbury House', 'City': 'Hinckley','PostalCode': 99999},{'Address': 'Rosebury Avenue', 'City': 'London','PostalCode': 99999}] })";
        
        context.Response.Write(op);

    }
 
    public bool IsReusable {
        get {
            return true;
        }
    }

}