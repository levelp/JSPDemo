<%@ page import="core.MulTableGenerator" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Моё первое веб-приложение</title>
    <!-- Подключаем Ajax-библиотеку JQuery с Google CDN -->
    <script language="JavaScript" src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js">
    </script>
    <script language="JavaScript">
        function myFunction(number) {
            console.log("Вызов myFunction(" + number + ")");
            $.get("ajax.jsp?number=" + number, function (data) {
                $("#my").html(data);
            });
        }
    </script>
</head>
<body>
Любой текст страницы

<b>Жирный текст</b>

<form>
    <label for="login">
        Логин:
        <input type="text" id="login" value="Login"/>
    </label>
    <br>
    <label for="password">
        Пароль:
        <input type="password" id="password"/>
    </label>
    <br>
    <input type="submit" value="Войти"/>
</form>

2 * 3 * Math.sqrt(4) =
<%=2 * 3 * Math.sqrt(4) %>
<br>
<%
    String s = "This is test";
    for (int i = s.length() - 1; i >= 0; i--) {
        char c = s.charAt(i);
%><%=c%><% }
%>

<table border="1">
    <%
        String[][] table = MulTableGenerator.table(10);
        for (String[] line : table) { %>
    <tr>
        <% for (String cell : line) { %>
        <td>
            <a href="#" onclick="myFunction(<%=cell%>)"><%=cell%>
            </a>
        </td>
        <% } %>
    </tr>
    <% } %>
</table>

<!-- Циклы JSP -->
<c:forEach var="i" begin="1" end="24">
    ${i}
</c:forEach>

<div id="my">
    Здесь будет результат Ajax-запроса
</div>

</body>
</html>
