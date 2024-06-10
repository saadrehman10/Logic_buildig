// void main(){
//   List fruit=[];
//   fruit.addAll(['apple','banana']);
//   print(fruit);
// }

void main() {
//   Question:
// Given a map representing a product with keys "name", "price", and
// "quantity", write Dart code to check if the product is in stock. If the quantity is
// greater than 0, print "In stock", otherwise print "Out of stock"

  Map product = {"name": "amir", "price": "6000", "quantity": 4};
  print(product["name"]);
  if (product["quantity"] >= 0) {
    print("inStock");
  } else {
    print("Out of stock");
  }
}
