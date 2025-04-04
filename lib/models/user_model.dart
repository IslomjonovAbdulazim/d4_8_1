class UserModel {
  // members
  late int id;
  late String name;
  late String username;
  late String email;

  // constructor
  UserModel({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
  });

  // fromJson
  UserModel.fromJson(Map json) {
    id = json["id"];
    name = json["name"];
    username = json["username"];
    email = json["email"];
  }
}

