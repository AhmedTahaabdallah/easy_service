import 'package:flutter/material.dart';
//import 'package:real_estate_servicing/models/problemm.dart';
import '../../../scoped-models/main.dart';
import '../../../models/user.dart';
import '../../../widgets/ui_element/adapativ_progress_indicator.dart';
import 'package:connectivity/connectivity.dart';
import '../../../translation/translation_strings.dart';


class DeleteUserCard extends StatefulWidget {
  final MainModel model;
  final User users;
  final BuildContext context;
  final List<dynamic> myResp;
  DeleteUserCard(this.model, this.users, this.context, this.myResp);
  @override
  _DeleteUserCardState createState() => _DeleteUserCardState();
}

class _DeleteUserCardState extends State<DeleteUserCard> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.delete,
        color: Colors.red.shade600,
        size: widget.myResp[383],
      ),
      onPressed: () async {
        if (widget.model.isLoadinProgressAllUsers ||
            widget.model.isLoadingFetchAllUsers ||
            widget.model.isLoadingFetchAllUsersMore ||
            widget.model.selAllUserId != 0) {
          Scaffold.of(widget.context).showSnackBar(
            SnackBar(
              backgroundColor: Theme.of(widget.context).primaryColor,
              content: Text(
                Translations.of(widget.context).allProblemsScaffoldMessageTwo,
                style: TextStyle(
                  fontSize: widget.myResp[384],
                ),
              ),
            ),
          );

          return;
        }
        var connectivityResult = await (Connectivity().checkConnectivity());
        if (connectivityResult == ConnectivityResult.mobile ||
            connectivityResult == ConnectivityResult.wifi) {
          showDialog(
              context: widget.context,
              builder: (BuildContext conte) {
                return WillPopScope(
                  onWillPop: () async => false,
                  child: AlertDialog(
                    title: Text(
                      Translations.of(widget.context).userTypeDeleteShowDialogOneTitle,
                      style: TextStyle(
                        fontSize: widget.myResp[385],
                      ),
                    ),
                    content: Padding(
                      padding: EdgeInsets.only(top: widget.myResp[386]),
                      child: Text(Translations.of(widget.context).userTypeDeleteShowDialogOneMessage,
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: widget.myResp[387])),
                    ),
                    actions: <Widget>[
                      FlatButton(
                          highlightColor: Colors.red,
                          splashColor: Theme.of(widget.context).primaryColor,
                          onPressed: () {
                            Navigator.of(widget.context).pop();
                          },
                          child:
                              Text(Translations.of(widget.context).userTypeDeleteShowDialogOneCancel, style: TextStyle(fontSize: widget.myResp[388]))),
                      FlatButton(
                          highlightColor: Colors.red,
                          splashColor: Theme.of(widget.context).primaryColor,
                          onPressed: () async {
                            Navigator.of(widget.context).pop();
                            Map<String, dynamic> successInformation =
                                await widget.model.deleteUser(widget.users.id);
                            if (successInformation['statuscode'] == '1') {
                              Scaffold.of(widget.context).showSnackBar(
                                SnackBar(
                                  backgroundColor:
                                      Theme.of(widget.context).primaryColor,
                                  content: Text(
                                    Translations.of(widget.context).userTypeDeleteShowDialogTwoOne,
                                    style: TextStyle(fontSize: widget.myResp[389]),
                                  ),
                                ),
                              );
                            } else {
                              showDialog(
                                  context: widget.context,
                                  builder: (BuildContext conte) {
                                    String mess = Translations.of(widget.context).userTypeDeleteShowDialogTwoDeaflut;
                                    if (successInformation['statuscode'] ==
                                        '2') {
                                      mess = Translations.of(widget.context).userTypeDeleteShowDialogTwoTwo;
                                    } else if (successInformation[
                                            'statuscode'] ==
                                        '3') {
                                      mess = Translations.of(widget.context).userTypeDeleteShowDialogTwoThree;
                                    } else if (successInformation[
                                            'statuscode'] ==
                                        '4') {
                                      mess = Translations.of(widget.context).userTypeDeleteShowDialogTwoFour;
                                    } else if (successInformation[
                                            'statuscode'] ==
                                        '5') {
                                      mess =
                                          Translations.of(widget.context).userTypeDeleteShowDialogTwoFive;
                                    } else if (successInformation[
                                            'statuscode'] ==
                                        '6') {
                                      mess = Translations.of(widget.context).userTypeDeleteShowDialogTwoSix;
                                    }
                                    return WillPopScope(
                                      onWillPop: () async => false,
                                      child: AlertDialog(
                                        title: Text(
                                          Translations.of(widget.context).userTypeDeleteShowDialogTwoTitle,
                                          style: TextStyle(
                                            fontSize: widget.myResp[390],
                                          ),
                                        ),
                                        content: Padding(
                                          padding:
                                              EdgeInsets.only(top: widget.myResp[391]),
                                          child: Text(mess,
                                              textAlign: TextAlign.center,
                                              style: TextStyle(fontSize: widget.myResp[392])),
                                        ),
                                        actions: <Widget>[
                                          widget.model.isLoadinProgress
                                              ? AdapativProgressIndicator()
                                              : FlatButton(
                                                  highlightColor: Colors.red,
                                                  splashColor:
                                                      Theme.of(widget.context)
                                                          .primaryColor,
                                                  onPressed: () {
                                                    Navigator.of(widget.context)
                                                        .pop();
                                                  },
                                                  child: Text(Translations.of(widget.context).userTypeDeleteShowDialogTwoButtonOk,
                                                      style: TextStyle(
                                                          fontSize: widget.myResp[393])))
                                        ],
                                      ),
                                    );
                                  });
                            }
                          },
                          child:
                              Text(Translations.of(widget.context).userTypeDeleteShowDialogOneOk, style: TextStyle(fontSize: widget.myResp[394]))),
                    ],
                  ),
                );
              });
        } else {
          Scaffold.of(widget.context).showSnackBar(
            SnackBar(
              backgroundColor: Theme.of(widget.context).primaryColor,
              content: Text(
                Translations.of(widget.context).noInternetConnection,
                style: TextStyle(
                  fontSize: widget.myResp[395],
                ),
              ),
            ),
          );
        }
      },
    );
  }
}
