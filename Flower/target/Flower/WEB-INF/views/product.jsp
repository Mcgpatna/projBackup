<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>
<html>
<head>
    <title>Flower Maintenance Page</title>
    <style type="text/css">
        .tg  {border-collapse:collapse;border-spacing:0;border-color:#ccc;}
        .tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#fff;}
        .tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#f0f0f0;}
        .tg .tg-4eph{background-color:#f9f9f9}
    </style>
</head>
<body>


<h1>
  <center><Font color="blue"> Maintenance of Flowers' Detail</Font></center>
</h1>
 
<c:url var="addAction" value="/product/add" ></c:url>
 
<form:form action="${addAction}" modelAttribute="products"  enctype="multipart/form-data">
<table align="right">
    
    
    
    <tr>
    	<c:if test="${!empty products.name}">
    	<tr>
        <td>
            <form:label path="id">
                <spring:message text="ID"/>
            </form:label>
        </td>
        <td>
            <form:input path="id" readonly="true" size="8"  disabled="true" />
            <form:hidden path="id" />
        </td> 
       </tr>
              
    </c:if>
    <c:if test="${pcount>0}">
    	<tr>
        <td>
            <form:label path="id">
                <spring:message text="ID"/>
            </form:label>
        </td>
        <td>
        	  
            <%-- <form:input path="id" value="<c:out value="${pctr}"/>" readonly="true" size="8"  disabled="true" /> --%>
            
            <form:input path="id"  value="${pcount+1}" readonly="true" size="8"  disabled="true" /> 
            <form:hidden path="id" />
        </td> 
       </tr>
              
    </c:if>
    
      </tr>  
      <tr>
        <td>
            <form:label path="name">
                <spring:message text="Name"/>
            </form:label>
        </td>
        <td>
            <form:input path="name" />
        </td> 
        </tr>
    
    <tr>
        <td>
            <form:label path="description">
                <spring:message text="Description"/>
            </form:label>
        </td>
        <td>
            <form:input path="description" />
        </td>
    </tr>
    <tr>
        <td>
            <form:label path="category">
                <spring:message text="Category"/>
            </form:label>
        </td>
        <td>
            <form:input path="category" />
        </td>
    </tr>
    <tr>
        <td>
            <form:label path="price">
                <spring:message text="Price"/>
            </form:label>
        </td>
        <td>
            <form:input path="price" />
        </td>
    </tr>
    <tr>
        <td>
            <form:label path="status">
                <spring:message text="Status(Available/Not Available)"/>
            </form:label>
        </td>
        <td>
            <form:input path="status" />
        </td>
    </tr>
    <tr>
        <td>
            <form:label path="prdImage">
                <spring:message text="Upload Product Image"/>
            </form:label>
        </td>
        <td>
            <form:input path="prdImage" type="file"  />
        </td>
        
    </tr>
    <tr>
     
        <td colspan="2">
       		 <c:if test="${empty products.id}">
                <input type="submit"  value="<spring:message text="Add Product"/>" />
            </c:if>
            <c:if test="${!empty products.id}">
                <input type="submit"  value="<spring:message text="Submit Product"/>" />
                
            </c:if>
            
        </td>
    </tr>
    
</table>  
</form:form>
<br/>
<br/><br/><br/><br/><br/><br/>
<center><h3><font face="vivaldi" size="10" color="green" >List of Flowers</font></h3></center>
<c:if test="${!empty listProduct}">
    <table class="tg">
    <tr>
        <th width="80">Product ID</th>
        <th width="120">Product Name</th>
        <th width="120">Description</th>
        <th width="120">Category</th>
        <th width="120">Price</th>
        <th width="120">Status</th>
        <th width="60">Edit</th>
        <th width="60">Delete</th>
    </tr>
    <c:forEach items="${listProduct}" var="prd">
        <tr>
            <td>${prd.id}</td>
            <td>${prd.name}</td>
            <td>${prd.description}</td>
            <td>${prd.category}</td>
            <td>${prd.price}</td>
            <td>${prd.status}</td>
            <td><a href="<c:url value='/edit/${prd.id}' />" >Edit</a></td>
            <td><a href="<c:url value='/remove/${prd.id}' />" >Delete</a></td>
        </tr>
    </c:forEach>
    </table>
</c:if>
<jsp:include page="footer.jsp" />
</body>
</html>