

document.querySelector(".btn").addEventListener("click",function(){ var randomVariable1= Math.floor(Math.random()*6) + 1;
    var randomDiceImage= "dice" + randomVariable1 + ".png";
    var image = "images/" + randomDiceImage;
    document.querySelector(".img1").setAttribute("src",image);
    var randomVariable2= Math.floor(Math.random()*6) + 1;
    var randomDiceImage2= "dice" + randomVariable2 + ".png";
    var image2 = "images/" + randomDiceImage2;
    document.querySelector(".img2").setAttribute("src",image2);
    
    if(randomVariable1 > randomVariable2){
        document.querySelector("h1").innerHTML= "Player1 Wins";
    }
    else if(randomVariable1<randomVariable2){
        document.querySelector("h1").innerHTML= "Player2 Wins";
    }
    else{
        document.querySelector("h1").innerHTML= "Draw";
    }});