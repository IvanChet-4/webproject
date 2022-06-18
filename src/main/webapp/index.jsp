<%--
  Created by IntelliJ IDEA.
  User: MTSUser
  Date: 21.05.2022
  Time: 13:59
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Title page</title>
    <link rel="stylesheet" href="../../resourse/fons/fonts.css?v=232">
    <link rel="stylesheet" type="text/css" href="../../resourse/css/style.css?v=232">
</head>
<body>
<div id="container">
    <header>
        <nav class="head">
            <h1 class="title">Система управления студентами и их успеваемостью</h1>
            <div class="login">


                <div><p>Привет, admin!</p></div>
                <div><a href="/logout">Logout</a></div>



            </div>
        </nav>
    </header>
    <main>
        <section class="menu_title">
            <a href="/students">Студенты</a>
            <a href="/disciplines">Дисциплины</a>
            <a href="/terms">Семестры</a>
        </section>
    </main>
    <footer>
        <div>&copy; 2022</div>
    </footer>
</div>
</body>
</html>
