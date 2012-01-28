package delivery.action;

import delivery.model.*;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;
import javax.servlet.ServletContext;
import com.opensymphony.xwork2.Preparable;
import co.aceteq.util.DBConnection;
import co.aceteq.objects.Objects;
import co.aceteq.util.FetchData;
import java.sql.*;
import java.util.*;

public class DeliverAction extends ActionSupport implements Preparable{

	private static final long serialVersionUID = 1L;
	private Product product;
	private String verifyToken;
	public void prepare(){
		if(ServletActionContext.getServletContext().getAttribute("dbPool") == null)
		{
			DBConnection db = new DBConnection();
			ServletActionContext.getServletContext().setAttribute("dbPool",db);
			Objects.setPool(db);
		}
	}

	public String execute() throws Exception{
		if(product.getPkg().equals("Developer"))
		{
			product.setAmount("20");
		}else
			product.setAmount("10");
		return "success"; 
	}

	public String verifyDownload(){
		try{
			Map<String,String> strData = new HashMap<String,String>();
			strData.put("tx",verifyToken);
			strData.put("verified","true");
			ResultSet rs = FetchData.getRow("transactions",null,strData,null);
			if(rs != null && rs.next())
				return "success";
			else
				return "error";
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return "error";
	}
	
	public void setProduct(Product p)
	{
		this.product = p;
	}

	public Product getProduct()
	{
		return this.product;
	}

	public void setVerifyToken(String x)
	{
		this.verifyToken = x;
	}

	public String getVerifyToken()
	{
		return this.verifyToken;
	}
}
