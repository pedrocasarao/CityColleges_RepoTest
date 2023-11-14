int wind
ArrayList<SnowFlake> snow = new ArrayList<SnowFlake>(); 
 
SnowFlake s = new SnowFlake(50,50,50,175); 

void setup()
{
  for(int i=0; i<250; i++)
  {
    snow.add(new SnowFlake((int)random(0,500),(int)random(0,500),(int)random(1,50),(int)random(1,255))); 
  }
 
void draw()
{
  background(0);
  if(random(0,1)<0.2)
  {
    wind = (int)random(0,2);       
  }
}

}

class SnowFlake{
  
 
   PVector pos = new PVector(); 
   float size;
   int alpha; 
   float speed; 
   
   SnowFlake()
    {
      
    }
    
    SnowFlake(int x, int y , float size, int a  )
    {
      // i need my Pos
      pos = new PVector(x,y); 
      //I need my size 
      this.size=size;  
      
     //I need my Alpha
     alpha=a; 
    }
    
    void Update()
    {
      
      pos.y++;
      switch(wind)
      {
        case 0:
        pos.x - = speed ;
        break ; 
        case 1 :
        break;
        case 2:
        pos.x+=speed;
      }
      if(pos.y>500+ (size/2))
    }
    
    void Render()
    {
      fill(255,255,255,alpha); 
     ellipse(pos.x, pos.y , size,size); 
    }
}
