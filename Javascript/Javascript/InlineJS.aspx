<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InlineJS.aspx.cs" Inherits="Javascript.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript" lang="javascript">
        function ValidateForm() {
            var ret = true;
            if (document.getElementById("txtFirstName").value == "")
            {
                document.getElementById("lblFirstName").innerText = "First Name is required";
                ret = false;
            }
            else
            {
                document.getElementById("lblFirstName").innerText = "";
            }

            if (document.getElementById("txtLastName").value == "")
            {
                document.getElementById("lblLastName").innerText = "Last Name is required";
                ret = false;
            }
            else
            {
                document.getElementById("lblLastName").innerText = "";
            }

            if (document.getElementById("txtEmail").value == "") 
            {
                document.getElementById("lblEmail").innerText = "Email is required";
                ret = false;
            }
            else
            {
                document.getElementById("lblEmail").innerText = "";
            }
            return ret;
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>First Name
                    </td>
                    <td>
                        <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="lblFirstName" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Last Name
                    </td>
                    <td>
                        <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="lblLastName" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Email
                    </td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="lblEmail" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
            </table>
            <br />
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" OnClientClick="return ValidateForm()"/>
        </div>
    </form>
</body>
</html>
