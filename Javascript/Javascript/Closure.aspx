<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Closure.aspx.cs" Inherits="Javascript.Closure" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <script type="text/javascript" lang="Javascript">

         /*Closure in JS is basically an inner function create inside another 
         function whihc will have access to outer fucntion parameters, variable and global variable*/

         //Outer function
        function addNumbers(firstNumber, secondNumber) {

            var returnStatement = "The Result is: ";
            function add() { //<= inner function
                return returnStatement + (firstNumber + secondNumber); //<=accessing outer parametsr and varaibles
            }

            return add(); // call inner function from outer function
        }

        var result = addNumbers(10,20); //<=call outer function
        document.write(result);

    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
    </form>
</body>
</html>
