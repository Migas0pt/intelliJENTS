<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">

    <style>
        body {

            font-family: 'Lato', sans-serif;
            margin: 0;
            color: grey;
        }

        div {
            background-color: rgba(0, 0, 0, 0.1);

        }

        #start_bg {
            background: black url("22.jpg") no-repeat fixed center;

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
            height: 300px;

            position: absolute;
            top: 0;
            bottom: 0;
            left: 0;
            right: 0;
            margin: auto;
        }

        #start_img {
            width: 200px;
            height: 200px;

            position: relative;
            top: 10px;
            left: 0;
            right: 0;
            margin: auto;
        }

        #start_username{

            width: 180px;
            height: 50px;

            text-align: center;
            position: absolute;
            top: 220px;
            left: 0;
            right: 0;
            margin: auto;
        }

        #start_init{

            margin: 0 auto;
            text-align: center;
        }

        #start_init .init{

            margin: 0 auto;

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
            margin-top: 10%;
            margin-left: 5%;
            width: 90%;
            height: 15px;
        }

        #main {
            position: absolute;
            top: 0px;
            left: 220px;
            width: 1000px;
            height: 400px;
        }

        #camera {
            position: absolute;
            top: 10px;
            left: 10px;
            background-color: red;
            visibility: hidden;
        }


        #question {
            position: absolute;
            top: 420px;
            left: 220px;
            width: 1000px;
            height: 100px;
        }

        #answers { position: absolute; top: 540px; left: 220px; width: 1000px; height: 200px; }

        #answer_1 { position: absolute; top: 20px; left: 20px; width: 300px; height: 50px; }

        #answer_2 { position: absolute; top: 20px; right: 20px; width: 300px; height: 50px; }

        #answer_3 { position: absolute; bottom: 20px; right: 20px; width: 300px; height: 50px; }

        #answer_4 { position: absolute; bottom: 20px; left: 20px; width: 300px; height: 50px; }


        #myProgress {
            position: absolute;
            top: 770px;
            width: 1000px;
            background-color: #ddd;
        }

        #myBar {
            width: 1px;
            height: 10px;
            background-color: #4CAF50;
        }

        .clickme {
            position: absolute;
            top: 800px;
        }
        .clickme2 {
            position: absolute;
            top: 820px;
        }
        .clickme3 {
            position: absolute;
            top: 840px;
        }



        .overlay {
            height: 0%;
            width: 100%;
            position: fixed;
            z-index: 1;
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




    </style>


</head>
<body>


<div id="start_bg">
    <div id="start_center">
        <div id="start_img"></div>

        <div id="start_username">
            <input type="text" id="myText" value="Einstein !">
            <br>
            <button onclick="init()"> - Start - </button>
        </div>

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
        <span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776;</span>
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
            <img src="https://media.giphy.com/media/Yvj6HRSKCcytO/giphy.gif" alt="Italian Trulli">
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

    <div id="myProgress">
        <div id="myBar"></div>
    </div>
    <button class="clickme" onclick="move()">Progress</button>

    <audio id="myAudio">
        <source src="queen.mp3" type="audio/mpeg">
        Your browser does not support the audio element.
    </audio>


    <button class="clickme2" onclick="playAudio()" type="button">Play Audio</button>
    <button class="clickme3" onclick="pauseAudio()" type="button">Pause Audio</button>



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
            const constraints = {
                video: true
            };
            const video = document.querySelector('video');
            navigator.mediaDevices.getUserMedia(constraints).then((stream) => {
                video.srcObject = stream
        });
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
                document.getElementById("answer_" + arg).style.backgroundColor = "green";
                answerFlag = true;
                correct_Answer();
                setTimeout(yellow, 1000);

            }

            if (arg !== obj.correct && !answerFlag) {
                document.getElementById("answer_" + arg).style.backgroundColor = "red";
                document.getElementById("answer_" + obj.correct).style.backgroundColor = "green";
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
            document.getElementById("_" + correctAnswerCount).style.backgroundColor = "yellow";
            correctAnswerCount++;
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
                }
            };

            // XMLHttp.open("GET", `info${position}.txt`, true);
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