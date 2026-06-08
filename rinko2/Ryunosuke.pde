void Ryunosuke(){
  int count = 0;
  int N = 100000;
  for(int i=0; i<N; i++){
    double x = random(1);
    double y = random(1);
    
    if(x*x + y*y <= 1){
      count++;
    }
  }
  
  double pi = 4.0 * count / N;
  println(pi);
}
