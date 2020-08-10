
class User{
  int id;
  String name;
  String phone;
  String bonus;

  User({this.id, this.bonus, this.name, this.phone});

  factory User.fromJson(Map<String, dynamic> json){
    return User(
      id: json['number'],
      name: json['name'],
      phone: json['num'],

    );
  }
}