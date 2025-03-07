<%@ include file="navbar.jsp" %>
<html>
  <body onload="makeActive('add')">
  <%
  Class.forName("com.mysql.cj.jdbc.Driver");
  Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp5","root","mysql");
  PreparedStatement ps=cn.prepareStatement("insert into employeeinfo values(?,?,?,?,?,?,?)");
  ps.setString(1,request.getParameter("eid"));
  ps.setString(2,request.getParameter("firstname"));
  ps.setString(3,request.getParameter("lastname"));
  ps.setString(4,request.getParameter("phone"));
  ps.setString(5,request.getParameter("email"));
  ps.setString(6,request.getParameter("department"));
  ps.setString(7,request.getParameter("salary"));
  ps.executeUpdate();
  %>  
  <div class='dv'>
  	<label class='lamsg' style='color:green'>Employee has been added successfully</label>
  </div>
 </body>
</html>