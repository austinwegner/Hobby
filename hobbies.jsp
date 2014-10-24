<%@ page import = "java.util.ArrayList" %>
<%@ page import = "java.util.Collections" %>
<html>
<style>
h1 {text-shadow:2px 2px 3px #D0D0D0;}
h2 {text-shadow:2px 2px 3px #D0D0D0;}
</style>
<font color="888888">
<title>UMW Hobby Manager</title>
<head><center> <h1><u>UMW Hobby Manager</u> </h1> </head>
<img src="http://cdn.blogs.fredericksburg.com/chalkboard/files/2012/01/umweagle.jpg" alt = "Caw caw mofo" width = "200" height = "200">
<body bgcolor="000033">
</br>
<%	
	ArrayList<String> addList = (ArrayList<String>)session.getAttribute("hobbies");

	if(session.getAttribute("hobbies") != null) {
		if(addList.size() > 0) {
%>
		<h2><i>Current Hobbies:</i></h2>
		<form action = "deleteHobbies.jsp" method = GET>
<%
			for(int i = 0; i < addList.size(); i++) {
				Collections.sort(addList);
				out.println("<input type=checkbox name=check" + addList.get(i) + " />" + addList.get(i) + "</br>");
			}
%>
			</br>	
			<input type = submit value= "Get rid of dem hobbies you don't like no mo!" />
<%
		}
	}
	
%>
</br>
</form>
<hr>
<h2><i> Add a new hobby dawg!</i></h2>
<form action = "addHobby.jsp" method = GET>
What are some of yo hobbies homeslice?
	<input type=text size=15 name="hobbies"/> </br></br>
	<input type=submit value="Add yo hobby Bobby!" /></br>
</form>
</br>
</center>
</body>
</html>
