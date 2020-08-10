import 'package:blocexample/bloc/user_bloc.dart';
import 'package:blocexample/services/user_repository.dart';
import 'package:blocexample/widgets/ActionButtons.dart';
import 'package:blocexample/widgets/UserList.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  final usersRepository = UserRepository();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) {
        return UserBloc(usersRepository: usersRepository);
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Список пользователей"),
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ActionButtons(),
            Expanded(
              child: UserList(),
            )
          ],
        ),
      ),
    );
  }
}
