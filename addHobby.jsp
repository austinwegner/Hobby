<%@ page import = "java.util.ArrayList" %>

<%
if(session.getAttribute("hobbies") == null) {
	ArrayList<String> addList = new ArrayList<String>();
	session.setAttribute("hobbies", addList);
	System.out.println("Check1");
}
if(request.getParameter("hobbies") == null) {
	out.println("<jsp:forward page=\"hobbies.jsp\" />");
	System.out.println("Check2");
}
String hobby = request.getParameter("hobbies");
ArrayList<String> addList = (ArrayList<String>)session.getAttribute("hobbies");
if(addList.size() > 0) {
	for(int i = 0; i < addList.size(); i++) {
		if(!addList.contains(hobby)) {
			addList.add(hobby);
			System.out.println("Check3");
		}
	}
}
else {
	addList.add(hobby);
	System.out.println("Check4");
}
response.sendRedirect("hobbies.jsp");
%>

