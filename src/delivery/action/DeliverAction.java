package delivery.action;

import delivery.model.*;
import com.opensymphony.xwork2.ActionSupport;


public class DeliverAction extends ActionSupport{

	private static final long serialVersionUID = 1L;
	private Product product;

	public String execute() throws Exception{
		if(product.getPkg().equals("Developer"))
		{
			product.setAmount("20");
		}else
			product.setAmount("10");
		return "success"; 
	}
	
	public void setProduct(Product p)
	{
		this.product = p;
	}

	public Product getProduct()
	{
		return this.product;
	}


}
