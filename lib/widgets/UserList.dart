import 'package:blocexample/bloc/user_bloc.dart';
import 'package:blocexample/bloc/user_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
    builder: (BuildContext context, state) {
        if (state is UserEmptyState){
            return Center(child: Text("Нажмите загрузить"),);
        }
        if (state is UserLoadingState){
          return Center(
          child: CircularProgressIndicator(),
          );
        }
        if (state is UserLoadedState){
          return ListView.builder(itemCount: state.loadedUser.length,
          itemBuilder: (context, index) => Container(
            color: index % 2 == 0 ? Colors.white : Colors.blue,
              child: ListTile(
              title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
              Text("ID: ${state.loadedUser[index].id}", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
              Text("Имя: ${state.loadedUser[index].name}", style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal)),
              Text("Телефон: ${state.loadedUser[index].phone}", style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal)),
              ],
              ),
              ),
              )
              );
            }
        if (state is UserErrorState){
          return Center(
            child: Text(
              "Не удалось получить пользователей"
            ),
          );
        }
        return CircularProgressIndicator();
    }
    );
  }
}
