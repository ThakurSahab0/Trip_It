class DataModel {
  String name;
  String img;
  String description;
  String location;
  double stars;
  int people;
  int price;
  DataModel(
      {required this.name,
      required this.description,
      required this.img,
      required this.location,
      required this.people,
      required this.price,
      required this.stars});
  factory DataModel.fromJason(Map<String, dynamic> json) {
    return DataModel(
        name: json["name"],
        description: json["description"],
        img: json["img"],
        location: json["location"],
        people: json["people"],
        price: json["price"],
        stars: json["stars"]);
  }
}
