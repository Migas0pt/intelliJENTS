<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <style>
        .myButton2 {
            -moz-box-shadow: 0px 1px 0px 0px #fff6af;
            -webkit-box-shadow: 0px 1px 0px 0px #fff6af;
            box-shadow: 0px 1px 0px 0px #fff6af;
            background: -webkit-gradient(linear, left top, left bottom, color-stop(0.05, #ffba66), color-stop(1, #ffab23));
            background: -moz-linear-gradient(top, #ffba66 5%, #ffab23 100%);
            background: -webkit-linear-gradient(top, #ffba66 5%, #ffab23 100%);
            background: -o-linear-gradient(top, #ffba66 5%, #ffab23 100%);
            background: -ms-linear-gradient(top, #ffba66 5%, #ffab23 100%);
            background: linear-gradient(to bottom, #ffba66 5%, #ffab23 100%);
            filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffba66', endColorstr='#ffab23', GradientType=0);
            background-color: #ffba66;
            -moz-border-radius: 6px;
            -webkit-border-radius: 6px;
            border-radius: 6px;
            border: 1px solid #ffaa22;
            display: inline-block;
            cursor: pointer;
            color: #333333;
            font-family: Arial;
            font-size: 15px;
            font-weight: bold;
            padding: 1px 22px;
            text-decoration: none;
            text-shadow: 0px 1px 0px #ffee66;
        }
        .myButton2:hover {
            background: -webkit-gradient(linear, left top, left bottom, color-stop(0.05, #ffab23), color-stop(1, #ffba66));
            background: -moz-linear-gradient(top, #ffab23 5%, #ffba66 100%);
            background: -webkit-linear-gradient(top, #ffab23 5%, #ffba66 100%);
            background: -o-linear-gradient(top, #ffab23 5%, #ffba66 100%);
            background: -ms-linear-gradient(top, #ffab23 5%, #ffba66 100%);
            background: linear-gradient(to bottom, #ffab23 5%, #ffba66 100%);
            filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffab23', endColorstr='#ffba66', GradientType=0);
            background-color: #ffab23;
        }
        .myButton2:active {
            position: relative;
            top: 1px;
        }
        .myButton {
            -moz-box-shadow: inset 0px 0px 15px 3px #23395e;
            -webkit-box-shadow: inset 0px 0px 15px 3px #23395e;
            box-shadow: inset 0px 0px 15px 3px #23395e;
            background: -webkit-gradient(linear, left top, left bottom, color-stop(0.05, #2e466e), color-stop(1, #415989));
            background: -moz-linear-gradient(top, #2e466e 5%, #415989 100%);
            background: -webkit-linear-gradient(top, #2e466e 5%, #415989 100%);
            background: -o-linear-gradient(top, #2e466e 5%, #415989 100%);
            background: -ms-linear-gradient(top, #2e466e 5%, #415989 100%);
            background: linear-gradient(to bottom, #2e466e 5%, #415989 100%);
            filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#2e466e', endColorstr='#415989', GradientType=0);
            background-color: #2e466e;
            -moz-border-radius: 17px;
            -webkit-border-radius: 17px;
            border-radius: 17px;
            border: 1px solid #1f2f47;
            display: inline-block;
            cursor: pointer;
            color: #ffffff;
            font-family: Courier New;
            font-size: 20px;
            padding: 10px 56px;
            text-decoration: none;
            text-shadow: 0px 1px 0px #263666;
        }
        .myButton:hover {
            background: -webkit-gradient(linear, left top, left bottom, color-stop(0.05, #415989), color-stop(1, #2e466e));
            background: -moz-linear-gradient(top, #415989 5%, #2e466e 100%);
            background: -webkit-linear-gradient(top, #415989 5%, #2e466e 100%);
            background: -o-linear-gradient(top, #415989 5%, #2e466e 100%);
            background: -ms-linear-gradient(top, #415989 5%, #2e466e 100%);
            background: linear-gradient(to bottom, #415989 5%, #2e466e 100%);
            filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#415989', endColorstr='#2e466e', GradientType=0);
            background-color: #415989;
        }
        .myButton:active {
            position: relative;
            top: 1px;
        }
        input[type=text] {
            font-size: 20px;
            width: 100%;
            padding: 9px 20px;
            margin: 8px 0;
            box-sizing: border-box;
        }
        body {
            background-image: url("index.jpg");
            font-family: 'Lato', sans-serif;
            margin: 0;
            color: white;
        }
        /*div {*/
        /*background-color: rgba(250, 250, 250, 0.2);*/
        /*}*/
        #start_bg {
            background: black url("Queen.jpg") no-repeat fixed center;
            opacity: 0.5;
            position: absolute;
            width: 100%;
            height: 100%;
            z-index: 50;
        }
        #start_bg {
            opacity: 1;
            transition: opacity 1s;
        }
        #start_bg.fade {
            opacity: 0;
        }
        #start_center {
            width: 250px;
            height: 80px;
            position: absolute;
            top: 280px;
            text-align: center;
            left: 0;
            right: 0;
            margin: auto;
        }
        #start_center button {
            margin: 0 auto;
            text-align: center;
        }
        #box {
            margin: 0 auto;
            position: relative;
            width: 1000px;
            height: auto;
        }
        #sidebar {
            position: absolute;
            top: 0px;
            left: 0px;
            width: 200px;
            height: 600px;
            padding-top: 100px;
        }
        .levels {
            display: inline-block;
            padding: 5px;
            margin-top: 10%;
            margin-left: 5%;
            width: 60%;
            height: 15px;
        }
        #main {
            position: absolute;
            top: 50px;
            left: 250px;
            width: 1000px;
            height: 400px;
        }
        #main img {
            position: absolute;
            top: 10px;
            left: 130px;
        }
        #camera {
            position: absolute;
            top: 40px;
            left: 220px;
            z-index: 5;
        }
        #question {
            background: url("quest.png") no-repeat;
            padding-top: 30px;
            position: absolute;
            top: 520px;
            left: 220px;
            width: 1000px;
            height: 100px;
            text-align: center;
            font-size: 23px;
        }
        #answers { background: url("zzx.png") no-repeat center; position: absolute; top: 640px; left: 220px; width: 1000px; height: 115px; }
        #answer_1 { position: absolute; top: 20px; left: 190px; width: 300px; height: 20px; padding: 10px; }
        #answer_2 { position: absolute; top: 20px; right: 140px; width: 285px; height: 20px; padding: 10px; }
        #answer_3 { position: absolute; bottom: 5px; right: 140px; width: 285px; height: 20px; padding: 10px; }
        #answer_4 { position: absolute; bottom: 5px; left: 190px; width: 300px; height: 20px; padding: 10px; }
        #myBar {
            width: 1px;
            height: 10px;
            background-color: #4CAF50;
        }
        .overlay {
            height: 0%;
            width: 100%;
            position: fixed;
            z-index: 10;
            top: 0;
            left: 0;
            background-color: rgb(0, 0, 0);
            background-color: rgba(0, 0, 0, 0.9);
            overflow-y: hidden;
            transition: 0.5s;
        }
        .overlay-content {
            position: relative;
            top: 25%;
            width: 100%;
            text-align: center;
            margin-top: 30px;
        }
        .overlay a {
            padding: 8px;
            text-decoration: none;
            font-size: 36px;
            color: #818181;
            display: block;
            transition: 0.3s;
        }
        .overlay a:hover, .overlay a:focus {
            color: #f1f1f1;
        }
        .overlay .closebtn {
            position: absolute;
            top: 20px;
            right: 45px;
            font-size: 60px;
        }
        @media screen and (max-height: 450px) {
            .overlay {
                overflow-y: auto;
            }
            .overlay a {
                font-size: 20px
            }
            .overlay .closebtn {
                font-size: 40px;
                top: 15px;
                right: 35px;
            }
        }
        #fuck {
            text-align: center;
            position: absolute;
            top: 920px;
        }
        #fuck button {
            margin-top: 30px;
        }
        #myProgress {
            width: 1000px;
            background-color: #ddd;
        }
        #demo {
            position: absolute;
            top: 10px;
            left: 20px;
            z-index: 2;
            font-size: 25px;
        }
    </style>
</head>
<body>


<div id="start_bg">
    <div id="start_center">
        <input style="text-align: center" type="text" id="myText" value="Insert your Name !">
        <br>
        <br>
        <button class="myButton" onclick="init()">START</button>
    </div>
</div>


<div id="myNav" class="overlay">
    <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
    <div class="overlay-content">
        <a href="#">Add</a>
        <a href="#" onclick="videoShow(),closeNav()">Video</a>
        <a href="#">Themes</a>
        <a href="#">Restart</a>
        <a href="#">Quit</a>
    </div>
</div>


<div id="box">


    <div id="sidebar">
        <div id="user_name"><p id="demo"></p></div>
        <span style="font-size:50px;cursor:pointer;margin-right: 30px;" onclick="openNav()">&#9776;</span>
        <div class="levels" id="_10">Rui Ferr&#227o</div>
        <div class="levels" id="_9">Master Coder</div>
        <div class="levels" id="_8">Master Yoda</div>
        <div class="levels" id="_7">Luke Skywalker</div>
        <div class="levels" id="_6">Jedi Master</div>
        <div class="levels" id="_5">Jedi Knight</div>
        <div class="levels" id="_4">Jedi Guardian</div>
        <div class="levels" id="_3">Senior Padawan</div>
        <div class="levels" id="_2">Junior Padawan</div>
        <div class="levels" id="_1">Youngling</div>
        <br>
        <br>
        <br>
        <br>
        <br>
        <p>Correct answers</p>
        <div id="counterNumber">0/10</div>
    </div>


    <div id="main">
        <div id="camera">
            <video width="500" height="340" autoplay></video>
        </div>
        <div id="slider">
            <img id="gify" width="680" height="400" src="https://media.giphy.com/media/eWTy1lD67R8Yg/giphy.gif"
                 alt="Italian Trulli">
        </div>
    </div>


    <div id="question">
    </div>

    <div id="answers">
        <div id="answer_1" onclick="checkAnswer(1)">1</div>
        <div id="answer_2" onclick="checkAnswer(2)">2</div>
        <div id="answer_3" onclick="checkAnswer(3)">3</div>
        <div id="answer_4" onclick="checkAnswer(4)">4</div>
    </div>

    <div id="fuck">
<%--        <div id="myProgress">
            <div id="myBar"></div>
        </div>
        <button class="clickme myButton2" onclick="move()">Progress</button>--%>
        <button class="clickme2 myButton2 " onclick="playAudio()" type="button">Play Audio</button>
        <button class="clickme3 myButton2" onclick="pauseAudio()" type="button">Pause Audio</button>
    </div>

    <audio id="myAudio">
        <source src="queen.mp3" type="audio/mpeg">
    </audio>


    <script>

        var obj = {};
        var answerFlag = false;
        var position = 1;
        var correctAnswerCount = 1;


        function init() {
            var x = document.getElementById("myText").value;
            document.getElementById("demo").innerHTML = x;
            start_fade();
        }

        // Start Fade Out
        let slideSource = document.getElementById('start_bg');

        function start_fade() {
            slideSource.classList.toggle('fade');
            loadDoc();
            setTimeout(displayNone, 1000);
        }

        function displayNone() {
            slideSource.style.display = "none";
        }


        function videoShow() {
            document.getElementById("camera").style.visibility = "visible";

            const constraints = {
                video: true
            };
            const video = document.querySelector('video');
            navigator.mediaDevices.getUserMedia(constraints).then((stream) => {
                video.srcObject = stream
        });

            document.getElementById("gify").style.visibility = "hidden";
        }


        function openNav() {
            document.getElementById("myNav").style.height = "100%";
        }

        function closeNav() {
            document.getElementById("myNav").style.height = "0%";
        }


        function counterNumber() {
            document.getElementById("counterNumber").innerHTML = "" + correctAnswerCount + " / 10";

        }

        function insert() {
            document.getElementById("question").innerHTML = obj.question;
            document.getElementById("answer_1").innerHTML = obj.answers[0].text;
            document.getElementById("answer_2").innerHTML = obj.answers[1].text;
            document.getElementById("answer_3").innerHTML = obj.answers[2].text;
            document.getElementById("answer_4").innerHTML = obj.answers[3].text;
        }

        function checkAnswer(arg) {
            if (arg === obj.correct && !answerFlag) {
                document.getElementById("answer_" + arg).style.color = "green";
                answerFlag = true;
                correct_Answer();
                setTimeout(yellow, 1000);

            }

            if (arg !== obj.correct && !answerFlag) {
                document.getElementById("answer_" + arg).style.color = "red";
                document.getElementById("answer_" + obj.correct).style.color = "green";
                answerFlag = true;
                wrong_Answer();
                setTimeout(loadDoc, 1000);
            }
        }

        function correct_Answer() {
            const Http = new XMLHttpRequest();
            const url = 'http://localhost:8080/hackaton/api/question/T';
            Http.open("GET", url);
            Http.send();
        }

        function wrong_Answer() {
            const Http = new XMLHttpRequest();
            const url = 'http://localhost:8080/hackaton/api/question/F';
            Http.open("GET", url);
            Http.send();
        }

        function yellow() {
            counterNumber();
            document.getElementById("_" + correctAnswerCount).style.borderBottom = "2px solid yellow";
            correctAnswerCount++;
            loadDoc();
        }


        function loadDoc() {
            answerFlag = false;
            document.getElementById("answer_1").style.color = "";
            document.getElementById("answer_2").style.color = "";
            document.getElementById("answer_3").style.color = "";
            document.getElementById("answer_4").style.color = "";

            var XMLHttp = new XMLHttpRequest(), text;

            XMLHttp.onreadystatechange = function () {
                if (this.readyState === 4 && this.status === 200) {
                    text = this.responseText;
                    obj = JSON.parse(text);
                    insert();
                }
            };

            //XMLHttp.open("GET", `info${position}.txt`, true);
            XMLHttp.open("GET", "http://localhost:8080/hackaton/api/question", true);
            position++;

            XMLHttp.send();
        }

        function move() {
            var elem = document.getElementById("myBar");
            var width = 1;
            var id = setInterval(frame, 32);

            function frame() {
                if (width >= 1000) {
                    clearInterval(id);
                    elem.style.width = "1px";
                } else {
                    width++;
                    elem.style.width = width + 'px';
                }


            }
        }

        var x = document.getElementById("myAudio");

        function playAudio() {
            x.play();
        }

        function pauseAudio() {
            x.pause();
        }

    </script>
</div>
</body>
</html>