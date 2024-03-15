class Test {
  int code;
  String name;
  List<dynamic> seasoning;
  Test({required this.code, required this.name, required this.seasoning});

  factory Test.fromJson(Map<String, dynamic> json) {
    List<dynamic> seasoningToList(dynamic types) {
      List<Map<String, dynamic>> ret = [];
      for (int i = 0; i < types.length; i++) {
        ret.add(types[i]);
      }
      return ret;
    }

    return Test(
      code: json['code'],
      name: json['name'],
      seasoning: seasoningToList(json['seasoning']),
    );
  }
}
