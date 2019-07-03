import 'package:flutter/material.dart';
//import 'package:real_estate_servicing/models/problemm.dart';
import '../../../scoped-models/main.dart';
import '../../../models/problemm.dart';
import '../../../widgets/ui_element/adapativ_progress_indicator.dart';
import 'package:connectivity/connectivity.dart';
import '../../../translation/translation_strings.dart';


class DeleteProblemCard extends StatefulWidget {
  final MainModel model;
  final Problemm problems;
  final BuildContext context;
  final List<dynamic> myResp;
  DeleteProblemCard(this.model, this.problems, this.context, this.myResp);
  @override
  _DeleteProblemCardState createState() => _DeleteProblemCardState();
}

class _DeleteProblemCardState extends State<DeleteProblemCard> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.delete,
        color: Colors.red.shade600,
        size: widget.myResp[340],
      ),
      onPressed: () {
        if (widget.model.isLoadinProgress ||
            widget.model.isLoadingFetchProblems ||
            widget.model.isLoadingFetchProblemsMore ||
            widget.model.selProblemmIdDate != 0) {
          Scaffold.of(widget.context).showSnackBar(
            SnackBar(
              backgroundColor: Theme.of(widget.context).primaryColor,
              content: Text(
                Translations.of(widget.context).allProblemsScaffoldMessageTwo,
                style: TextStyle(
                  fontSize: widget.myResp[341],
                ),
              ),
            ),
          );

          return;
        }
        showDialog(
            context: widget.context,
            builder: (BuildContext conte) {
              return WillPopScope(
                onWillPop: () async => false,
                child: AlertDialog(
                  title: Text(
                    Translations.of(widget.context).allProblemsDeleteProblemShowDialogOneTitle,
                    style: TextStyle(
                      fontSize: widget.myResp[342],
                    ),
                  ),
                  content: Padding(
                    padding: EdgeInsets.only(top: widget.myResp[343]),
                    child: Text(Translations.of(widget.context).allProblemsDeleteProblemShowDialogOneMessage,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: widget.myResp[344])),
                  ),
                  actions: <Widget>[
                    FlatButton(
                        highlightColor: Colors.red,
                        splashColor: Theme.of(widget.context).primaryColor,
                        onPressed: () {
                          Navigator.of(widget.context).pop();
                        },
                        child:
                            Text(Translations.of(widget.context).allProblemsDeleteProblemShowDialogOneCancel, style: TextStyle(fontSize: widget.myResp[345]))),
                    FlatButton(
                        highlightColor: Colors.red,
                        splashColor: Theme.of(widget.context).primaryColor,
                        onPressed: () async {
                          Navigator.of(widget.context).pop();
                          var connectivityResult =
                              await (Connectivity().checkConnectivity());
                          if (connectivityResult == ConnectivityResult.mobile ||
                              connectivityResult == ConnectivityResult.wifi) {
                            Map<String, dynamic> successInformation =
                                await widget.model
                                    .deleteProblemm(widget.problems.id);
                            if (successInformation['statuscode'] == '1') {
                              Scaffold.of(widget.context).showSnackBar(
                                SnackBar(
                                  backgroundColor:
                                      Theme.of(widget.context).primaryColor,
                                  content: Text(
                                    Translations.of(widget.context).allProblemsDeleteProblemShowDialogTwoOne,
                                    style: TextStyle(fontSize: widget.myResp[346]),
                                  ),
                                ),
                              );
                            } else {
                              showDialog(
                                  context: widget.context,
                                  builder: (BuildContext conte) {
                                    String mess = Translations.of(widget.context).allProblemsDeleteProblemShowDialogTwoDeaflut;
                                    if (successInformation['statuscode'] ==
                                        '2') {
                                      mess = Translations.of(widget.context).allProblemsDeleteProblemShowDialogTwoTwo;
                                    } else if (successInformation[
                                            'statuscode'] ==
                                        '3') {
                                      mess = Translations.of(widget.context).allProblemsDeleteProblemShowDialogTwoThree;
                                    } else if (successInformation[
                                            'statuscode'] ==
                                        '4') {
                                      mess =
                                          Translations.of(widget.context).allProblemsDeleteProblemShowDialogTwoFour;
                                    }
                                    return WillPopScope(
                                      onWillPop: () async => false,
                                      child: AlertDialog(
                                        title: Text(
                                          Translations.of(widget.context).allProblemsDeleteProblemShowDialogTwoTitle,
                                          style: TextStyle(
                                            fontSize: widget.myResp[347],
                                          ),
                                        ),
                                        content: Padding(
                                          padding:
                                              EdgeInsets.only(top: widget.myResp[348]),
                                          child: Text(mess,
                                              textAlign: TextAlign.center,
                                              style: TextStyle(fontSize: widget.myResp[349])),
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
                                                  child: Text(Translations.of(widget.context).allProblemsDeleteProblemShowDialogTwoButtonOk,
                                                      style: TextStyle(
                                                          fontSize: widget.myResp[350])))
                                        ],
                                      ),
                                    );
                                  });
                            }
                          } else {
                            Scaffold.of(widget.context).showSnackBar(
                              SnackBar(
                                backgroundColor:
                                    Theme.of(widget.context).primaryColor,
                                content: Text(
                                  Translations.of(widget.context).noInternetConnection,
                                  style: TextStyle(fontSize: widget.myResp[351]),
                                ),
                              ),
                            );
                          }
                        },
                        child:
                            Text(Translations.of(widget.context).allProblemsDeleteProblemShowDialogOneOk, style: TextStyle(fontSize: widget.myResp[352]))),
                  ],
                ),
              );
            });
      },
    );
  }
}
