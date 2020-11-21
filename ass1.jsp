<!DOCTYPE html>
<html>
<head>
    <title>AltiCart</title>
    <meta name="viewport" comtent="width=device-width,initial-scale=1">
    <link rel="stylesheet" href="ass1.css">
    <style>
        body
{
    text-align:center;
}
#header,#itemheader
{
    background-color:pink;
    text-align:center;
    color:purple;
}
#menu
{
    display:none;
    text-align:left;
    position:relative;
    top:30px;
}
#item
{
    background-color:yellow;
    color:red;
    border:2px solid silver;
}
#pop
{
    position:fixed;
}
        </style>
    <script src="assc.js"></script>
</head>
<body>
    <div>
        <div>
        <!--    <h3>Sign in</h3>
            <form action="server.jsp" method="POST">
                <input name="mail" type="mail" placeholder="Mail" required><br>
                <input name="password" type="Password" placeholder="Password" required><br>
                <input type="submit" value="Submit">
            </form>
        -->

        </div>
        <div id="header">
            <button style="left:0px;position:absolute;" onclick="menu()" ><img src="" alt="menu"></button>
            <div id="menu" >
                <button onclick="customize()">Customize theme</button><br>
                <button id="dark" onclick="dark()">Dark theme</button><br>
                <button onclick="signin(0)" id="sb">Sign in</button><br>


            </div>
                <h2>Alticart</h2>
                <p>Roll No:1818104<br>Name:AJITH KUMAR G</p>
        </div>
        <div id="">
            <div >
                <input oninput="search(this)" type="text" required>
                <input type="submit" value="Search">
            </div>
            </div>
        <div id="itemheader">
            <h4 id="topic">Category</h4>
        </div>
        <div id="items">
            </div>
    </div>
</body>
<script>
    let iw=window.innerWidth;
let ih=window.innerHeight;
let items=["Mobiles", "Laptops","Tablets", "Cars","Tvs"];
let req=[["Name","Description","Image","Price","Brand","RAM","ROM","SOC","OS"],
    ["Name","Description","Image","Price","RAM","Brand","ROM","Processor"],
    ["Name","Description","Image","Price","Brand","RAM","Price","ROM","SOC"],
    ["Name","Description","Image","Price","Brand","Transmission type","Fuel","Mileage","Model"],
    ["Name","Description","Image","Price","Brand","Panel","Size","OS"]];
let g=[mobile,laptop,tablet,car,tv];
let stack=[];
let Mobiles=["ASUS ROG 2","Iphone XR","Iphone 11", "Nokia 3200"];
let Laptops=["Acer aspire 5","Acer aspire 7"];
let Kitchen=["Spoon","Plate","Pan"];
let Cars=["Tesls S","Tesla Y"];
let Tvs=[];
let i,j,k;
window.onload=function()
{
    if(sessionStorage.getItem("mail")=="altiajay2@gmail.com")
    {
        let add=document.createElement("button");
        add.innerHTML="Manipulate";
        add.onclick=function()
        {
            manipulate();
        }
        let menu=document.getElementById("menu");
        menu.appendChild(add);
    }
    //stack[0][0]="Categories";
    //stack[0][1]=items;
    init("Categories",items);  
    //init(items[1],req[1]); 

}
function manipulate()
{
    let close=document.createElement("button");
    close.innerHTML="close";
    close.style.position="relative";
    close.style.textAlign="left";
    
    let pop=document.createElement("div");
    pop.id="pop";

    pop.style.border="4px solid lightgreen";
    let inner=document.createElement("div");
    pop.style.position="fixed";
    pop.style.backgroundColor="white";
    pop.style.top=window.innerHeight/10+"px";
    pop.style.left=window.innerWidth/4+"px";
    pop.style.width=window.innerWidth/2+"px";
   // pop.style.height=window.innerHeight-window.innerHeight/5+"px";
    inner.style.position="relative";
    //inner.style.top=(window.innerHeight-window.innerHeight/5)/4+"px";
    let dmsg=document.createElement("p");
    dmsg.id="addmsg";
    dmsg.innerHTML="";
    dmsg.style.color="red";
    inner.appendChild(dmsg);
    let title=document.createElement("h3");
    title.innerHTML="Add Item";
    document.body.appendChild(pop);
    pop.appendChild(close);
    pop.appendChild(inner);
    
    let c=document.createElement("Select");
    //c.setAttribute("id","select");
    c.id="select";
    inner.appendChild(title);
    inner.appendChild(c);
    
    let o,t;
    for(i=0;i<items.length;i++)
    {
        o=document.createElement("option");
        
       
        o.setAttribute("value",i);
        t=document.createTextNode(items[i]);
        o.appendChild(t);
        document.getElementById("select").appendChild(o);
    }
    document.getElementById("select").onclick=function()
    {
        adder(document.getElementById("select").value);
    }
    let submit;
    function adder(i)
    {
        let required=document.createElement("div");
       
        if(document.getElementById("required"))
        {
            document.getElementById("required").remove();
        }
        required.id="required";
        for(j=0;j<req[i].length;j++)
        {
           let dom=document.createElement("input");
           dom.id=req[i][j]; 
           dom.name=req[i][j];
           dom.placeholder=req[i][j];
           dom.required=true;
           required.appendChild(dom);
           required.innerHTML+="<br>";
        }
        submit=document.createElement("button");
        submit.name="submit";
        submit.innerHTML="submit";
        submit.id="submit";
        submit.onclick=function()
        {
            addsubmit(i);
        }
        required.appendChild(submit);
        inner.appendChild(required);
    }
    
    
    function addsubmit(i)
    {
        var xmlhttp;
        if(window.XMLHttpRequest)
        {
            xmlhttp=new XMLHttpRequest();

        }
        xmlhttp.onreadystatechange=function()
        {
            if(xmlhttp.readyState==4 && xmlhttp.status==200)
            {
                console.log("ooooo");
                if(this.responseText)
                {
                    let res;
                    res=this.responseText;
                    document.getElementById("addmsg").innerHTML=res;

                    
                    console.log(res); 
 
                }
 
            }
        }
        let uri="server.jsp?category=";
        uri+=items[i];
        for(j=0;j<req[i].length;j++)
        {
            uri+="&"+req[i][j]+"="+document.getElementById(req[i][j]).value;

        }
        console.log(uri);
        xmlhttp.open("GET",uri,true);
        xmlhttp.send();                       
    }
    close.onclick=function()
    {

        document.body.removeChild(pop);
    } 
}

function signin(i)
{
    if(document.getElementById("pop"))
    return;
    let nam=document.createElement("input");
    nam.name="name";
    nam.id="nam";
    nam.value="okok";
    nam.placeholder="Name";
    nam.required=true;
    let dmsg=document.createElement("p");
    dmsg.id="smsg";
    dmsg.innerHTML="";
    dmsg.style.color="red";
    let h,bv,msg,bn;
    if(i===0)
    {
        h="Sign in";
        bv="Sign up";
        msg="New user?";
        bn=1;
    }
    else
    {
        bn=0;
        h="Sign up";
        bv="Sign in";
        msg="Already an user?";
    }
        
    let lb=document.createElement("button");
    lb.innerHTML=bv;
    let close=document.createElement("button");
    close.innerHTML="close";
    close.style.position="relative";
    close.style.textAlign="left";

        let iw=window.innerWidth;
    let ih=window.innerHeight;
    let pop=document.createElement("div");
    pop.id="pop";
    pop.style.border="4px solid lightgreen";
    let inner=document.createElement("div");
    pop.style.position="fixed";
    pop.style.backgroundColor="white";
    pop.style.top=window.innerHeight/10+"px";
    pop.style.left=window.innerWidth/4+"px";
    pop.style.width=window.innerWidth/2+"px";
    pop.style.height=window.innerHeight-window.innerHeight/5+"px";
    inner.style.position="relative";
    inner.style.top=(window.innerHeight-window.innerHeight/5)/4+"px";    
    let form=document.createElement("div");
    let title=document.createElement("h3");
    title.innerHTML=h;
    let mail=document.createElement("input");
    mail.name="mail";
    mail.placeholder="Mail";
    mail.id="mail";
    mail.required=true;
    let pass=document.createElement("input");
    pass.name="password";
    pass.placeholder="Password";
    pass.id="pass";
    pass.required=true;
    let submit=document.createElement("button");
    let message=document.createElement("p");
    message.innerHTML=msg;
    submit.name="submit";
    submit.innerHTML="submit";
    submit.id="submit";
    submit.onclick=dark;
    document.body.appendChild(pop);
    inner.appendChild(title);
    inner.appendChild(dmsg);
    pop.appendChild(close);
    pop.appendChild(inner);
    inner.appendChild(form);
    if(i===1)
    {
        form.appendChild(nam);
        form.innerHTML+="<br><br>"; 
    }
    form.appendChild(mail);
    form.innerHTML+="<br><br>";
    form.appendChild(pass);
    form.innerHTML+="<br><br>";
    form.appendChild(submit);
    form.innerHTML+="<br><br>";
    inner.appendChild(message);
    inner.appendChild(lb);
    /*pass.onChange=function()
    {
        alert("HI");
    }*/
    
    
    lb.onclick=function()
    {
        document.body.removeChild(pop);
        signin(bn);
        return;
    }
    submit=document.getElementById("submit");
    submit.onclick=function()
    {
        let pass=document.getElementById("pass");
        let nam=document.getElementById("nam");
        let mail=document.getElementById("mail");
        var xmlhttp;
                            if(window.XMLHttpRequest)
                            {
                                xmlhttp=new XMLHttpRequest();

                            }
                            xmlhttp.onreadystatechange=function()
                            {
                                if(xmlhttp.readyState==4 && xmlhttp.status==200)
                                {
                                    console.log("ooooo");
                                    if(this.responseText)
                                    {
                                        
                                        let res;
                                        if(i===0)
                                        {
                                            res=JSON.parse(this.responseText);
                                            let sb=document.getElementById("sb");
                                            if(res.name)
                                            {
                                                sb.innerHTML=res.name;
                                                alert("Successfully logged in as "+res.name);
                                                document.body.removeChild(pop);

                                                sessionStorage.setItem("name",res.name);
                                                sessionStorage.setItem("mail",res.mail);
                                                sessionStorage.setItem("password",res.password);
                                                
                                            }
                                            }
                                            else
                                            {
                                                res=this.responseText;
                                                document.getElementById("smsg").innerHTML=res;

                                            }
                                             console.log(res);

                                    }   
                                }
                            }
                            if(i===0)
                            {
                                xmlhttp.open("GET","server.jsp?mail="+mail.value+"&password="+pass.value,true);
                                
                            }
                            else
                            xmlhttp.open("GET","server.jsp?name="+nam.value+"&mail="+mail.value+"&password="+pass.value,true);
                            xmlhttp.send();                       
    }
    close.onclick=function()
    {

        document.body.removeChild(pop);
    } 
}
function get(x,y,z=undefined)
{
    var xmlhttp;
    if(window.XMLHttpRequest)
    {
        xmlhttp=new XMLHttpRequest();

    }
    xmlhttp.onreadystatechange=function()
    {
        if(xmlhttp.readyState==4 && xmlhttp.status==200)
        {
            if(this.responseText)
            {
                let res;
                let avail=[];
                let prod=[];
                res=JSON.parse(this.responseText);
                //return res;
                for(i in res)
                {

                    for(j in res[i])
                    {
                        if(JSON.stringify(res[i][j]).toLowerCase().includes(y.toLowerCase()))
                        {
                            prod.push(res[i]);
                            break;
                        
                            
                        }
                    }
                }
                if(z!=undefined)

                {
                    for(i in res)
                    {
                        for(j in res[i])
                        {
                            if(avail[j]==undefined)
                            {
                                avail[j]=JSON.stringify(res[i][j]);
                            }

                               // else if(avail[j].includes(JSON.stringify(res[i][j])))
                            else 

                            
                            console.log(avail[j]);

                       
                        }

                    }
                    
                    manipulatef(avail);
                    return;
                    //console.log(avail);
                    
                }
                
                console.log(prod);
               
                init(x,prod);
                return;
            }
        }
    }
    xmlhttp.open("GET","server.jsp",true);
    xmlhttp.send(); 
}
function search(i)
{
    if(i.value=="")
    {
        init("Categories",items);
        return;
    }
    get("Search results",i.value);
}
let avail=[];
function filter(i)
{
    //get(items[i],items[i],i);
    manipulatef(i);
}
function manipulatef(avail)
{
    console.log(avail);
    let close=document.createElement("button");
    close.innerHTML="close";
    close.style.position="relative";
    close.style.textAlign="left";
    
    let pop=document.createElement("div");
    pop.id="pop";

    pop.style.border="4px solid lightgreen";
    let inner=document.createElement("div");
    pop.style.position="fixed";
    pop.style.backgroundColor="white";
    pop.style.top=window.innerHeight/10+"px";
    pop.style.left=window.innerWidth/4+"px";
    pop.style.width=window.innerWidth/2+"px";
   // pop.style.height=window.innerHeight-window.innerHeight/5+"px";
    inner.style.position="relative";
    //inner.style.top=(window.innerHeight-window.innerHeight/5)/4+"px";
    let dmsg=document.createElement("p");
    dmsg.id="addmsg";
    dmsg.innerHTML="";
    dmsg.style.color="red";
    inner.appendChild(dmsg);
    let title=document.createElement("h3");
    title.innerHTML="Filter "+items[avail];
    document.body.appendChild(pop);
    pop.appendChild(close);
    pop.appendChild(inner);
    inner.appendChild(title);
    
    /*
    let c=document.createElement("Select");
    //c.setAttribute("id","select");
    c.id="select";
    inner.appendChild(c);
    
    let o,t;
    document.getElementById("select").onclick=function()
    {
        adder(document.getElementById("select").value);
    }
    */
    let submit;
    adder(avail);
    function adder(i)
    {
        let required=document.createElement("div");  
        if(document.getElementById("required"))
        {
            document.getElementById("required").remove();
        }
        required.id="required";
        for(j=4;j<req[i].length;j++)
        {
           let dom=document.createElement("input");
           dom.id=req[i][j]; 
           dom.name=req[i][j];
           dom.placeholder=req[i][j];
           dom.required=true;
           required.appendChild(dom);
           required.innerHTML+="<br>";
        }
        submit=document.createElement("button");
        submit.name="submit";
        submit.innerHTML="submit";
        submit.id="submit";
        submit.onclick=function()
        {
            addsubmit(i);
        }
        required.appendChild(submit);
        inner.appendChild(required);
    }
    function addsubmit(i)
    {
        var xmlhttp;
        if(window.XMLHttpRequest)
        {
            xmlhttp=new XMLHttpRequest();

        }
        xmlhttp.onreadystatechange=function()
        {
            if(xmlhttp.readyState==4 && xmlhttp.status==200)
            {
                console.log("ooooo");
                if(this.responseText)
                {
                    let res;
                    let prod=[];
                    res=JSON.parse(this.responseText);
                //return res;
                    for(i in res)
                    {

                    for(j in res[i])
                    {
                            prod.push(res[i]);
                            //console.log(prod);
                    }
                }
                    //document.getElementById("addmsg").innerHTML=res;

                    init(items[i],prod);
 
                }
 
            }
        }
        let uri="server.jsp?get=true&category=";
        uri+=items[i];
        for(j=4;j<req[i].length;j++)
        {
            uri+="&"+req[i][j]+"="+document.getElementById(req[i][j]).value;

        }
        console.log(uri);
        xmlhttp.open("GET",uri,true);
        xmlhttp.send();                       
    }
    close.onclick=function()
    {

        document.body.removeChild(pop);
    }
}

function init(ip,cat)
{
    let topic=document.getElementById("itemheader");
    
    
   /* if(ip!="Categories")
    {
        stack[stack.length][0]=ip;
        stack[stack.length][1]=cat;
    
    alert(stack.pop());
    }*/
    topic.innerHTML="";
    let but=document.createElement("button");
    but.innerHTML="Home";
    but.onclick=function()
    {
        alert("kkk");
        init("Categories",items);
    }
    topic.appendChild(but);
    topic.innerHTML+=ip;
    let itemdom=document.getElementById("items");

    while(itemdom.firstChild)
    {
        itemdom.firstChild.remove();
        //alert("s");
    }
    for(i=0;i<items.length;i++)
    {
        let f=i;
        console.log(i);
    
    if(items[i]==ip)
    {
        let filterdiv=document.createElement("button");
        filterdiv.id="filter";
        filterdiv.innerHTML="filter";
        filterdiv.onclick=function()
        {
            filter(f);
        }
        topic.appendChild(filterdiv);
    
        break;
    }
}
    for(i in cat)
    {
        let cate=document.createElement("div");
        let itemdom=document.getElementById("items");
        cate.id="item";
        if(ip==="Categories")
            cate.onclick=g[i];
        cate.style.margin="10px";
        cate.style.width=window.innerWidth/2+"px";
        cate.style.position="relative";
        //cate.style.height=window.innerheight-window.innerHeight/10+"px"
        cate.style.left=window.innerWidth/4+"px";
        if(ip!="Categories")
        {

            let img=document.createElement("img");
            img.src=cat[i]['image'];
            img.height="100px";
            img.width="100px";
            img.alt=cat[i]['Image'];
            cate.appendChild(img);
            cate.innerHTML+="<br>";
            let h3=document.createElement("h3");
            h3.innerHTML=cat[i]['Name'];
            cate.appendChild(h3);
            for(j in cat[i])
            {
                if(j=='Image'||j=="_id"||j=='Name')
                continue;

                cate.innerHTML+=j+":";
        
                cate.innerHTML+=cat[i][j];
                cate.innerHTML+="<br>";
        
        
            }
        }
        else
            cate.innerHTML=cat[i];
            
        itemdom.appendChild(cate);
    }
}
function nav()
{
    init("Categories",items);
}
function mobile()
{
    
    //init("Mobiles",Mobiles);
    get("Mobiles","mobile");
}
function laptop()
{
    //init("Laptops",Laptops);
    get(items[1],"laptop");

}
function tablet()
{
    //init("Kitchen appliances",Kitchen);
    get(items[2],"tablet");
}
function car()
{
    //init("Cars",Cars);
    get(items[3],"car");
}
function tv()
{
    get(items[4],"Tvs")
}
let mv=0;
function menu()
{
    m=document.getElementById("menu");
    if(mv%2==0)
    {
        m.style.display="block";
    }
    else
    {
        m.style.display="none";
    }
    mv++;
}
function customize()
{
    let c=prompt('1.Background color\n2.Color\n3.Font family\n4.Font size');
    switch(c)
    {
        case '1':
            document.body.style.backgroundColor=prompt("Enter color");
           break;
        case '2':
            document.body.style.color=prompt("Enter color");
            break;
        case '3':
            document.body.style.fontFamily=prompt("Enter font family");
            break;
        case '4':
            document.body.style.fontSize=prompt("Enter font size");
            break;
    }
}
let d=0;
function dark()
{
    if(d%2==0)
    {
        document.body.style.backgroundColor="black";
        document.body.style.color="white";
        document.getElementById("dark").innerHTML="Light mode";
    }
    else
    {
        document.body.style.backgroundColor="white";
        document.body.style.color="black";
        document.getElementById("dark").innerHTML="Dark mode"
    }
    d++;
}

    </script>
</html>