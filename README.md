# webproject
Результат учебного проекта можно посмотреть тут: https://iv-4.ru/login

Суть проекта - это разработка системы по учету успеваемости студентов.

Данные для авторизации (для примера) указаны на первой странице. Всего есть три роли Учитель, Студент и Администратор и три учетных записи admin, teacher, student. От роли зависят функциональные возможности авторизовавшегося пользователя. 
Важно! Если права выбрать неправильно, то появиться сообщение об ощибке. 

Веб интерфейс сделан из 12 jsp страниц с применением css, js.

Страница авторизации https://iv-4.ru/students
![4](https://user-images.githubusercontent.com/104260618/202524016-8f3f2fa2-b6fa-43de-853c-ef745f69605a.jpg)
Страница https://iv-4.ru/students с правами администратора
![5](https://user-images.githubusercontent.com/104260618/202524048-057c027e-f106-49ab-95af-27e8cbf13a2a.jpg)
Страница https://iv-4.ru/students с правами студента
![6](https://user-images.githubusercontent.com/104260618/202524099-7d048f50-aa98-4edd-94d4-2e5956f06e07.jpg)


Есть файл Constants.java добавленный в gitignore. В этом файле, расположенном по адресу src/main/java/constants/, находятся переменные для подключения к БД следующего вида:

package constants;

public interface Constants {

    /*Remote (для подключения к удаленной БД)*/
    String CONNECTION_URL = "jdbc:mysql://localhost:numberPort/nameScheme?user=nameuser&password=passworduser";
    /*Local (для подключения к локальной БД)*/
    //String CONNECTION_URL = "jdbc:mysql://localhost:numberPort/nameScheme?user=nameuser&password=passworduser";
}
