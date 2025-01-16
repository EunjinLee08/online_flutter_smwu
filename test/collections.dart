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

  void collectionMap() {
    Map<String, int> nameAgeMap = {};
    nameAgeMap["eunjin"] = 23;
    print(nameAgeMap);

    Map<String, dynamic> dynamicMap = {};
    dynamicMap["a"] = 1;
    dynamicMap["b"] = "cat";
    dynamicMap["c"] = true;
    print(dynamicMap);
    print("get dynamicMap : ${dynamicMap["b"]}");

    dynamicMap.remove("c");
    print("remove dynamicMap : $dynamicMap");

    dynamicMap.length;
    dynamicMap.clear();
  }

  void mapPractice() {
    Map<String, int> nameAge = {};
    nameAge["eunjin"] = 23;
    nameAge["chris"] = 21;
    nameAge["sophie"] = 43;
    print("nameAge 1 : $nameAge");

    nameAge.remove("chris");
    print("nameAge 2 : $nameAge");
  }

  void collectionSet() {
    Set ss = {};
    ss.add("a");
    ss.add(1);
    print("collectionSet 1 : $ss");

    ss.remove("a");
    print("collectionSet 2 : $ss");
  }

  void setPractice() {
    Set<String> countries = {};

    countries.add("Korea");
    countries.add("Japan");
    countries.add("USA");
    countries.add("Spain");
    countries.add("China");
    print("countries 1 : $countries");

    countries.remove("Korea");
    print("countries 2 : $countries");
  }
}
