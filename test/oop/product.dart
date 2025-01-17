class Product {
  String name;
  String company;
  int count = 0;
  int price = 5000;

  // Product(this.name, this.company);
  Product({required this.name, required this.company});

  void sale() {
    count++;
  }

  @override
  String toString() {
    // TODO: implement toString
    return 'Product{name: $name, company: $company, count: $count, price: $price}';
  }

}