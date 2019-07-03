import 'package:flutter/material.dart';
import './users_card.dart';
import '../../models/user.dart';
import 'package:scoped_model/scoped_model.dart';
import '../../scoped-models/main.dart';
import '../../translation/translation_strings.dart';

class Users extends StatelessWidget {
  final String typeUsersName;
  final BuildContext contextt;
  final List<dynamic> myResp;
  Users(this.typeUsersName, this.contextt, this.myResp);


  Widget _buildUsersList(MainModel model, BuildContext context) {
    Widget userCard;
    List<User> users = model.allUsers;
    if (users.length > 0) {
      int len = users.length - 1;
      userCard = ListView.builder(
          itemCount: users.length, 
          itemBuilder: (BuildContext cont, int index) => len == index ? UserCard(users[index], model, index, contextt, typeUsersName, myResp,isLast: true) : UserCard(users[index], model, index, contextt, typeUsersName, myResp));
    } else {
      userCard = Center(child: Text(Translations.of(context).userTypeNoUsersFounded,style: TextStyle(fontSize: myResp[357]),),);
      userCard = Container();
    }
    return userCard;
  }

  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<MainModel>(builder: (BuildContext context, Widget child, MainModel model){
      return _buildUsersList(model, context);
    });
  }
}
