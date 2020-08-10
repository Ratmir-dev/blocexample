import 'dart:convert';

import 'package:blocexample/models/user.dart';
import 'package:http/http.dart' as http;
class UserProvider{
  Future<List<User>> getUser() async {
    final response = await http.get('http://eclipsedevelop.ru/api.php/cbgetusers?token=ozlRpEMyFgIh79q4aAXTPO2W8');
    if(response.statusCode == 200){
      final List<dynamic> userJson = json.decode(response.body);
      return userJson.map((json) => User.fromJson(json)).toList();
    } else {
      throw Exception("Не удалось загрузить пользователей");
    }
  }
}