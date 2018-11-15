size(400,400);
background(255,255,255);
line(0,0,200,200);
line(400,0,200,200);
fill(255, 0, 0);
rect(175,175,50,50);
noFill();

for(int i=0;i<=100;i=i+20){
    ellipse(200,300,i,i);
}
