<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Date"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Demo JSP</title>
        <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
    </head>
<body>
   <h1>Fruit Store</h1>
<table class="table">
  <thead class="thead-dark">
    <tr>
      <th scope="col">Nombre</th>
      <th scope="col">Precio</th>

    </tr>
  </thead>

  <tbody>
    <c:forEach var="fruta" items="${fruitsFromMyController}">
    <tr>
     
      <td> <c:out value="${fruta.name}"/> </td>
      <td> <c:out value="${fruta.price}"/> </td>	 
      
    </tr>
    </c:forEach>
    
 
  </tbody>
</table>

</table>
</body>
</html>