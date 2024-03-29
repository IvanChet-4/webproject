<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Students list</title>
    <link rel="stylesheet" href="../../resourse/fons/fonts.css?v=232">
    <link rel="stylesheet" type="text/css" href="../../resourse/css/style.css?v=232">
    <script src="../../resourse/js/functions.js"></script>
</head>

<body>
<div id="container">
    <header>
        <nav class="head">
            <h1 class="title">Система управления студентами и их успеваемостью</h1>
            <div class="login">
                <c:choose>
                    <c:when test="${isLogin eq true}">
                        <div><p>Привет, ${login}!</p></div>
                        <div><a href="/logout"> Logout</a></div>
                    </c:when>
                    <c:otherwise>
                        <div><a href="/login"> Login</a></div>
                    </c:otherwise>
                </c:choose>
            </div>
        </nav>
    </header>

    <main>
        <section class="content">
            <div class="side_menu">
                <div><a href="/">На главную</a></div>
            </div>
            <div class="main">
                <div class="button_group1">
                    <input class="button_student1" type="submit" value="Просмотреть успеваемость выбранных студентов"
                           onclick="progressStudent()">
                    <c:if test="${role eq 1}">
                        <form action="/student-create" method="get">
                            <input class="button_student2" type="submit" value="Создать студента…">
                        </form>
                        <input class="button_student1" type="submit" value="Модифицировать выбранного студента…"
                               onclick="modifyStudent()">
                        <input class="button_student2" type="submit" value="Удалить выбранных студентов"
                               onclick="deleteStudents()">
                    </c:if>
                </div>
                <div class="students">
                    <table class="list">
                        <caption>Список студентов</caption>
                        <tr>
                            <th class="l_col0"></th>
                            <th class="l_col1">Фамилия</th>
                            <th class="l_col2">Имя</th>
                            <th class="l_col3">Группа</th>
                            <th class="l_col4">Дата поступления</th>
                        </tr>
                        <c:forEach items="${students}" var="s">
                            <tr>
                                <td class="l_col0"><label><input name="idStudent" type="checkbox"
                                                                 value="${s.id}"></label>
                                </td>
                                <td class="l_col1">${s.surname}</td>
                                <td class="l_col2">${s.name}</td>
                                <td class="l_col3">${s.group.group}</td>
                                <td class="l_col4"><fmt:formatDate value="${s.date}" pattern="dd/MM/yyyy"/></td>
                            </tr>
                        </c:forEach>
                    </table>
                </div>
            </div>
        </section>
    </main>
        <footer>
            <div>&copy; 2022 Ivan 4</div>
        </footer>
    </div>
</body>

<c:if test="${role eq 1}">
    <form action="/student-delete" method="post" id="deleteForm">
        <input type="hidden" name="idsHiddenDelete" id="idsHiddenDelete">
    </form>
    <form action="/student-modify" method="get" id="modifyForm">
        <input type="hidden" name="idHiddenModify" id="idHiddenModify">
    </form>
</c:if>
<form action="/student-progress" method="get" id="progressForm">
    <input type="hidden" name="idHiddenProgress" id="idHiddenProgress">
</form>
</html>