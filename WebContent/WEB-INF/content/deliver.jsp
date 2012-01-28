<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<html>
<head>
	<title>
		Redirecting to Paypal
	</title>
</head>
<body>
<script type="text/javascript">
	function submitForm(){
		document.forms[0].submit();
	}
	window.onload= submitForm;
</script>
Redirecting to Paypal ..
<form action="https://www.paypal.com/cgi-bin/webscr" method="post" name="paypal-payment" id="paypal-payment">
<input type="hidden" name="cmd" value="_xclick">
<input type="hidden" name="business" value="mr.tachyon12@gmail.com">
<input type="hidden" name="item_name" value="<s:property value='product.name' /> <s:property value='product.pkg' />">
<input type="hidden" name="item_desc" value="Product Description" />
<input type="hidden" name="currency_code" value="USD" />
<input type="hidden" name="return" value="http://aceteq.in/delivery-system/payment-received" />
<input type="hidden" name="amount" value="<s:property value='product.amount' />"/>
<input type="submit" alt="Make payments with PayPal - it's fast, free and secure!" value="Pay" style="display:none" />
</form>
</body>
</html>
