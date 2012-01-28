package delivery.action;

import delivery.model.*;
import com.opensymphony.xwork2.ActionSupport;
import co.aceteq.util.*;

public class TestAction extends ActionSupport{

	private static final long serialVersionUID = 1L;

	public String execute() throws Exception{
		System.out.println("Delivery System test.");
		connectDB();
		return "success";
	}

	public String downloadMeow() throws Exception{
		System.out.println("Delivering meow.mov");
		return "success";
	}

	public void connectDB(){
		DBConnection db = new DBConnection();
	}
}
