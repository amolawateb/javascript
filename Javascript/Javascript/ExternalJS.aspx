<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ExternalJS.aspx.cs" Inherits="Javascript.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript" lang="JavaScript" src="ExternalJavaScript.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        Number:
        <asp:TextBox ID="txtNumber" runat="server" />
        <input type="button" id="btnSubmit" value="Submit" onclick="EvenOrOdd()"/>
    </form>
</body>
</html>
