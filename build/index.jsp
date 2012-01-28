Product Delivery System


download.wp-demon.com > Redirects to paypal > comes back to website > enters contact email > clicks download link 


download?product=wpdemon&package=trial > gets the price of the package and redirects to paypal > on return verifies payment > redirects to end url

<form action="deliver" method="post">

	<input type="text" name="product.name" value="blah"/>
	<br />
	<input type="text" name="product.pkg" value="bing" />
	<input type="submit" value="Save" />
</form>


<br />
<br />


<form action="https://www.sandbox.paypal.com/cgi-bin/webscr" method="post">
<input type="hidden" name="cmd" value="_xclick">
<input type="hidden" name="business" value="apwpp_1310024944_biz@gmail.com">
<input type="hidden" name="item_name" value="dave's mercedes newsletter">
<input type="hidden" name="item_number" value="1111">
<input type="hidden" name="currency_code" value="USD" />
<input type="hidden" name="return" value="http://localhost:8080/delivery-system/success" />
<input type="hidden" name="amount" value="10"/>
<input type="submit" name="submit" alt="Make payments with PayPal - it's fast, free and secure!" value="Pay" />
</form>



zW23TEL-sHErudZAvhyX5fythMDM8zmA_nNcbmgucFrE6QfSOjVpY4AOxh4

<form method="get" action="https://www.sandbox.paypal.com/cgi-bin/webscr"> 
<input type="hidden" name="cmd" value="_notify-synch"> 
<input type="hidden" name="tx" value="2MC185848H711622P"> 
<input type="hidden" name="at" value="zW23TEL-sHErudZAvhyX5fythMDM8zmA_nNcbmgucFrE6QfSOjVpY4AOxh4" />
<input type="submit" value="PDT"> 
</form>
