<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Login page</title>
    <link rel="stylesheet" href="../../resourse/fons/fonts.css?v=232">
    <link rel="stylesheet" type="text/css" href="../../resourse/css/style.css?v=232">
    <script src="../../resourse/js/functions.js"></script>
</head>

<body>
<div id="container">
    <header>
        <h1>Система управления студентами и их успеваемостью</h1>
    </header>

    <main>
        <section class="form_log">
            <h2 class="log_title">Вход в систему</h2>
            <form action="/login" method="post">
                <div class="line">
                    <div>Логин</div>
                    <label>
                        <input type="text" name="login">
                    </label>
                </div>
                <div class="line">
                    <div>Пароль</div>
                    <label>
                        <input type="text" name="password">
                    </label>
                </div>
                <div class="line">
                    <div>Права</div>
                    <label>
                        <select name="role">
                            <c:forEach items="${roles}" var="r">
                                <option value="${r.id}">${r.role}</option>
                            </c:forEach>
                        </select>
                    </label>
                </div>
                <input class="button_enter" type="submit" value="Войти">
            </form>
        </section>
    </main>
    <h4>Данные для подключения:</h4>
    <h4>Права "Администратор" - Login: admin, Password: 123</h4>
    <h4>Права "Учитель" - Login: teacher, Password: 123</h4>
    <h4>Права "Студент" - Login: student, Password: 123</h4>
    <c:if test="${error eq 1}">
        <h4>Неверный логин, пароль или роль</h4>
    </c:if>
    <c:if test="${error eq 2}">
        <h4>Поля не должны быть пустыми</h4>
    </c:if>
            <footer>
                <div>&copy; 2022 Ivan 4</div>
            </footer>
        </div>
    </body>
</html>