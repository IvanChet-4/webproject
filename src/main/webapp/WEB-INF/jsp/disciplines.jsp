<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset=UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Disciplines list</title>
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
                <div class="terms_section1">
                    <div class="terms_title">
                        <div class="line4">
                        </div>
                    </div>
                    <h2 class="list_dt">Список дисциплин:</h2>
                    <br>
                    <div class="terms_section2">
                        <div class="terms">
                            <table class="list">
                                <tr>
                                    <th class="lt_col0"></th>
                                    <th class="lt_col0">Наименование дисциплины</th>
                                </tr>
                                <c:forEach items="${disciplines}" var="d">
                                    <tr>
                                        <td class="l_col0"><label><input name="idDiscipline" type="checkbox"
                                                                         value="${d.id}"></label>
                                        </td>
                                        <td class="lt_col0">${d.discipline}</td>
                                    </tr>
                                </c:forEach>
                            </table>
                        </div>
                        <table class="table-pad-marg">
                        </table>
                        <div class="root_terms">
                            <div class="button_group3">
                                <c:if test="${role eq 1}">
                                    <form action="/disciplines-create" method="get">
                                        <input class="button_terms" type="submit" value="Создать дисциплину…">
                                    </form>
                                    <br>
                                    <form action="/discipline-modify" method="get" id="modifyDiscipline">
                                        <input type="hidden" name="idHiddenDisciplineToModify"
                                               id="idHiddenDisciplineToModify">
                                        <input class="button_terms" type="submit"
                                               value="Модифицировать выбранную дисциплину…"
                                               onclick="modifyDiscipline()">
                                    </form>
                                    <br>
                                    <form action="/disciplines-delete" method="post" id="deleteDiscipline">
                                        <input type="hidden" name="deleteHiddenDiscipline" id="deleteHiddenDiscipline">
                                        <input class="button_terms" type="submit" value="Удалить выбранную дисциплину…"
                                               onclick="deleteDiscipline()">
                                    </form>
                                </c:if>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>
            <footer>
                <div>&copy; 2022 Ivan 4</div>
            </footer>
        </div>
    </body>
</html>