package abc;

import java.io.BufferedReader;
import com.email.durgesh.Email;
import java.io.InputStreamReader;
import java.net.PasswordAuthentication;
import java.net.URL;
import java.net.URLEncoder;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;
import java.util.Random;

import javax.net.ssl.HttpsURLConnection;

import com.email.durgesh.Email;
import com.mysql.cj.Session;
import com.mysql.cj.protocol.Message;
import com.sun.jdi.connect.Transport;
import com.sun.net.httpserver.Authenticator;
import com.sun.net.httpserver.HttpExchange;

public class Sql {
	
	public static Connection getConnection()
	{
		Connection con = null;
		
		
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/BunkHouse","root","R@jdeep9981");
			
			
		}
		catch(Exception exe)
		{
			System.out.println(exe);
		}
		return con;
		
	}
	// addding new Proprietor 
	public static int newProprietor(bean u)
	{
		

		int status = 0;
		
		try {
			
			Connection con = Sql.getConnection();
			
			PreparedStatement ps =con.prepareStatement ("insert into Proprietor values (?,?,?,?)");
			
			
			ps.setString(1, u.getName());
			ps.setString(2, u.getEmail());
			ps.setString(3, u.getPassword());
			ps.setString(4, u.getContact());
		
			
			status = ps.executeUpdate();
			
			
			
		}
		catch(Exception exe)
		{
			
		}
		return status;
		
	}
	
	
	//Login Proprietor (email and password)
	public static int Proprietorlogin(bean u)
	{
		int status = 0;
		
		try
		{
			Connection con = Sql.getConnection();
			PreparedStatement ps = con.prepareStatement("Select * from  Proprietor where Email = ? && Password = ?");
			ps.setString(1, u.getEmail());
			ps.setString(2, u.getPassword());
			
			ResultSet r = ps.executeQuery();
			
			if(r.next())
			{
				return status = 1;
	
			}
	}
		catch(Exception exe)
		{
			System.out.print(exe);
		}
		return status;
		
	}
	
	
	
	// check email and password for Proprietor Forget password 
	public static int ProprietorForgetpasscheck(bean u)
	{
		int status = 0;
		
		try
		{
			Connection con = Sql.getConnection();
			PreparedStatement ps = con.prepareStatement("Select * from  Proprietor where Email = ? && Contactno = ?");
			ps.setString(1, u.getEmail());
			ps.setString(2, u.getContact());
			
			ResultSet r = ps.executeQuery();
			
			if(r.next())
			{
				return status = 1;
	
			}
	}
		catch(Exception exe)
		{
			System.out.print(exe);
		}
		return status;
		
	}
	
	
	// sending otp
	
	public static String sendOTP(String message , String number)
	{
		String otpmessage = null;
		try
		{
		String sendId="CHKSMS";
		String language="english";
		String route="p";
		
		message=URLEncoder.encode(message,"UTF-8");   
		
		
		OTP otp = new OTP();
		otpmessage = otp.generateOTP(5);
		
		String apiKey = "40X2upGQF5ZYOcdxdhraG36G13PMDpXiHLQNK3bO0GpuJqsHRRPkLkGzAAV8";
		String myUrl="https://www.fast2sms.com/dev/bulkV2?authorization=40X2upGQF5ZYOcdxdhraG36G13PMDpXiHLQNK3bO0GpuJqsHRRPkLkGzAAV8&route=q&message="+message+otpmessage+"+&language=english&flash=0&numbers="+number;

		URL url=new URL(myUrl);
		HttpsURLConnection con= (HttpsURLConnection)url.openConnection();
		
		con.setRequestMethod("GET");
		
		con.setRequestProperty("User-Agent","Mozilla/5.0");
		con.setRequestProperty("cache-control", "no-cache");
		
		int responseCode=  con.getResponseCode();
		
		StringBuffer response=new StringBuffer();
		
		BufferedReader br=new BufferedReader(new InputStreamReader(con.getInputStream()));
		
		while(true)
		{
			String line=br.readLine();
			
			if(line==null)
			{
				break;
			}
			
			response.append(line);
		}
		
		System.out.println(response);
		
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		
		return otpmessage;
	}
	
	// sending otp through mail
	
	public static String Mailotp(String mail , String mailname ,  String message , String message1 , String subject)
	{
		String otpmessage = null;
		try
		{
		
		
		OTP otp = new OTP();
		otpmessage = otp.generateOTP(5);
		
		Email email = new Email("services.bunkhouse@gmail.com", "Bunkhouse@1234");
		email.setFrom("services.bunkhouse@gmail.com", mailname);
		email.setSubject(subject);
		email.setContent("<h3>"+message+" </h3><h1>"+otpmessage+"</h1><h3>"+message1+"</h3>", "text/html");
		email.addRecipient(mail);
		email.send();
		
		
		
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		
		return otpmessage;
		
	}
	
	
	// Update Proprietor Password
	
	public static int Proprietorchangepass(bean u)
	{
		int status = 0;
		try
		{
			Connection con = Sql.getConnection();
			PreparedStatement ps = con.prepareStatement("update Proprietor set Password = ? where Contactno = ?");
			ps.setString(1, u.getPassword());
			ps.setString(2, u.getContact());
			
		status = ps.executeUpdate();
			
	}
		catch(Exception exe)
		{
			System.out.print(exe);
		}
		return status;
		
		
	}
	
	
	// show name of Proprietor in dashbord

	public static String Proprietor_login_name(bean u)
	{
		String name=null;
		
		try
		{
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("Select * from proprietor where Email = ?");
			ps.setString(1, u.getEmail());
			
			
			ResultSet r = ps.executeQuery();
			 while (r.next()) {
	               name	 = r.getString("name");
	                
	               
			
			
	}
		}
		catch(Exception exe)
		{
			System.out.print(exe);
		}
		 return name;
		
	}
	
	
	// Add New Property By Proprietor
	
	public static int AddNewProperty(Add_New_Property u)
	{

		int status = 0;
		
		try {
			
			Connection con = Sql.getConnection();
			
			PreparedStatement ps =con.prepareStatement ("insert into add_new_property values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			
			
			ps.setString(1, u.getPropertyid());
			ps.setString(2, u.getType());
			ps.setString(3, u.getAname());
			ps.setString(4, u.getAcity());
			ps.setString(5, u.getAstate());
			ps.setString(6, u.getApincode());
			ps.setString(7, u.getAaddress());
			ps.setString(8, u.getAlandmark());
			ps.setString(9, u.getTotalroom());
			ps.setString(10, u.getSinglebedacroom());
			ps.setString(11, u.getSinglebednonacroom());
			ps.setString(12, u.getDoublebedacroom());
			ps.setString(13, u.getDoublebednonacroom());
			ps.setString(14, u.getWifi());
			ps.setString(15, u.getWc());
			ps.setString(16, u.getProemail());
			ps.setString(17, u.getSingleacrate());
			ps.setString(18, u.getSinglenonacrate());
			ps.setString(19, u.getDoublenonacrate());
			ps.setString(20, u.getDoublenonacrate());
			ps.setString(21, u.getAcontact());
			ps.setString(22, u.getAlocation());
			
			
			status = ps.executeUpdate();
			
			
			
		}
		catch(Exception exe)
		{
			System.out.println(exe);
			
		}
		return status;
		
	}
	
	// View Property by propertier dashbord
	

	public static List<Add_New_Property> ViewPropertybymail(Add_New_Property i)
	{
		List <Add_New_Property> list = new ArrayList<Add_New_Property>();
		
		
		
		try
		{
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("SELECT * FROM add_New_property WHERE Insertedby=?");
			
		
			
			
			ps.setString(1, i.getProemail());
			
	
			ResultSet rs = ps.executeQuery();
			
			while(rs.next())
			{
				
				Add_New_Property q = new Add_New_Property();
				
				q.setPropertyid(rs.getString(1));
				q.setType(rs.getString(2));
				q.setAname(rs.getString(3));
				q.setAcity(rs.getString(4));
				q.setAstate(rs.getString(5));
				q.setApincode(rs.getString(6));
				q.setAaddress(rs.getString(7));
				q.setAlandmark(rs.getString(8));
				q.setTotalroom(rs.getString(9));
				q.setSinglebedacroom(rs.getString(10));
				q.setSinglebednonacroom(rs.getString(11));
				q.setDoublebedacroom(rs.getString(12));
				q.setSingleacrate(rs.getString(17));
				q.setSinglenonacrate(rs.getString(18));
				q.setDoublebednonacroom(rs.getString(13));
				q.setDoubleacrate(rs.getString(19));
				q.setDoublenonacrate(rs.getString(20));
				q.setWifi(rs.getString(14));
				q.setWc(rs.getString(15));
				q.setAcontact(rs.getString(21));
				
				
				
				
				list.add(q);
				
				
			}
			
			con.close();
			
		}
		catch(Exception exe)
		{
			System.out.print(exe);
		}
		return list;
	}


	
	
	// View All Property in Book form
	

	public static List<Add_New_Property> ViewAllProperty(Add_New_Property i)
	{
		List <Add_New_Property> list = new ArrayList<Add_New_Property>();
		
		
		
		try
		{
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("SELECT * FROM add_New_property");
			
		
			
			
		
			
	
			ResultSet rs = ps.executeQuery();
			
			while(rs.next())
			{
				
				Add_New_Property q = new Add_New_Property();
				
				q.setPropertyid(rs.getString(1));
				q.setType(rs.getString(2));
				q.setAname(rs.getString(3));
				q.setAcity(rs.getString(4));
				q.setAstate(rs.getString(5));
				q.setApincode(rs.getString(6));
				q.setAaddress(rs.getString(7));
				q.setAlandmark(rs.getString(8));
				q.setTotalroom(rs.getString(9));
				q.setSinglebedacroom(rs.getString(10));
				q.setSinglebednonacroom(rs.getString(11));
				q.setDoublebedacroom(rs.getString(12));
				q.setSingleacrate(rs.getString(17));
				q.setSinglenonacrate(rs.getString(18));
				q.setDoublebednonacroom(rs.getString(13));
				q.setDoubleacrate(rs.getString(19));
				q.setDoublenonacrate(rs.getString(20));
				q.setWifi(rs.getString(14));
				q.setWc(rs.getString(15));
				q.setAcontact(rs.getString(21));
				q.setAlocation(rs.getString(22));
				
				
				
				
				list.add(q);
				
				
			}
			
			con.close();
			
		}
		catch(Exception exe)
		{
			System.out.print(exe);
		}
		return list;
	}


	
	// addding new Student signup 
		public static int newStudentsignup(Student_login_bean u)
		{
			

			int status = 0;
			
			try {
				
				Connection con = Sql.getConnection();
				
				PreparedStatement ps =con.prepareStatement ("insert into student_login values (?,?,?,?)");
				
				
				ps.setString(1, u.getName());
				ps.setString(2, u.getEmail());
				ps.setString(3, u.getPassword());
				ps.setString(4, u.getContact());
			
				
				status = ps.executeUpdate();
				
				
				
			}
			catch(Exception exe)
			{
				
			}
			return status;
			
		}
		
		
		// Login Student (email and password)
			public static int StudentLogin(Student_login_bean u)
			{
				int status = 0;
				
				try
				{
					Connection con = Sql.getConnection();
					PreparedStatement ps = con.prepareStatement("Select * from  student_login where Email = ? && Password = ?");
					ps.setString(1, u.getEmail());
					ps.setString(2, u.getPassword());
					
					ResultSet r = ps.executeQuery();
					
					if(r.next())
					{
						return status = 1;
			
					}
			}
				catch(Exception exe)
				{
					System.out.print(exe);
				}
				return status;
				
			}
			
	

			// show name of Student in dashbord

			public static String Student_login_name(Student_login_bean u)
			{
				String name=null;
				
				try
				{
					Connection con = getConnection();
					PreparedStatement ps = con.prepareStatement("Select * from student_login where Email = ?");
					ps.setString(1, u.getEmail());
					
					
					ResultSet r = ps.executeQuery();
					 while (r.next()) {
			               name	 = r.getString("name");
			                
			               
					
					
			}
				}
				catch(Exception exe)
				{
					System.out.print(exe);
				}
				 return name;
				
			}
			
			
			// sending mail For Actions
			
			public static String Mailconfirmation(String mail , String mailname ,  String message , String message1 , String subject)
			{
				
				try
				{
				
				Email email = new Email("services.bunkhouse@gmail.com", "Bunkhouse@1234");
				email.setFrom("services.bunkhouse@gmail.com", mailname);
				email.setSubject(subject);
				email.setContent("<h3>"+message+" </h3><h1></h1><h3>"+message1+"</h3>", "text/html");
				email.addRecipient(mail);
				email.send();
				
				
				
				}
				catch(Exception e)
				{
					System.out.println(e);
				}
				
				return message;
				
			}
			
			
			// check email and password for Student Forget password 
			public static int StudentForgetpasscheck(String email , String number)
			{
				int status = 0;
				
				try
				{
					Connection con = Sql.getConnection();
					PreparedStatement ps = con.prepareStatement("Select * from  Student_login where Email = ? && Contactno = ?");
					ps.setString(1, email);
					ps.setString(2, number);
					
					ResultSet r = ps.executeQuery();
					
					if(r.next())
					{
						return status = 1;
			
					}
			}
				catch(Exception exe)
				{
					System.out.print(exe);
				}
				return status;
				
			}
			
			
			
			
			// addding Booking Details 
			public static int BookingDetails(book_details u)
			{
				

				int status = 0;
				
				try {
					
					Connection con = Sql.getConnection();
					
					PreparedStatement ps =con.prepareStatement ("insert into booking_details values (?,?,?,?,?,?,?,?,?,?,?,?,?)");
					
					
					ps.setString(1, u.getName1());
					ps.setString(2, u.getEmail());
					ps.setString(3, u.getCheckid());
					ps.setString(4, u.getContact());
					ps.setString(5, u.getId());
					ps.setString(6, u.getCity());
					ps.setString(7, u.getState());
					ps.setString(8, u.getRoomtype());
					ps.setString(9, u.getAddress());
					ps.setString(10, u.getPincode());
					ps.setString(11, u.getPropertyname());
					ps.setString(12, u.getPropertyid());
					ps.setString(13, u.getStatus());
				
					
					status = ps.executeUpdate();
					
					
					
				}
				catch(Exception exe)
				{
					
				}
				return status;
				
			}
			

			
	
	
























}
		


