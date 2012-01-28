package delivery.model;

import delivery.model.*;

public class Product{
	
	private String name;
	private String pkg;
	private String amount;

	public Product(){
	}

	public void setName(String s){
		this.name = s;
	}

	public String getName(){
		return this.name;
	}

	public void setPkg(String s)
	{
		this.pkg = s;
	}

	public String getPkg()
	{
		return this.pkg;
	}

	public void setAmount(String a)
	{
		this.amount = a;
	}

	public String getAmount()
	{
		return this.amount;
	}

}
