package delivery.action;

import delivery.model.*;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;
import javax.servlet.ServletContext;
import com.opensymphony.xwork2.Preparable;
import co.aceteq.util.DBConnection;
import co.aceteq.objects.Objects;

public class PaymentReceivedAction extends ActionSupport implements Preparable
{

	private PaypalPDT pdt;
	private String tx;
	private String st;
	private String amt;
	private String cc;
	private String item_name;

	public void prepare(){
		System.out.println("Being prepared\n\n8888888888888888888888\n");
		if(ServletActionContext.getServletContext().getAttribute("dbPool") == null)
		{
			DBConnection db = new DBConnection();
			ServletActionContext.getServletContext().setAttribute("dbPool",db);
			Objects.setPool(db);
		}
		ServletActionContext.getServletContext().setAttribute("Application","Aceteq Delivery");
	}

	public String execute() throws Exception
	{
		ServletActionContext.getServletContext().setAttribute("Application","Aceteq Delivery");
		pdt = new PaypalPDT();
		pdt.setTx(tx);
		pdt.setAmt(amt);
		pdt.setSt(st);
		pdt.setCc(cc);
		pdt.setItem_name(item_name);
		boolean verify = pdt.verifyTransaction();
		if(verify){
			pdt.save();
			return "success";
		}
		else{
			pdt.save();
			return "retry";
		}
	}

	public void setPdt(PaypalPDT p)
	{
		this.pdt = p;
	}

	public PaypalPDT getPdt()
	{
		return this.pdt;
	}

	public void setTx(String x)
	{
		this.tx = x;
	}
	
	public String getTx()
	{
		return this.tx;
	}

	public void setSt(String x)
	{
		this.st = x;
	}

	public String getSt()
	{
		return this.st;
	}

	public void setAmt(String x)
	{
		this.amt = x;
	}

	public String getAmt()
	{
		return this.amt;
	}

	public void setCc(String x)
	{
		this.cc = x;
	}

	public void setItem_name(String x)
	{	
		this.item_name = x;
	}

	public String getCc()
	{
		return this.cc;
	}

	public String getItem_name()
	{
		return this.item_name;
	}
}
