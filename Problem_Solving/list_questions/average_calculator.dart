void main() {
  List<int> marks =[40,80,30,60];
  int total = 0;
  
  for(int a in marks){
    total += a;
  }
  

  double avg = marks.isEmpty ? 0.0 : total.toDouble() / marks.length;
  

  print("avg: $avg"); 
}
