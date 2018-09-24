// Images
PImage turtle;
PImage rabbit;
PImage finish;

// The Width And the Height of the picture
int width1 = 100;
int height1 = 100;

// where the Turtle and Rabbit Start
int press = 10;
int press1 = 10;

// The text that appear after they win
String winner = "Turtle Win The Game";
String winner1 = "Rabbit Win The Game";

void setup()
{
  // Size of the Window
  size (800,800);
  // The Starting Images
  turtle = loadImage("Turtle.png");
  rabbit = loadImage("Rabbit.png");
  finish = loadImage("Finish-Line-Transparent-PNG.png");
  // The mode that makes the image Center
  imageMode(CENTER);
}

void draw()
{
  // makes the background black
  background (34,139,34);
  
  // Turtle's Road
  fill(0,0,0);
  rect(500,0,200,800);
  fill(255,255,255);
  rect(600,0,10,50);
  rect(600,100,10,50);
  rect(600,200,10,50);
  rect(600,300,10,50);
  rect(600,400,10,50);
  rect(600,500,10,50);
  rect(600,600,10,50);
  rect(600,700,10,50);
 
  // Rabbit's Road
  fill(0,0,0);
  rect(100,0,200,800);
  fill(255,255,255);
  rect(200,0,10,50);
  rect(200,100,10,50);
  rect(200,200,10,50);
  rect(200,300,10,50);
  rect(200,400,10,50);
  rect(200,500,10,50);
  rect(200,600,10,50);
  rect(200,700,10,50);
  
  // Borders
  fill(105,105,105);
  rect(90,0,10,800);
  rect(700,0,10,800);
  rect(300,0,10,800);
  rect(490,0,10,800);
  
  // Finish line
  image(finish, 600, 780, 200, 125);
  image(finish, 200, 780, 200, 125);
  
  // the Turtle and the Rabbit
  image(turtle, 600, 50+press, width1, height1);
  image(rabbit, 200, 50+press1, width1, height1);
  
  // When the Turtle reach the bottom a text apear and stops the program
  if (press >= 700)
  {
    // Color
    fill(255,255,255);
    // text size
    textSize(60);
    // Text that apear on the screen when the turtle reaches the bottom
    text(winner, 100,400);
    // stops the program
    stop();
  }
  // When the Rabbit reach the bottom a text apear and stops the program
  if (press1 >= 700)
  {
    // Color
    fill(255,255,255);
    // Text size
    textSize(60);
    // Text that apear on the screen when the rabbit reaches the bottom
    text(winner1, 90,400);
    // stop the program
    stop();
  }
  
}

void keyPressed(){

  // when the a or A is pressed it moves down by 10 pixels
  if (key == 'a' || key == 'A')
  {
    //Moves down by 10 pixels
    press1 += 10;
  } 
  // when the l or L is pressed it moves down by 10 pixels
  if (key == 'l' || key == 'L')
  {
    //Moves down by 10 pixels
    press += 10;
  }
  
}
