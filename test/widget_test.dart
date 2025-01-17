import 'collections.dart';
import 'oop/person.dart';
import 'oop/product.dart';

void main() {
  String name = "eunjinlee";
  print(name);

  int age = 34;
  print(age);

  bool b = true;
  print(b);

  var name2 = "chrislee";
  dynamic name3 = "eunjin";
  name3 = 1;
  name3 = false;

  const name4 = "은진";

  Collections collections = Collections();
  collections.setPractice();


  Person person1 = Person("eunjin", 23, 70);
  print("person1 : $person1");

  String talk1 = person1.talk("eunjin");
  print(talk1);

  List<Person> people = [];
  people.add(Person("chris", 23, 75));
  people.add(Person("sophie", 34, 56));
  people.add(Person("tom", 14, 65));

  Product(name: "latte", company: "starbucks");

/*  var product = Product("아메리카노", "스타벅스");
  print(product);
  product.sale();
  product.sale();
  print(product.count);*/
}
