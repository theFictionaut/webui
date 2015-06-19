<%@ WebHandler Language="C#" Class="ImageService" %>

using System;
using System.Web;

public class ImageService : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {
        //System.Threading.Thread.Sleep(5000);
        context.Response.ContentType = "application/json";
        context.Response.Write("[{\"src\":\"images/stones.jpg\",\"alt\":\"Pretty stones\",\"caption\":\"My messing about with my camera in January\"},{\"src\":\"images/sea-mist.jpg\",\"alt\":\"Mist over the sea\",\"caption\":\"A misty day at sea\"},{\"src\":\"images/pier.jpg\",\"alt\":\"A scenic pier\"},{\"src\":\"images/mojave.jpg\",\"alt\":\"The mojave desert\"},{\"src\":\"images/lotus.jpg\",\"alt\":\"A lotus flower\"},{\"src\":\"images/lightning.jpg\",\"alt\":\"Lightening across the sky\"},{\"src\":\"images/ladybug.jpg\",\"alt\":\"Close up of a lady bird\"},{\"src\":\"images/grass-blades.jpg\",\"alt\":\"Individual blades of grass\"},{\"src\":\"images/flowing-rock.jpg\",\"alt\":\"Water flowing across a rock\"}] ");
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}