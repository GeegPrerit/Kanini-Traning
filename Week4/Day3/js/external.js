function even(){
    var a = document.getElementById("number").value;
    window.alert("external js is called")
    for(var i=2;i<=a;i++){
        if(i%2!=0 || i==4){
            continue;
        }
        else{
            document.write(i+"<br>");
        }
    }
}