<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <style>
        div {
    background-color: rgba(0, 0, 0, 0.1);

    }

    #box{
    margin: 0 auto;
    position: relative;
    width: 1000px;
    height: auto;
    }

    #sidebar {
    position: absolute;
    top: 10px;
    left: 10px;
    width: 200px;
    height: 600px;
    padding-top: 100px;
    }

    .levels {
    display: inline-block;
    margin-top: 10%;
    margin-left: 5%;
    width: 90%;
    height: 15px;
    }


    #main {
    position: absolute;
    top: 20px;
    left: 250px;
    width: 1000px;
    height: 500px;

    }

    #answers {
    position: absolute;
    top: 550px;
    left: 250px;
    width: 1000px;
    height: 200px;

    }


    #answer_1 {
    position: absolute;
    top: 20px;
    left: 20px;
    width: 300px;
    height: 50px;

    }

    #answer_2 {
    position: absolute;
    top: 20px;
    right: 20px;
    width: 300px;
    height: 50px;

    }
    #answer_3 {
    position: absolute;
    bottom: 20px;
    right: 20px;
    width: 300px;
    height: 50px;

    }
    #answer_4 {
    position: absolute;
    bottom: 20px;
    left: 20px;
    width: 300px;
    height: 50px;

    }

</style>
</head>
<body>
<div id="box">
    <div class="flex-container">

        <div id="sidebar">
            <div class="levels" id="_10"></div>
            <div class="levels" id="_9"></div>
            <div class="levels" id="_8"></div>
            <div class="levels" id="_7"></div>
            <div class="levels" id="_6"></div>
            <div class="levels" id="_5"></div>
            <div class="levels" id="_4"></div>
            <div class="levels" id="_3"></div>
            <div class="levels" id="_2"></div>
            <div class="levels" id="_1"></div>

            <button type="button" onclick="start()">Change Content</button>
        </div>


        <div id="main">
            <div id="slider">

            </div>
        </div>


        <div id="answers">
            <div id="answer_1" onclick="checkAnswer(1)">1</div>
            <div id="answer_2" onclick="checkAnswer(2)">2</div>
            <div id="answer_3" onclick="checkAnswer(3)">3</div>
            <div id="answer_4" onclick="checkAnswer(4)">4</div>
        </div>

    </div>
</div>
<script>
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
        XMLHttp.open("GET", "http://localhost:8080/hackaton/api/question", true);
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

        XMLHttp.open("GET", "http://localhost:8080/hackaton/api/question", true);
        XMLHttp.send();
    }


</script>
</body>
</html>
