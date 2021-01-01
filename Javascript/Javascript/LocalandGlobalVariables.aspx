<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LocalandGlobalVariables.aspx.cs" Inherits="Javascript.LocalandGlobalVariables" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript" lang="Javascript">

        //if you declare variable outside  function its global or dont use var keyword
        var greeting = "Hello World Global Variable";

        function helloWorld() {
            var greeting = "Hello World Local";
            greeting += "????" ; 
            document.write(greeting);
        }

        helloWorld();
        greeting += "!!!"
        document.write("<br/>");
        document.write(greeting);

    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
    </form>
</body>
</html>
