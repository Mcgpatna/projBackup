<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<jsp:include page="header.jsp" />
<body>
 <center>
        <h1>E-mailing Product Details</h1>
        <form  action="/Flower/sendEmail" >
            <table border="0" width="80%">
                <tr>
                    <td>To:</td>
                    <td><input type="text" name="recipient" size="48" /></td>
                </tr> 
                <tr>
                    <td>Subject:</td>
                    <td><input type="text" name="subject" size="48" /></td>
                </tr> 
                <tr>
                    <td>Message:</td>
                    <td><textarea cols="50" rows="10" name="message" >Product Name :${products.name}.<%= "\n" %>Details :${products.description}<%= "\n" %>Price is :${products.price}</textarea></td>
                     <%-- Product Name :${products.name}.<%= "\n" %>Details :${products.description}<%= "\n" %>Price is :${products.price} --%>
                </tr>                
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" value="Send E-mail" />
                    </td>
                </tr>
            </table>
            <%-- <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/> --%>
        </form>
    </center>
</body>
<jsp:include page="footer.jsp" />
</html>