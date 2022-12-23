<!DOCTYPE html>
<html>
<head>
<title>Awkward Dancing Vinyl Checkout</title>
</head>
<body>

<h1>Enter Payment Info and Customer Id to Complete Transaction:</h1>

<form method="get" action="order.jsp">
  <label for="paymentType">Payment Type:</label><br>
  <input type="text" name="paymentType"><br>
  <label for="paymentNumber">Payment Number:</label><br>
  <input type="text" name="paymentNumber"><br>
  <label for="paymentExpiryDate">Payment Expiry Date MM/YY:</label><br>
  <input type="text" name="paymentExpiryDate"><br>
   <label for="customerId">Customer Id:</label><br>
  <input type="text" name="customerId"><br>
  <input type="submit" value="Submit"><input type="reset" value="Reset">
</form>


</body>
</html>

