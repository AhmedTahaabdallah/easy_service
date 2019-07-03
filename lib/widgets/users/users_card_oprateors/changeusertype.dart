import 'package:flutter/material.dart';
import '../../../scoped-models/main.dart';
import '../../../models/user.dart';
//import '../../../widgets/ui_element/adapativ_progress_indicator.dart';
import 'package:connectivity/connectivity.dart';
import '../../../translation/translation_strings.dart';


class ChangeUserType extends StatefulWidget {
  final MainModel model;
  final User users;
  final BuildContext context;
  final String userType;
  final List<dynamic> myResp;
  ChangeUserType(this.model, this.users, this.context, this.userType, this.myResp);
  @override
  _ChangeUserTypeState createState() => _ChangeUserTypeState();
}

enum ChangeUserTypeEnum { ADMINS, USERS, CLIENTS }

class _ChangeUserTypeState extends State<ChangeUserType> {
  void _showMyDialog(String sCode) {
    if (sCode == '1') {
      Scaffold.of(widget.context).showSnackBar(SnackBar(
        backgroundColor: Theme.of(widget.context).primaryColor,
        content: Text(
          Translations.of(widget.context).userTypeShowDialogOne,
          //textAlign: TextAlign.center,
          style: TextStyle(fontSize: 22.0, color: Colors.white),
        ),
      ));
    } else {
      showDialog(
          context: widget.context,
          builder: (BuildContext conte) {
            String mess = Translations.of(widget.context).userTypeShowDialogDefualt;
            if (sCode == '2') {
              mess = Translations.of(widget.context).userTypeShowDialogTwo;
            } else if (sCode == '3') {
              mess = Translations.of(widget.context).userTypeShowDialogThree;
            } else if (sCode == '4') {
              mess = Translations.of(widget.context).userTypeShowDialogFour;
            } else if (sCode == '5') {
              mess = Translations.of(widget.context).userTypeShowDialogFive;
            } else if (sCode == '6') {
              mess = Translations.of(widget.context).userTypeShowDialogSix;
            } else if (sCode == '7') {
              mess = Translations.of(widget.context).userTypeShowDialogSeven;
            } else if (sCode == '10') {
              mess = Translations.of(widget.context).userTypeShowDialogTeen;
            } else if (sCode == '11') {
              mess = Translations.of(widget.context).userTypeShowDialogEleven;
            } else if (sCode == '12') {
              mess = Translations.of(widget.context).userTypeShowDialogTwelve;
            } else if (sCode == '13') {
              mess = Translations.of(widget.context).userTypeShowDialogThirty;
            } else if (sCode == '14') {
              mess = Translations.of(widget.context).userTypeShowDialogFouirty;
            }
            return WillPopScope(
              onWillPop: () async => false,
              child: AlertDialog(
                title: Text(
                  Translations.of(widget.context).userTypeShowDialogTitle,
                  style: TextStyle(
                    fontSize: widget.myResp[402],
                  ),
                ),
                content: Padding(
                  padding: EdgeInsets.only(top: widget.myResp[403]),
                  child: Text(mess,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: widget.myResp[404])),
                ),
                actions: <Widget>[
                  FlatButton(
                      highlightColor: Colors.red,
                      splashColor: Theme.of(widget.context).primaryColor,
                      onPressed: () {
                        Navigator.of(widget.context).pop();
                      },
                      child: Text(Translations.of(widget.context).userTypeShowDialogOk, style: TextStyle(fontSize: widget.myResp[405])))
                ],
              ),
            );
          });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: PopupMenuButton<ChangeUserTypeEnum>(
        itemBuilder: (context) {
          return [
            widget.userType == 'admins' || widget.model.user.userstypeId != 1
                ? null
                : PopupMenuItem<ChangeUserTypeEnum>(
                    value: ChangeUserTypeEnum.ADMINS,
                    child: Text(Translations.of(widget.context).userTypeChangeButtonAdmin, style: TextStyle(fontSize: widget.myResp[396]),),
                  ),
            widget.userType == 'users'
                ? null
                : PopupMenuItem<ChangeUserTypeEnum>(
                    value: ChangeUserTypeEnum.USERS,
                    child: Text(Translations.of(widget.context).userTypeChangeButtonUser, style: TextStyle(fontSize: widget.myResp[397])),
                  ),
            widget.userType == 'clients'
                ? null
                : PopupMenuItem<ChangeUserTypeEnum>(
                    value: ChangeUserTypeEnum.CLIENTS,
                    child: Text(Translations.of(widget.context).userTypeChangeButtonClient, style: TextStyle(fontSize: widget.myResp[398])),
                  )
          ];
        },
        onSelected: (ChangeUserTypeEnum menu) async {
          var connectivityResult = await (Connectivity().checkConnectivity());
          if (connectivityResult == ConnectivityResult.mobile ||
              connectivityResult == ConnectivityResult.wifi) {
            if (menu == ChangeUserTypeEnum.ADMINS) {
              Map<String, dynamic> successInformation =
                  await widget.model.changeUserType(widget.users.id, 'admin');
              _showMyDialog(successInformation['statuscode']);
            } else if (menu == ChangeUserTypeEnum.USERS) {
              Map<String, dynamic> successInformation =
                  await widget.model.changeUserType(widget.users.id, 'user');
              _showMyDialog(successInformation['statuscode']);
            } else if (menu == ChangeUserTypeEnum.CLIENTS) {
              Map<String, dynamic> successInformation =
                  await widget.model.changeUserType(widget.users.id, 'client');
              _showMyDialog(successInformation['statuscode']);
            }
          } else {
            Scaffold.of(widget.context).showSnackBar(SnackBar(
              backgroundColor: Theme.of(widget.context).primaryColor,
              content: Text(
                Translations.of(widget.context).noInternetConnection,
                //textAlign: TextAlign.center,
                style: TextStyle(fontSize: widget.myResp[399], color: Colors.white),
              ),
            ));
          }
        },
        child: Padding(
          padding: EdgeInsets.only(right: widget.myResp[400]),
          child: Text(
            Translations.of(widget.context).userTypeChangeButtonText,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: widget.myResp[401],
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        /*icon: Icon(
          Icons.more_vert,
          size: 30.0,
        ),*/
      ),
    );
  }
}
