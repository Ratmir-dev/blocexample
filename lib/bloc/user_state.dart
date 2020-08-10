

import 'package:blocexample/models/user.dart';
import 'package:flutter/cupertino.dart';

abstract class UserState{

}

class UserEmptyState extends UserState{

}

class UserLoadingState extends UserState{

}


class UserLoadedState extends UserState{
  List<User> loadedUser;
  UserLoadedState({@required this.loadedUser}) : assert (loadedUser != null);
}

class UserErrorState extends UserState{
}