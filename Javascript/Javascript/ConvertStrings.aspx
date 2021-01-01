<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConvertStrings.aspx.cs" Inherits="Javascript.ConvertStrings" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript" lang="JavaScript">
        function addNumbers() {
            var fn = parseFloat(document.getElementById("txtFirstNumber").value);
            if (isNaN(fn)) {
                alert("Please enter a valid First Number");
                return;
            }

            var sn = parseFloat(document.getElementById("txtSecondNumber").value);
             if (isNaN(sn)) {
                 alert("Please enter a valid Second Number");
                 return;
            }

            document.getElementById("txtResult").value = fn + sn;
        }

    </script>
</head>
<body>
    <form id="form1" runat="server">
        <table>
            <tr>
                <td>First Number
                </td>
                <td>
                    <asp:TextBox ID="txtFirstNumber" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Second Number
                </td>
                <td>
                    <asp:TextBox ID="txtSecondNumber" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Result
                </td>
                <td>
                    <asp:TextBox ID="txtResult" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <input type="button" value="Add" onclick="addNumbers()" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
