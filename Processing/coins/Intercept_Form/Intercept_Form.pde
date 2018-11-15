//Points on the first line
//Float defines a variable that CAN have a decimal
float x1=4, y1=7, x2=10, y2=8;
//Points on the second line
float x3=15, y3=10, x4=10, y4=0;

//First slope and intercept
//Using the points defined above to find the slope,
//And with the slope finding the intercept
float m = (y2-y1)/(x2-x1);
float b = y1 - x1 * m;

//Second slope and intercept
float m2 = (y4-y3)/(x4-x3);
float b2 = y3 - x3 * m2;

//Basically this is the combining like terms
float intersectB = b-(b2);
float intersectM = m2-m;

//This is the last step (The division) and finding the Y
float xIntersect = intersectB/intersectM;
float yIntersect = xIntersect * m + b;

//Printing all the info
//println displays the data in the console
println("The first equation is ", m, "x +", b);

println("The second equation is ", m2, "x +", b2);

println("The intercect is (", xIntersect, ",", yIntersect,")");