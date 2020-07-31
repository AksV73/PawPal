class dog {
  final String dogname;
  final String group1;
  final String group2;

  dog({this.dogname, this.group1, this.group2});

  factory dog.fromJson(Map<String, dynamic> json) {
    return new dog(
      dogname: json['BreedName'] as String,
      group1: json['Group1'] as String,
      group2: json['Group2'] as String,
    );
  }
}