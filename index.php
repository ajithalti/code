<!DOCTYPE html>
<?php
    session_start();
    session_unset();
    session_destroy();
?>
<html>
    <head>
        <title>Altiwap</title>
        <meta charset="utf-8">
        <meta
        name="viewport" content="width=device-width,initial-scale=1,shrink-to-fit=no">
        <link rel="stylesheet" href="index.css"></link>
        <link rel="stylesheet" href=""></link>
        <style type= "text/css">
                 
            canvas
            {
                width:100%;
                height:100%;
                position:absolute;
                left:0px;
                right:0px;
                top:0px;
                bottom:0px;
            }
        </style>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        </head>
        <body class="container" id="y">
            <!-- <canvas id="canvas"></canvas>-->
            <div id="a">
                <div id="d">
                    <button id="but" onclick="menu()"><img src="hamburgerm.png" alt="Menu"></button>   
                 </div>
                <div id="ml">
                    <button id="mb" onclick="ct()">Hatered?<br> Change Theme Here!</button>
                    <br>
                    <button id="mb" onclick="date()">Date
                    </button><br>
                    <button id="mb" onclick="news()"><a href="http://www.google.com/news" target="_blank">News</a></button>
                    <br>
                    <button id="but" class="dm" onclick="darkmode()">Dark mode on</button>
                    <br>
                    <button id="mb"><a href="signup.html">Sign Up</a></button>
                    <br>
                    <button id="mb" onclick="set()">Settings</button>
                 </div>
                 <div id="dset">
                     <hr>
                     <button id="mb" onclick="about()">About</button>
                     <br>
                     <button id="mb" ><a href="fb.php">Feedback</a></button>
                     <hr>
                 </div>
                 <progress id="p"min="0" max="100" value="0"></progress>
                 <p id="pa">Welcome</p>
                 <a href="http://ajithkumarg.000webhostapp.com"> <font size="4px">Altiwap</font></a>
                 <br>
                 <small>King  for everything</small>
                 </div>
                 <div id="b">
                    <input type="text">
                    <br />
                    <button id="a"onclick="pl()" >search</button>     
                    <br />
                    <font size="2px">
                    <marquee id="m" >This site is under development! You are in the beta mode.<br>#STAY HOME#STAY SAFE</marquee>
                    <marquee id="m" direction="right">Be proud for being a vegan!!!<br>Cherish veganism!</marquee>
                </div>
            
              
                <button id="sbut" onclick="stream()">Want to stream now?</button>
                <br>
                <div id="ds">
                    <button id="but" onclick="prev()">
                    <img src="leftarrow.png"></img>
                </button>
                    <audio id="au" src="https://mobcup.net/d/eczp4sql/mp3"controls>Audio not supported by your browser</audio>
                    <button id="but" onclick="next()">
                        <img src="rightarrow.png">
                    </button>
                    <br>
                </div>
                <button id="but" ><a href="game.html">Games!<br>Click here</a></button>
                <button id="but" ><a href="animations.html">Animations!<br>Click here</a></button>
                <div id="a">
                Tamil songs
                </div>
            
          
             
                <div id="d">
                <a onclick="pl()" href="#"><img src="folder.png" alt="[+]">2020 songs</a>
                <hr>
                <a href="2019s.html"><img src="folder.png"alt="[+]">2019 songs</a>
                <hr>
                <a onclick="pl()" href="#"><img src="folder.png"alt="[+]">2018 songs</a>
                <hr>
                <a onclick="pl()"href="#"><img src="folder.png"alt="[+]">Tamil yearly songs</a>
                <hr>
                <a onclick="pl()"href="#"><img src="folder.png" alt="[+]">Ringtones</a>
                <hr>
                <a onclick="pl()" href="#"><img src="folder.png" alt="[+]">AR Rahman songs</a>
                <hr>
                <a onclick="pl()" href="#"><img src="folder.png" alt="[+]">Ilayaraja songs</a>
                <hr>
                <a onclick="pl()" href="#"><img src="folder.png" alt="[+]">Anirudh songs</a>
            
                </div>
            
           
                <div id="a">
                    <a id="tag"href="http://ajithkumarg.000webhostapp.com">Home</a>
                    <p>©Altiwap.com<br>All Right Reserved
                        <br>
                        <button id="mb" ><a href="fb.php">Feedback</a></button>
         
                    </p></font>
                </div>
            <!--
        <div id="load">
            <div ><img id="c1"src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOfD62X91DPHaSqNkl5MV1EXajowdhyuX4bqltxpXWzgUZ4MMXM79-hwnAsA&s=10" height="10px" width="10px"></div>
            <div ><img id="c2"src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOfD62X91DPHaSqNkl5MV1EXajowdhyuX4bqltxpXWzgUZ4MMXM79-hwnAsA&s=10" height="10px" width="10px"></div>
            <div ><img id="c3" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOfD62X91DPHaSqNkl5MV1EXajowdhyuX4bqltxpXWzgUZ4MMXM79-hwnAsA&s=10"height="10px" width="10px"></div>
            <div ><img id="c4" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOfD62X91DPHaSqNkl5MV1EXajowdhyuX4bqltxpXWzgUZ4MMXM79-hwnAsA&s=10"height="10px" width="10px"></div>
            <div ><img id="c5"src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOfD62X91DPHaSqNkl5MV1EXajowdhyuX4bqltxpXWzgUZ4MMXM79-hwnAsA&s=10" ></div>
            <div ><img id="c6" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOfD62X91DPHaSqNkl5MV1EXajowdhyuX4bqltxpXWzgUZ4MMXM79-hwnAsA&s=10"height="10px" width="10px"></div>
            <div ><img id="c7" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOfD62X91DPHaSqNkl5MV1EXajowdhyuX4bqltxpXWzgUZ4MMXM79-hwnAsA&s=10"height="10px" width="10px"></div>
            <div ><img id="c8" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOfD62X91DPHaSqNkl5MV1EXajowdhyuX4bqltxpXWzgUZ4MMXM79-hwnAsA&s=10"height="10px" width="10px"></div>
            </div>-->
        
            <!--<div id="load" >
                <div id="b1"></div>
                <div id="b2"></div>
                <div id="b3"></div>
                <div id="b4"></div>
                <div id="b5"></div>
                <div id="b6"></div>
                <div id="b7"></div>
                <div id="b8"></div>
            </div>
        
        
        
         <div id="loadcb">
            <div ><img id="c1"src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOfD62X91DPHaSqNkl5MV1EXajowdhyuX4bqltxpXWzgUZ4MMXM79-hwnAsA&s=10" height="10px" width="10px"></div>
            <div ><img id="c2"src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOfD62X91DPHaSqNkl5MV1EXajowdhyuX4bqltxpXWzgUZ4MMXM79-hwnAsA&s=10" height="10px" width="10px"></div>
            <div ><img id="c3" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOfD62X91DPHaSqNkl5MV1EXajowdhyuX4bqltxpXWzgUZ4MMXM79-hwnAsA&s=10"height="10px" width="10px"></div>
            <div ><img id="c4" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOfD62X91DPHaSqNkl5MV1EXajowdhyuX4bqltxpXWzgUZ4MMXM79-hwnAsA&s=10"height="10px" width="10px"></div>
            <div ><img id="c5"src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOfD62X91DPHaSqNkl5MV1EXajowdhyuX4bqltxpXWzgUZ4MMXM79-hwnAsA&s=10" ></div>
            <div ><img id="c6" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOfD62X91DPHaSqNkl5MV1EXajowdhyuX4bqltxpXWzgUZ4MMXM79-hwnAsA&s=10"height="10px" width="10px"></div>
            <div ><img id="c7" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOfD62X91DPHaSqNkl5MV1EXajowdhyuX4bqltxpXWzgUZ4MMXM79-hwnAsA&s=10"height="10px" width="10px"></div>
            <div ><img id="c8" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOfD62X91DPHaSqNkl5MV1EXajowdhyuX4bqltxpXWzgUZ4MMXM79-hwnAsA&s=10"height="10px" width="10px"></div>
            </div>-->
            
<div id="loadcb">
            <div ><img id="c1" src="tball.png""></div>
            <div ><img id="c2"src="tball.png"></div>   
            <div ><img id="c3"  src="tball.png"></div>
            <div ><img id="c4"  src="tball.png"></div>
            <div ><img id="c5"  src="tball.png"></div>
            <div ><img id="c6"  src="tball.png"></div>
            <div ><img id="c7"  src="tball.png"></div>
            <div ><img id="c8"  src="tball.png"></div>
      
            </div>--
            
            
        
      <!--  <script src="https://code.responsivevoice.org/responsivevoice.js?key=d8Fo458v"></script>
        
        
        
        
        
        
        <script src="//code.tidio.co/zcpdzhtgfuvik3gjd8iexiasqp7vp6rd.js" async></script>-->
        
    </body>
    <script src="index.js"></script>
    <script>
 
  var canvas = document.querySelector("canvas");
  var ctx = canvas.getContext("2d");
  canvas.width = window.innerWidth;   
  canvas.height = window.innerHeight;   
  function Circle(x,y,dx,dy,radius,color) {
  this.x = x;
  this.y = y;
  this.dx = dx;
  this.dy = dy;
  this.color = color;
  this.radius = radius;
this.draw = function() {
  ctx.beginPath(); ctx.arc(this.x,this.y,this.radius,0,Math.PI * 2,false);
 ctx.strokeStyle = " hsl("+this.color +",100%,50%) ";
 ctx.stroke();
 ctx.fillStyle = " hsl("+this.color +",100%,50%) ";
 ctx.fill();
  };
  this.update = function() {
  this.x += this.dx;
 this.y += this.dy;
 this.color++;
 if(this.x + this.radius > canvas.width || this.x - this.radius < 0 ) {
 this.dx = -this.dx;
 };
 if(this.y + this.radius > canvas.height || this.y - this.radius < 0 ) {
 this.dy = -this.dy;
 };
 this.draw();
  };
  };
  var circleArray = [];
  for(var i = 0; i < 50; i++) {
  var x =  Math.random() * (canvas.width -radius * 2) + radius;
  var y = Math.random() * (canvas.height -radius * 2) + radius;
  var dx = (Math.random() -0.5)*4 ;
  var dy = (Math.random() -0.5)*4 ;
  var radius = Math.random()*5;
   color=360*Math.random();
circleArray.push(new Circle(x,y,dx,dy,radius,color));
}
   function animate() {
  ctx.clearRect(0,0, canvas.width,canvas.height);
for(var i = 0; i < circleArray.length; i++) {
   circleArray[i].update();
 };
webkitRequestAnimationFrame(animate) ;
 };
  webkitRequestAnimationFrame(animate) ;
 
    </script>
</html>