window.onload=function()
{
var v=0; 
var parent=document.getElementById("a");
var pg=document.getElementById("p");
var p=document.getElementById("pa");
var ml=document.getElementById("ml");
var body=document.getElementById ("y");
var can=document.getElementById ("canvas");
document .getElementById ("ml").style .display="none";
//document.getElementById ("ds").style.display="none";
document. getElementById("dset"). style. display="none";
var i=setInterval(add,30);
function add()
{
    if(v==100)
    {
     parent.removeChild(pg);
     parent.removeChild (p);
body.removeChild(can);
     clearInterval(i);
    }
    else
    {
        v++;
        document.getElementById ("p").value=v;
        document.getElementById ("pa").innerHtml=v ;
    }
}
var i=setInterval(canvas,90);
function canvas()
{
    
}
}
var menuv=0;
var setmv=0;
var streamv=0;
var songs=
[
    "https://ypvnxx00-a.akamaihd.net/downloads/ringtones/files/mp3/adiyeazhagemale-23784.mp3",
    "https://mobcup.net/d/eczp4sql/mp3", 
    "https://ypvnxx00-a.akamaihd.net/downloads/ringtones/files/mp3/heyazhagiyeazhagiyetnmachicomringtone-48756.mp3",
    "https://nf1f8200-a.akamaihd.net/downloads/ringtones/files/mp3/thaarame-thaarame-masstamilan-in-48992.mp3",
    "https://jk9nj200-a.akamaihd.net/downloads/ringtones/files/mp3/thendral-vanthu-032c91f3-43af-4274-bc08-a70685cc85ae-48590.mp3",
    "https://ypvnxx00-a.akamaihd.net/downloads/ringtones/files/mp3/kanave-27267-47335.mp3",
    "https://nf1f8200-a.akamaihd.net/downloads/ringtones/files/mp3/muthu-49598.mp3",
    "https://nf1f8200-a.akamaihd.net/downloads/ringtones/files/mp3/ms-love-song-21138-49664.mp3",
    "https://jk9nj200-a.akamaihd.net/downloads/ringtones/files/mp3/yeanennaipirindhaaimasstamilanorgringtone-49141.mp3",
    "https://jk9nj200-a.akamaihd.net/downloads/ringtones/files/mp3/tumhihomaledownloadmingseringtone-10039.mp3",
    "https://ypvnxx00-a.akamaihd.net/downloads/ringtones/files/mp3/tujhme-female-20408.mp3",
    "https://ypvnxx00-a.akamaihd.net/downloads/ringtones/files/mp3/00ennanadanthalum-32477.mp3",
    
    
    "https://nf1f8200-a.akamaihd.net/downloads/ringtones/files/mp3/seaboard-cover-allanpreetham-256kbps-cbr-47242.mp3",
    "https://masstamilan2019download.com/tamil/2020%20Tamil%20Songs/Master/Vaathi%20Coming-Masstamilan.In.mp3"
    
    
]

//var v=setInterval (menu,20);
function menu()
{
    menuv++;
    var ml=document.getElementById("ml");
   // parent.appendChild(ml);
  if(menuv%2==0) 
  document.getElementById("ml").style.display="block";
  else
      document .getElementById ("ml").style .display="none";
}
function date()
{
    alert(Date());
}
function set()
{
    setmv++;
    if(setmv%2==0&&menuv%2==0)
    document. getElementById ("dset"). style. display=
    "none";
    else
    document. getElementById("dset"). style. display="block";
    
}
function about()
{
    alert("Altiwap\nDeveloped by Ajith Kumar G\nAll right reserved");
}
function fdb()
{
    var feedback=prompt("Enter:");
    alert("Thanks for your feedback. It will help us improve. ");
}
function ct()
{
    var e;
    var x= document .getElementById ("y");
    var c=prompt("1.Color\n2.Backgroundcolor\n3.Font family\n4.Font-size");
    switch(c)
    {
        case '1':
            e=prompt("Enter color in Hex or word eg:#000 or black");
            x.style.color=e;
            break;
        case '2':
            e=prompt("Enter backgroundcolor in Hex or word eg:#000 or black");
            x.style.backgroundcolor=e;
            break;
        case '3':
            e=prompt("Enter font family eg:Verdana,Arial,Helvetica,etc");
            x.style.fontfamily=e;
            break;
        case '4':
            e=prompt("Enter fontsize in px eg: 66px");
            x=document.getElementsByTagName("font");
            x.fontsize=e;
            break;
    }
    
}
function news()
{
    alert("You are redirecting to google");
}
function stream()
{
    /*streamv++;
    if(streamv%2!=0)
    document.getElementById ("sd").style.display="none";
    else
    {
    document.getElementById ("sd").style.display="block";
    document. getElementById ("sbut"). innerHtml="No? ";
    }*/
    
    var parent=document.getElementById("sbut");
    var node=document.getElementById ("ds");
    parent.appendChild(node);
    
    
}
var s=0;
function prev()
{
    if(s<0)
    s=songs.length-1;
    document.getElementById  ("au").src=songs[s];
     s--;
    
}
function next()
{
    if(s>songs.length-1)
    s=0;
    document.getElementById  ("au").src=songs[s];
     s++;
}

function fb()
{
var v=confirm("Do you really like this page?");
if(v==true)
alert("Thank you for visiting!");
else
alert ("Thanks for staying with us!");
}

function pl()
{
    alert("Available soon");
}

