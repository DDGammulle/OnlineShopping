<%@ page language="java" 
         contentType="text/html; charset=windows-1256"
         pageEncoding="windows-1256"
         %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1256">
        <title>Login Page</title>
    </head>

    <body>


        <!-- 
                 When the client submits, the URL in the 'action' attribute is requested
                 And the data, entered by the user in each field, is sent in the request. 
                 Please Check LoginServlet.java 												
        -->

        <form action="LoginServlet">

            Please enter your username 		
            <input type="text" name="un"/><br>		

            Please enter your password
            <input type="password" name="pw"/>

            <input type="submit" value="submit">
            <img src="${pageContext.request.contextPath}/IMAGES/guest.png" />
            

        </form>

    </body>

</html>