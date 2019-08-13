import processing.video.*;

Capture video; 

color trackColor; 
float threshold = 25;

void setup() 
{
  size(640, 360);
  String[] camera = Capture.list()
  printArray(cameras);
  video - new Capture(this, camera[3]);
  video.start();
  trackColor = color(255, 0, 0); //Red
}

void captureEvent(Capture video)
{
  video.read();
}

void draw()
{
  video.loadPixels();
  image(video, 0, 0);
  
  float worldRecord = 500;
  
  int closestX = 0;
  int closestY = 0;
}

//Pixel Search 
for (int x = 0; x < video.width; x++ ) 
{
  for(int y = 0; y < video.height; y++ ) 
  {
    color currentColor = video.pixels[loc];
    float red1 = red(currentColor);
    float green1 = green(currentColor);
    float blue1 = blue(currentColor);
    float red2 = red(trackColor);
    float green2 = green(trackColor);
    float blue2 = blue(trackColor);
    
    float distance = dist(red1, green1, blue1, red2, green2, blue2);
    if (distance < worldRecord) 
    {
      worldRecord = distance;
      closestx = x;
      closesty = y;
    }
  }
}
  
  
  
  
   
