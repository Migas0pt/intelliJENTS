var obj = {};

var answerFlag = false;

var test_1 = '{\n' +
    '    "question" : "1111 Who is the best programmer?",\n' +
    '    "content" : [\n' +
    '        "Filipe",\n' +
    '        "Manuel",\n' +
    '        "Godinho",\n' +
    '        "Carlos"\n' +
    '    ],\n' +
    '    "correct" : 1\n' +
    '}';

var test_2 = '{\n' +
    '    "question" : "2222 Who is the best programmer?",\n' +
    '    "content" : [\n' +
    '        "Filipe",\n' +
    '        "Manuel",\n' +
    '        "Godinho",\n' +
    '        "Carlos"\n' +
    '    ],\n' +
    '    "correct" : 1\n' +
    '}';

var test_3 = '{\n' +
    '    "question" : "3333 Who is the best programmer?",\n' +
    '    "content" : [\n' +
    '        "Filipe",\n' +
    '        "Manuel",\n' +
    '        "Godinho",\n' +
    '        "Carlos"\n' +
    '    ],\n' +
    '    "correct" : 1\n' +
    '}';

var position = 2;
var correctAnswer = 1;


function slider() {




}


function insert() {
    document.getElementById("main").innerHTML = obj.question;
    document.getElementById("answer_1").innerHTML = obj.answers[0];
    document.getElementById("answer_2").innerHTML = obj.answers[1];
    document.getElementById("answer_3").innerHTML = obj.answers[2];
    document.getElementById("answer_4").innerHTML = obj.answers[3];
}

function checkAnswer(arg) {
    if (arg === obj.correct && !answerFlag) {
        document.getElementById("answer_" + arg).style.backgroundColor = "green";
        answerFlag = true;
        setTimeout(yellow, 1000);
    }

    if (arg !== obj.correct && !answerFlag) {
        document.getElementById("answer_" + arg).style.backgroundColor = "red";
        document.getElementById("answer_" + obj.correct).style.backgroundColor = "green";
        answerFlag = true;
        setTimeout(loadDoc, 1000);
    }
}


function start() {
    var XMLHttp = new XMLHttpRequest();
    var text;

    XMLHttp.onreadystatechange = function () {
        if (this.readyState === 4 && this.status === 200) {
            text = this.responseText;
            obj = JSON.parse(text);
            insert();
        }
    };
    XMLHttp.open("GET", "info.txt", true);
    XMLHttp.send();
}


function yellow() {

    document.getElementById("_" + correctAnswer).style.backgroundColor = "yellow";
    correctAnswer++;
    loadDoc();
}


function loadDoc() {

    answerFlag = false;
    document.getElementById("answer_1").style.backgroundColor = "";
    document.getElementById("answer_2").style.backgroundColor = "";
    document.getElementById("answer_3").style.backgroundColor = "";
    document.getElementById("answer_4").style.backgroundColor = "";

    var XMLHttp = new XMLHttpRequest(), text;

    XMLHttp.onreadystatechange = function () {
        if (this.readyState === 4 && this.status === 200) {
            text = this.responseText;
            obj = JSON.parse(text);
            insert();
            position++;
        }
    };

    XMLHttp.open("GET", `info${position}.txt`, true);
    XMLHttp.send();
}