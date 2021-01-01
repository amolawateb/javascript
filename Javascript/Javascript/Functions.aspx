<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Functions.aspx.cs" Inherits="Javascript.Functions" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript" lang="Javascript">

        function addNumber(firstNumber, secondNumber) {
            var first = document.getElementById(firstNumber).value;
            var second = document.getElementById(secondNumber).value;
            document.getElementById("result").innerHTML = Number(first) + Number(second);
        }


        //normal function
        function add(firstNumber, secondNumber) {
            return firstNumber + secondNumber;
        }

        var result = add(10, 20);
        document.write(result);

        document.write("<br/>");
        //anyanomous function
        var add = function(firstNumber, secondNumber) {
            return firstNumber + secondNumber;
        }

        var result = add(20, 20);
        document.write(result);

        document.write("<br/>");

        //named function
          var addresult = function add(firstNumber, secondNumber) {
            return firstNumber + secondNumber;
        }

        var result = addresult(20, 30);
        document.write(result);

        document.write("<br/>");

         //self invoked function
        var addresult = (function add(firstNumber, secondNumber) {
            return firstNumber + secondNumber;
        }(50,50));
        document.write(addresult);
    </script>
</head>
<body>
    <form id="form1" runat="server">
       <table>
           <tr>
               <td>
                   First Numer :
               </td>
               <td>
                   <input type="text" id="firstNumber" />
               </td>
           </tr>
           <tr>
               <td>
                   Seconf Numer :
               </td>
               <td>
                   <input type="text" id="secondNumber" />
               </td>
           </tr>
           <tr>
               <td>
                   <input type="button" name="Add" value="Add" onclick="addNumber('firstNumber','secondNumber')"/>
                   <div id="result"></div>
               </td>
           </tr>
       </table>
    </form>
</body>
</html>
