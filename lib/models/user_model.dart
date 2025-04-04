class UserModel {
  // members
  late int id;
  late String name;
  late String username;
  late String email;
  late AddressModel address;

  // constructor
  UserModel({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
    required this.address,
  });

  // fromJson
  UserModel.fromJson(Map json) {
    id = json["id"];
    name = json["name"];
    username = json["username"];
    email = json["email"];
    address = AddressModel.fromJson(json["address"]);
  }
}

class AddressModel {
  // members
  late String street;
  late String suite;
  late String city;
  late String zipcode;

  // fromJson
  AddressModel.fromJson(Map json) {
    street = json["street"];
    suite = json["suite"];
    city = json["city"];
    zipcode = json["zipcode"];
  }
}

