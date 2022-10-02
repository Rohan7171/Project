<% 

     String msg=(String)session.getAttribute("msg");
     if(msg!=null)
     {
    	 out.print(msg);
     } 
     session.removeAttribute("msg");

%>