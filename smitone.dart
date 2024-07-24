void main (){
  List<String> check = 'HELlO WORLD'.split('');
 

  for (int i = 0  ; i < check.length ; i++){
    for (int j = 0; j < check.length; j++){
      if(i == j ){
        continue;
      }else{
        if (check[i]==check[j]){
          // check.remove(check[i]);
          check.removeWhere((index) => index == check[i]);
        }
      }
    }

  }
  
//  for(int i=0 ; i < check.length ; i++){
//     check.removeWhere((index) => index == check[i]);
//  }
print(check);

}