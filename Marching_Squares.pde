float[][] field;
int res = 10;
int cols, rows;




void setup(){
  //size(600,400);
  fullScreen();
  cols = width/res+1;
  rows = height/res+1;
  field = new float[cols][rows];
  for(int i=0; i<cols; ++i){
    for(int j = 0; j< rows; j++){
      //field[i][j] = noise(i*0.03,j*0.03);
      field[i][j] = floor(random(2));
    }
  }
}
void draw(){
  background(0);
  for(int i=0; i<cols; ++i){
    for(int j = 0; j< rows; j++){
      stroke(field[i][j]*255);
      strokeWeight(res*0.4);
      point(i*res,j*res);
    }
  }
}
