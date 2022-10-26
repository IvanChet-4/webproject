function deleteStudents() {

    var checkedCheckboxs = document.querySelectorAll('input[name=idStudent]:checked')

    if (checkedCheckboxs.length == 0) {
        alert("Пожалуйста, выберите хотябы одного студента...");
        return;
    }

    var ids = "";

    for (var i = 0; i < checkedCheckboxs.length; i++) {
        ids = ids + checkedCheckboxs[i].value + " "

    }
    document.getElementById("idsHiddenDelete").value = ids;
    document.getElementById("deleteForm").submit();
}


function modifyStudent() {

    var checkedCheckboxs = document.querySelectorAll('input[name=idStudent]:checked')

    if (checkedCheckboxs.length == 0) {
        alert("Пожалуйста, выберите одного студента...");
        return;
    }

    if (checkedCheckboxs.length > 1) {
        alert("Выберите только одного студента.");
        return;
    }

    var id = checkedCheckboxs[0].value;

    document.getElementById("idHiddenModify").value = id;
    document.getElementById("modifyForm").submit();
}

function progressStudent() {

    var checkedCheckboxs = document.querySelectorAll('input[name=idStudent]:checked')

    if (checkedCheckboxs.length == 0) {
        alert("Пожалуйста, выберите одного студента...");
        return;
    }

    if (checkedCheckboxs.length > 1) {
        alert("Выберите только одного студента.");
        return;
    }

    var id = checkedCheckboxs[0].value;

    document.getElementById("idHiddenProgress").value = id;
    document.getElementById("progressForm").submit();
}

function deleteDiscipline() {

    var checkedCheckboxs = document.querySelectorAll('input[name=idDiscipline]:checked')

    if (checkedCheckboxs.length == 0) {
        alert("Пожалуйста, выберите хотябы одну дисциплину...");
        return;
    }

    var ids = "";

    for (var i = 0; i < checkedCheckboxs.length; i++) {
        ids = ids + checkedCheckboxs[i].value + " "

    }
    document.getElementById("deleteHiddenDiscipline").value = ids;
    document.getElementById("deleteDiscipline").submit();
}


function modifyDiscipline() {

    var checkedCheckboxs = document.querySelectorAll('input[name=idDiscipline]:checked')

    if (checkedCheckboxs.length == 0) {
        alert("Пожалуйста, выберите одну дисциплину...");
        return;
    }

    if (checkedCheckboxs.length > 1) {
        alert("Выберите только одну дисциплину...");
        return;
    }

    var id = checkedCheckboxs[0].value;

    document.getElementById("idHiddenDisciplineToModify").value = id;
    document.getElementById("modifyDiscipline").submit();
}