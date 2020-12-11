function EvenOrOdd(){
    var number = document.getElementById("txtNumber").value;
    if (number == '')
    {
        alert("Please enter number");
    }
    else if (number % 2 == 0)
    {
        alert(number + " is Even");
    }
    else {
        alert(number + " is Odd");
    }
}