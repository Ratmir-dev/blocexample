import 'package:blocexample/models/user.dart';
import 'package:blocexample/services/user_api_provider.dart';

class UserRepository{
  UserProvider _usersProvider = UserProvider();
  Future<List<User>> getAllUsers() => _usersProvider.getUser();
}