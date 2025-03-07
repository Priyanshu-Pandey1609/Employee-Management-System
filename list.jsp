<%@ include file="navbar.jsp" %>
<html>
 <body  onload="makeActive('list')">
  <div class='container mt-5'>
  	<div class='card col-md-12 mx-auto' style='border:3px solid silver'>
  	  <div class='card-body'>
  	   <div class='table scrollit'>
  	    <table class='table table-hover'>
  	     <thead>
  	      <tr>
  	      	<th>Employee id</th><th>First name</th><th>Last name</th>
  	      	<th>Phone number</th><th>Email Id</th><th>Department</th><th>Salary</th>
  	      </tr>
  	     </thead>
  	     <tbody>
  	     <%
  	     Class.forName("com.mysql.cj.jdbc.Driver");
  	   	 Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp5","root","mysql");
  	     Statement st=cn.createStatement();
  	     ResultSet rst=st.executeQuery("select * from employeeinfo");
  	     while(rst.next())
  	     {
  	    	 %>
  	    	 <tr>
  	    	  <td><%=rst.getString(1)%></td>
  	    	  <td><%=rst.getString(2)%></td>
  	    	  <td><%=rst.getString(3)%></td>
  	    	  <td><%=rst.getString(4)%></td>
  	    	  <td><%=rst.getString(5)%></td>
  	    	  <td><%=rst.getString(6)%></td>
  	    	  <td>&#8377;<%=rst.getString(7)%></td>
  	    	 </tr>
  	    	 <%
  	     }
  	     %>
  	     </tbody> 
  	    </table>
  	   </div> 	
  	  </div>
  	</div>
  </div>
 </body>
</html>