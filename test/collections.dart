class Collections {
  void listAdd() {
    int age = 34;

    List<int> ageList = [];
    ageList.add(age);
    print("add 1 : $ageList");
    ageList.add(age);
    print("add 2 : $ageList");

    ageList.addAll([1, 3, 4, 5, 6, 7, 8, 9]);
    print("add 3 : $ageList");

    ageList.insert(0, 100);
    print("add 4 : $ageList");
  }

  void listRemove() {
    List<String> nameList = [];
    nameList.addAll(["eunjin", "chris", "samual", "sally", "sophie"]);

    nameList.removeLast();
    nameList.removeAt(1);
    print("listRemove: $nameList");
    nameList.remove("sally");
    print("listRemove2 : $nameList");
    nameList.clear();
    print("listRemove3 : $nameList");
  }

  void listController() {
    List<int> ageList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
    print("listController 1 : ${ageList.length}");

    int ageFirst = ageList.first;
    int ageLast = ageList.last;
    print("ageFirst : $ageFirst, ageLast : $ageLast");

    int ageFourth = ageList[3];
    print("ageFourth : $ageFourth");
  }

  void listPractice() {
    List<String> animal = [];

    animal.addAll(["Cat", "Dog", "Zebra", "Wolf", "Lion"]);
    animal.removeAt(1);
    print("animal : $animal");
  }
}
