void main() {
  List<String> hewan = ['ayam', 'bebek', 'angsa', 'ikan'];
  print(hewan.first);
  print(hewan.last);
  print('-------');
  
  var x = hewan.length - 1;
  while(x >= 0){
    print(hewan[x]);
    x--;
  }
  
  print('-------');
  
  for(var i = 0; i<hewan.length; i++){
    print(hewan[i]);
  }
}
