PImage img;

Picture[] pictures = new Picture[64];

int tileCountX = 8;
int tileCountY = 8;
int tileCount = tileCountX*tileCountY;

int tWidth, tHeight;

void setup() {
   size(1024, 576);
  
   img = loadImage("image.jpg");
   image(img, 0, 0);
   
   tWidth = width/tileCountY;
   tHeight = height/tileCountX;
   
   int index = 0;
   for (int gridY = 0; gridY < tileCountY; gridY++){
      for (int gridX = 0; gridX < tileCountX; gridX++){
        pictures[index++] = new Picture(gridX*tWidth, gridY*tHeight, width/8, height/8);
      }
  }
  
};

void draw() {
  background(0);

  for (int i = 0; i < pictures.length; i++) {
    pictures[i].cropStart();  
    pictures[i].cropTiles(i); 
  }

};

class Picture {
  PVector location;
  float randX, randY;
  int tilewidth;
  int tileheight;
  int cropStartX;
  int cropStartY;
  int cropX;
  int cropY;
  float time = 0;
  int counter = 0;
  
  Picture(int x, int y, int w, int h) {
    location = new PVector(x, y);
    tilewidth = w;
    tileheight = h;
  };
  
  void cropStart() {
     cropStartX = Math.round(location.x);
     cropStartY = Math.round(location.y);
     PImage crop = img.get(cropStartX, cropStartY, tilewidth, tileheight);
     image(crop, location.x, location.y);
  };
  
  void cropTiles(int count) {
    //1.Reihe
    if(count == 10) {
       randX = map(noise(time), 0, 1, location.x - 10, location.x  + 10); 
       randY = map(noise(time), 0, 1, location.y -1 , location.y + 1);
       cropPics();
    } 
    
    //2.Reihe
    if(count == 17) {
       randX = map(noise(time), 0, 1, location.x - 10, location.x  + 10); 
       randY = map(noise(time), 0, 1, location.y -5, location.y + 5);
       cropPics();
    } 
    
    if(count == 18) {
       randX = map(noise(time), 0, 1, location.x + 1, location.x + 1); 
       randY = map(noise(time), 0, 1, location.y -10, location.y + 10);
       cropPics();
    } 
    
    if(count == 19) {
       randX = map(noise(time), 0, 2, location.x - 10, location.x  + 10); 
       randY = map(noise(time), 0, 2, location.y, location.y + 4);
       cropPics();
    }
    
    //3.Reihe
    if(count == 24) {
       randX = map(noise(time), 0, 1, location.x - 10, location.x  + 10); 
       randY = map(noise(time), 0, 1, location.y -2, location.y + 1);
       cropPics();
    } 
    
    if(count == 25) {
       randX = map(noise(time), 0, 1, location.x - 2, location.x  + 2); 
       randY = map(noise(time), 0, 1, location.y -15, location.y + 15);
       cropPics();
    }
    
    if(count == 26) {
       randX = map(noise(time), 0, 1, location.x - 10, location.x  + 2); 
       randY = map(noise(time), 0, 1, location.y -2, location.y + 10);
       cropPics();
    } 
    
    if(count == 27) {
       randX = map(noise(time), 0, 1, location.x - 10 , location.x  + 10); 
       randY = map(noise(time), 0, 1, location.y - 10, location.y + 10);
       cropPics();
    } 
    
    if(count == 28) {
       randX = map(noise(time), 0, 1, location.x - 3, location.x  + 3); 
       randY = map(noise(time), 0, 1, location.y -8, location.y + 8);
       cropPics();
    }
    
    if(count == 29) {
       randX = map(noise(time), 0, 1, location.x - 7, location.x  + 7); 
       randY = map(noise(time), 0, 1, location.y -3, location.y + 3);
       cropPics();
    } 
    
    //4.Reihe
    if(count == 33) {
       randX = map(noise(time), 0, 1, location.x , location.x  + 2); 
       randY = map(noise(time), 0, 1, location.y -4, location.y + 15);
       cropPics();
    } 
    
    if(count == 34) {
       randX = map(noise(time), 0, 1, location.x - 20, location.x + 20); 
       randY = map(noise(time), 0, 1, location.y, location.y);
       cropPics();
    } 
    
    if(count == 35) {
       randX = map(noise(time), 0, 1, location.x - 5, location.x  + 25); 
       randY = map(noise(time), 0, 1, location.y -4, location.y + 4);
       cropPics();
    }
    
    if(count == 36) {
       randX = map(noise(time), 0, 1, location.x - 5, location.x  + 5); 
       randY = map(noise(time), 0, 1, location.y -7, location.y + 7);
       cropPics();
    } 
    
    if(count == 37) {
       randX = map(noise(time), 0, 1, location.x - 6, location.x  + 6); 
       randY = map(noise(time), 0, 1, location.y -10, location.y + 10);
       cropPics();
    }
    
    if(count == 38) {
       randX = map(noise(time), 0, 1, location.x - 1, location.x  + 1); 
       randY = map(noise(time), 0, 1, location.y -4, location.y + 4);
       cropPics();
    }
    
    if(count == 39) {
       randX = map(noise(time), 0, 1, location.x - 10, location.x  + 10); 
       randY = map(noise(time), 0, 1, location.y -6, location.y + 6);
       cropPics();
    }
    
    //5.Reihe
    if(count == 43) {
       randX = map(noise(time), 0, 1, location.x - 10, location.x  + 10); 
       randY = map(noise(time), 0, 1, location.y -4, location.y + 4);
       cropPics();
    } 
    
    if(count == 44) {
       randX = map(noise(time), 0, 1, location.x - 2, location.x  + 2); 
       randY = map(noise(time), 0, 1, location.y -20, location.y + 20);
       cropPics();
    } 
    
    if(count == 45) {
       randX = map(noise(time), 0, 1, location.x - 20, location.x  + 20); 
       randY = map(noise(time), 0, 1, location.y -20, location.y + 20);
       cropPics();
    }
    
    if(count == 46) {
       randX = map(noise(time), 0, 1, location.x - 10, location.x  + 10); 
       randY = map(noise(time), 0, 1, location.y -6, location.y + 2);
       cropPics();
    }
    
    //6.Reihe
    if(count == 53) {
       randX = map(noise(time), 0, 1, location.x - 4, location.x  + 4); 
       randY = map(noise(time), 0, 1, location.y -8, location.y + 8);
       cropPics();
    }
    if(count == 54) {
       randX = map(noise(time), 0, 1, location.x - 4, location.x); 
       randY = map(noise(time), 0, 1, location.y -2, location.y + 8);
       cropPics();
    }
    time = time + 0.01;
     
   }
   
   void cropPics() {
     cropX = int(randX);
     cropY = int(randY);
     PImage crop = img.get(cropX, cropY, tilewidth, tileheight);
     image(crop, location.x, location.y);
     
     /*fill(0);
     rect(location.x, location.y, 20, 20);*/
   }
   
 };