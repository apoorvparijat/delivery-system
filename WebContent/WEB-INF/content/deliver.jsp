<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<s:property value="product.name" />
<s:property value="product.pkg" />

<form action="https://www.sandbox.paypal.com/cgi-bin/webscr" method="post">
<input type="hidden" name="cmd" value="_xclick">
<input type="hidden" name="business" value="apwpp_1310024944_biz@gmail.com">
<input type="hidden" name="item_name" value="<s:property value='product.name' /> <s:property value='product.pkg' />">
<input type="hidden" name="item_desc" value="Product Description" />
<input type="hidden" name="currency_code" value="USD" />
<input type="hidden" name="return" value="http://localhost:8080/delivery-system/payment-received" />
<input type="hidden" name="amount" value="<s:property value='product.amount' />"/>
<input type="submit" name="submit" alt="Make payments with PayPal - it's fast, free and secure!" value="Pay" />
</form>

