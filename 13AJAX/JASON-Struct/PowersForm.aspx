<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PowersForm.aspx.cs" Inherits="PowersForm" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <script type="text/javascript">
       
        
        function pageLoad() {
            $addHandler($get("btnPowers"), "click", btnPowersClick);
            
        }
        
        function btnPowersClick() {
             //Variablee decs
            var lbl = $get("lblAnswers");
            var data = $get("txtNumbers");
            var but = $get("btnPowers");

            //XMLreq initalise
            var req = new XMLHttpRequest();

            //open
            req.open("POST", "LibraryHandler.ashx", true);

            //set request
            req.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");

            req.send("number=" + data.value);




            req.onreadystatechange = function() {
                //wait until response
                if (req.readyState == 4) {
                    
                    var op = Sys.Serialization.JavaScriptSerializer.deserialize(req.responseText);

                    var sb = new Sys.StringBuilder();

                    Array.forEach(op, function (o) { sb.append(o) });
                    
             
                    
                    lbl.innerHTML = sb;

                    //enable button
                    but.disabled = false;
                }
            }
           }

    
    </script>

</head>
<body>
    <form id="form1" runat="server">
    <div id="b1">
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <br />
        <asp:TextBox ID="txtNumbers" runat="server"></asp:TextBox>
        <br />
        <br />
        <input id="btnPowers" type="button" value="button" /><br />
        <br />
        <asp:Label ID="lblAnswers" runat="server" Text="Label"></asp:Label>
    </div>
    </form>
</body>
</html>
