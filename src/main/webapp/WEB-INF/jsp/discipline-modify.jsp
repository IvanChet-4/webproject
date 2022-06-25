<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<!doctype html>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <title>Disciplines modify</title>

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
                        <div> <a href="/logout"> Logout</a></div>

                    </c:when>
                    <c:otherwise>

                        <div> <a href="/login"> Login</a></div>

                    </c:otherwise>
                </c:choose>


            </div>
        </nav>
    </header>


    <main>


        <section class="content">
            <div class="side_menu">
                <div><a href="/">На главную</a></div>
                <div><a href="/disciplines">Назад</a></div>
            </div>


            <div class="main">
                <h2>Для изменения дисциплины заполните следующие данные и нажмите кнопку "Изменить".</h2>


                <div class="form_cm">
                    <form action="/discipline-modify" method="post">
                        <input type="hidden" name="idHiddenDisciplineModify" value="${discipline.id}">
                            <%--id="idHiddenDisciplineModify"--%>


                        <div class="line5">
                            <div>Название дисциплины: </div>
                            <label>
                                <input name="disciplines" type="text" value="${discipline.discipline}">
                            </label>
                        </div>


                        <input class="button_cm_term" type="submit" value="Изменить">
                    </form>
                </div>


                <c:if test="${error eq 1}">

                    <h4>Поля не должны быть пустыми!</h4>

                </c:if>


            </div>
        </section>
    </main>


    <footer>
        <div>&copy; 2022 Ivan 4</div>
    </footer>


</div>
    </body>
        </html>