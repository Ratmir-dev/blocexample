import 'package:blocexample/bloc/user_bloc.dart';
import 'package:blocexample/bloc/user_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ActionButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final UserBloc userBloc = BlocProvider.of<UserBloc>(context);
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        RaisedButton(
          child: Text("Загрузить"),
          onPressed: (){
            userBloc.add(UserLoadEvent());
          },
          color: Colors.green,
        ),
        SizedBox(width: 8,),
        RaisedButton(
          child: Text("Очистить"),
          onPressed: (){
            userBloc.add(UserClearEvent());
          },
          color: Colors.red,
        )
      ],
    );
  }
}
