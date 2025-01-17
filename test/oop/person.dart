class Person {
  Person(this.name, this.age, this.weight);

  String name;
  int age;
  double weight;

String talk(String inputName) {
    return '$inputName이 대화를 신청했습니다.';
  }

  @override
  String toString() {
    // TODO: implement toString
    return super.toString();
  }
}
