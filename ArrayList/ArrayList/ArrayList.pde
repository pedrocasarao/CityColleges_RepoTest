ArrayList<SnowFlake> snow = new ArrayList<SnowFlake>(); 

SnowFlake s = new SnowFlake(50,50,50,175); 

void setup()
{
  for(int i=0; i<250; i++)
  {
    s.add(new SnowFlake((int)random(0,500),(int)random(0,500),(int)random(1,50),(int)random(1,255)));
  }

}

class SnowFlake{
  
 
   PVector pos = new PVector(); 
   float size;
   int alpha; 
   
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
    }
    
    void Render()
    {
      fill(255,255,255,alpha); 
     ellipse(pos.x, pos.y , size,size); 
    }
}
