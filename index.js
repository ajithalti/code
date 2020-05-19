window.onload=function()
{
    let v=0; 
    let parent=document.getElementById("a");
    let pg=document.getElementById("p");
    let p=document.getElementById("pa");
    let ml=document.getElementById("ml");
    let body=document.getElementById ("y");
    let can=document.getElementById ("canvas");
    let i=setInterval(add,5);
    function add()
    {
        if(v==100)
        {
            parent.removeChild(pg);
            parent.removeChild (p);
            //body.removeChild(can);
            clearInterval(i);
        }
        else
        {
            v++;
            document.getElementById ("p").value=v;
            document.getElementById ("pa").innerHtml=v ;
        }
    }
}
    let parent=document.getElementById("a");
    let pg=document.getElementById("p");
    let p=document.getElementById("pa");
    let ml=document.getElementById("ml");
    let body=document.getElementById ("y");
    let dm=0;
    let menuv=0;
    let setmv=0;
    let streamv=0;
    let songs=
    [
         "https://masstamilan2019download.com/tamil/2020%20Tamil%20Songs/Master/Vaathi%20Coming-Masstamilan.In.mp3",
    
    "https://masstamilan2019download.com/tamil/2020%20Tamil%20Songs/Soorarai%20Pottru/Veyyon%20Silli-Masstamilan.in.mp3",
    "https://masstamilan2019download.com/tamil/2020%20Tamil%20Songs/Master/Kutti%20Story-Masstamilan.In.mp3",
    "https://masstamilan2019download.com/tamil/2019%20Tamil%20Mp3/Naan%20Sirithal/Happy%20Birthday-Masstamilan.In.mp3",
    "https://masstamilan2019download.com/tamil/2019%20Tamil%20Mp3/Naan%20Sirithal/Breakup%20Song-Masstamilan.In.mp3"
    ];
    function darkmode()
    {
        if(dm%2==0)
        {
    
            body.style.backgroundColor="black";
            body .style.color="white";
                                                         document.getElementsByClass("dm").innerHtml="Dark mode Off";
        }
        else
        {
            body.style.backgroundColor="silver";
            body .style.color="purple";
        }
        dm++;
    }
    function menu()
    {
        menuv++;
        var ml=document.getElementById("ml");
        // parent.appendChild(ml);
        if(menuv%2===0) 
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
        if(!(setmv%2===0&&menuv%2===0))
            document. getElementById ("dset"). style. display=
    "block";
        else
            document. getElementById("dset"). style. display="none";
    
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
                x.style.backgroundColor=e;
                break;
            case '3':
                e=prompt("Enter font family eg:Verdana,Arial,Helvetica,etc");
                x.style.fontFamily=e;
                break;
            case '4':
                e=prompt("Enter fontsize in px eg: 66px");
                        x=document.getElementsByTagName("font");
            x.fontSize=e;
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
        node.style.display="block";
        parent.innerHtml ="Stream";
    
    
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
        if(v===true)
        alert("Thank you for visiting!");
    else
        alert ("Thanks for staying with us!");
    }

    function pl()
    {

    
         document.getElementById ("loadcb").style.display="block";
            
    let body=document.body;
   body.style.opacity="1"; //body.style.backgroundColor="rgba(0,0,0,1)";
       let c1=document.getElementById("c1");
    let c2=document.getElementById("c2");
    let c3=document.getElementById("c3");
    let c4=document.getElementById("c4");
    let c5=document.getElementById("c5");
    let c6=document.getElementById("c6");
    let c7=document.getElementById("c7");
    let c8=document.getElementById("c8");
    setTimeout(alert("Avaiable soon!"),4000);
    let i=setInterval(load,200);
    let l=0;
    let h=20;
    let w=20;
    
    let h1=10;
    let w1=10;
    function load()
    {
        if(l==0)
        {
            c1.style.height=h+"px";
            c1.style.width=w+"px";
        }
        else
        {
            c1.style.height=h1+"px";
            c1.style.width=w1+"px";
        }
        
        if(l==1)
        {
            c2.style.height=h+"px";
            c2.style.width=w+"px";
        }
        else
        {
             c2.style.height=h1+"px";
            c2.style.width=w1+"px";
        }
        if(l==2)
        {
            c3.style.height=h+"px";
            c3.style.width=w+"px";
        }
        else
        {
             c3.style.height=h1+"px";
            c3.style.width=w1+"px";
        }
        if(l==3)
        {
            c4.style.height=h+"px";
            c4.style.width=w+"px";
        }
        else
        {
             c4.style.height=h1+"px";
            c4.style.width=w1+"px";
        }
        if(l==4)
        {
            c5.style.height=h+"px";
            c5.style.width=w+"px";
        }
        else
        {
             c5.style.height=h1+"px";
            c5.style.width=w1+"px";
        }
        if(l==5)
        {
            c6.style.height=h+"px";
            c6.style.width=w+"px";
        }
        else
        {
             c6.style.height=h1+"px";
            c6.style.width=w1+"px";
        }
        if(l==6)
        {
            c7.style.height=h+"px";
            c7.style.width=w+"px";
        }
        else
        {
             c7.style.height=h1+"px";
            c7.style.width=w1+"px";
        }
        if(l==7)
        {
            c8.style.height=h+"px";
            c8.style.width=w+"px";
        }
        else
        {
             c8.style.height=h1+"px";
            c8.style.width=w1+"px";
        }
        l++;
        if(l==8)
        l=0;
        
        
    }  
            
            
            
            
            
            
            
    
   /* let c1=document.getElementById("c1");
    let c2=document.getElementById("c2");
    let c3=document.getElementById("c3");
    let c4=document.getElementById("c4");
    let c5=document.getElementById("c5");
    let c6=document.getElementById("c6");
    let c7=document.getElementById("c7");
    let c8=document.getElementById("c8");
    let j=setInterval(load,200);
    let l=0;
    let h=20;
    let w=20;
    
    let h1=10;
    let w1=10;
    function load()
    {
        if(l==0)
        {
            c1.style.height=h+"px";
            c1.style.width=w+"px";
        }
        else
        {
            c1.style.height=h1+"px";
            c1.style.width=w1+"px";
        }
        
        if(l==1)
        {
            c2.style.height=h+"px";
            c2.style.width=w+"px";
        }
        else
        {
             c2.style.height=h1+"px";
            c2.style.width=w1+"px";
        }
        if(l==2)
        {
            c3.style.height=h+"px";
            c3.style.width=w+"px";
        }
        else
        {
             c3.style.height=h1+"px";
            c3.style.width=w1+"px";
        }
        if(l==3)
        {
            c4.style.height=h+"px";
            c4.style.width=w+"px";
        }
        else
        {
             c4.style.height=h1+"px";
            c4.style.width=w1+"px";
        }
        if(l==4)
        {
            c5.style.height=h+"px";
            c5.style.width=w+"px";
        }
        else
        {
             c5.style.height=h1+"px";
            c5.style.width=w1+"px";
        }
        if(l==5)
        {
            c6.style.height=h+"px";
            c6.style.width=w+"px";
        }
        else
        {
             c6.style.height=h1+"px";
            c6.style.width=w1+"px";
        }
        if(l==6)
        {
            c7.style.height=h+"px";
            c7.style.width=w+"px";
        }
        else
        {
             c7.style.height=h1+"px";
            c7.style.width=w1+"px";
        }
        if(l==7)
        {
            c8.style.height=h+"px";
            c8.style.width=w+"px";
        }
        else
        {
             c8.style.height=h1+"px";
            c8.style.width=w1+"px";
        }
        l++;
        if(l==8)
        l=0;
        
        
    }*/
}




/*function pl()
{
    setTimeout(alert("available soon"),7000);
    let l=0;
    let h=0;
    let h1=20;
    let w=50;
    let w1=20;
    document.getElementById ("load").style.display="block";
    let id=["b1","b2","b3","b4","b5","b6","b7","b8"];
    let b1=document.getElementById("b1");
    let b2=document.getElementById("b2");
    let b3=document.getElementById("b3");
    let b4=document.getElementById("b4");
    let b5=document.getElementById("b5");
    let b6=document.getElementById("b6");
    let b7=document.getElementById("b7");
    let b8=document.getElementById("b8");
    let j=setInterval(move,150);
    function move()
    {
       
        if(l==0)
        {
        b1.style.height=h+"px";
        b1.style.width=w+"px";
        }
        else
        {
        b1.style.height=h1+"px";
        b1.style.width=w1+"px";
        }
        if(l==1)
        {
        b2.style.height=h+"px";
        b2.style.width=w+"px";
        }
        else
        {
        b2.style.height=h1+"px";
        b2.style.width=w1+"px";
        }
        if(l==2)
        {
        b3.style.height=h+"px";
        b3.style.width=w+"px";
        }
        else
        {
        b3.style.height=h1+"px";
        b3.style.width=w1+"px";
        }
        if(l==3)
        {
        b4.style.height=h+"px";
        b4.style.width=w+"px";
        }
        else
        {
        b4.style.height=h1+"px";
        b4.style.width=w1+"px";
        }
        if(l==4)
        {
        b5.style.height=h+"px";
        b5.style.width=w+"px";
        }
        else
        {
        b5.style.height=h1+"px";
        b5.style.width=w1+"px";
        }
        if(l==5)
        {
        b6.style.height=h+"px";
        b6.style.width=w+"px";
        }
        else
        {
        b6.style.height=h1+"px";
        b6.style.width=w1+"px";
        }
        if(l==6)
        {
        b7.style.height=h+"px";
        b7.style.width=w+"px";
        }
        else
        {
        b7.style.height=h1+"px";
        b7.style.width=w1+"px";
        }
        if(l==7)
        {
        b8.style.height=h+"px";
        b8.style.width=w+"px";
        }
        else
        {
        b8.style.height=h1+"px";
        b8.style.width=w1+"px";
        }
        l++;
        if(l==8)
        l=0;
        
    }
}
*/
