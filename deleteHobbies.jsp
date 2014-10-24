<%@ page import = "java.util.ArrayList" %>

<%
ArrayList<String> addList = (ArrayList<String>)session.getAttribute("hobbies");
ArrayList<String> delList = new ArrayList<String>();
	for(int i = 0; i < addList.size(); i++) {
		if(request.getParameter("check" + addList.get(i)) != null) {
			delList.add(addList.get(i));
		}
	}
	for(int i = 0; i < delList.size(); i++) {
		addList.remove(delList.get(i));
	}
response.sendRedirect("hobbies.jsp");
%>

