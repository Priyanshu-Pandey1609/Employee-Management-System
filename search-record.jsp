<html>
  <body onload="makeActive('search')">
  <%
  String eid=request.getParameter("eid");
  Class.forName("com.mysql.cj.jdbc.Driver");
  Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp5","root","mysql");
  PreparedStatement ps=cn.prepareStatement("select * from employeeinfo where eid=?");
  ps.setString(1,eid);
  ResultSet rst=ps.executeQuery();
  if(rst.next())
  {
	  %>
	  <%@ include file="navbar.jsp" %>
	  <table class='tar' border='1'>
	   <tr style='background-color:orange;color:white'>
	    <th colspan="2" style="text-align: center">Employee Details</th>
	   </tr>
	   <tr>
	    <th align="left">Employee Id</th>
	    <td><%=rst.getString(1)%></td>
	   </tr>
	   <tr>
	    <th align="left">First name</th>
	    <td><%=rst.getString(2)%></td>
	   </tr>
	   <tr>
	    <th align="left">Last name</th>
	    <td><%=rst.getString(3)%></td>
	   </tr>
	   <tr>
	    <th align="left">Phone number</th>
	    <td><%=rst.getString(4)%></td>
	   </tr>
	   <tr>
	    <th align="left">Email id</th>
	    <td><%=rst.getString(5)%></td>
	   </tr>
	   <tr>
	    <th align="left">Department</th>
	    <td><%=rst.getString(6)%></td>
	   </tr>
	   <tr>
	    <th align="left">Salary</th>
	    <td>&#8377;<%=rst.getString(7)%></td>
	   </tr>
	  </table>
	  <%
  }
  else
  {
	  %>
	  <jsp:include page="search.jsp" />
	  <div class='dvv'>
	   <label style='color:red;font-size:1.6vw'>Employee record with id <%=eid%> not found</label>
	  </div>
	  <%
  }
  %>  
  </body>
</html>