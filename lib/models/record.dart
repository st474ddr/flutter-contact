class Record {
  String name;
  String company;
  String contact;
  String photo;
  String url;

  Record(
      {required this.name,
      required this.company,
      required this.contact,
      required this.photo,
      required this.url});

  factory Record.fromJson(Map<String, dynamic> json) {
    return Record(
        name: json['name'],
        company: json['company'],
        contact: json['contact'],
        photo: json['photo'],
        url: json['url']);
  }
}