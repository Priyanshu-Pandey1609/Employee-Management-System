<html>
  <body onload="makeActive('delete')">
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
	  <form action="delete-record.jsp">
	  <table class='tar' border='1' style="background-color:gray;color:white">
	   <tr style='background-color:red;color:white'>
	    <th colspan="2" style="text-align: center">Employee Details</th>
	   </tr>
	   <tr>
	    <th align="left">Employee Id</th>
	    <td><%=eid%><input type="hidden" value="<%=eid%>" name='eid'></td>
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
	   <tr>
	    <td colspan="2" align="center">
	     <button style='width:100%;color:red'>Confirm Delete(Click me)</button>
	    </td>
	   </tr>
	  </table>
	  </form>
	  <%
  }
  else
  {
	  %>
	  <jsp:include page="delete.jsp" />
	  <div class='dvv'>
	   <label style='color:red;font-size:1.6vw'>Employee record with id <%=eid%> does not exist</label>
	  </div>
	  <%
  }
  %>  
  
 </body>
</html>