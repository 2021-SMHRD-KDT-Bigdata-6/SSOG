<%@page import="Model_Food.FoodDAO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
DB : 카테고리가 무엇인지? 

--%>
<%
DAO dao = new DAO();
ArrayList<FoodVO> foods = dao.foods();

String cate = request.getParameter("cate");

ArrayList<FoodVO> arr = new ArrayList<FoodVO>();

if( cate == null){
   arr = foods;
}else{
   for(int i = 0; i < foods.size(); i++){
      
      if(foods.get(i).getCategory().equals(cate)){
         
         arr.add(foods.get(i));
         
      }
      
   }
}
%>
<button class="category">곡류</button>
<button class="category">과일류</button>

<h1 class='title'></h1>

<br>

<table border=1>
   <tr>
      <th>이름</th>
      <th>가격</th>
      <th>종류</th>
   </tr>
   <%for(int i = 0 ; i < arr.size(); i++){ %>
   <tr>
      <td><a href = "#" class="name"><%=arr.get(i).getName()%></a></td>
      <td><%=arr.get(i).getPrice() %></td>
      <td><%=arr.get(i).getCategory() %></td>
   </tr>
   <%} %>
</table>


<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
$('.category').on('click', function(){
   
   window.location = "jqueryTest.jsp?cate=" + $(this).html()
   
})

$('.name').on('click', function(){
   
   $('.title').html($(this).html())
   
})

</script>

</body>
</html>