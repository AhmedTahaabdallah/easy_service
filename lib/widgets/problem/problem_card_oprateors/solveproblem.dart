import 'package:flutter/material.dart';
//import 'package:real_estate_servicing/models/problemm.dart';
import '../../../scoped-models/main.dart';
import '../../../models/problemm.dart';
import '../../../widgets/ui_element/adapativ_progress_indicator.dart';
import 'package:connectivity/connectivity.dart';
import '../../../translation/translation_strings.dart';

class SolveProblemCard extends StatefulWidget {
  final MainModel model;
  final Problemm problems;
  final BuildContext context;
  final int index;
  final List<dynamic> myResp;
  SolveProblemCard(
      this.model, this.problems, this.context, this.index, this.myResp);
  @override
  _SolveProblemCardState createState() => _SolveProblemCardState();
}

class _SolveProblemCardState extends State<SolveProblemCard> {
  @override
  Widget build(BuildContext context) {
    Widget solveProblemFalse = FlatButton(
      highlightColor: Colors.red,
      splashColor: Theme.of(widget.context).primaryColor,
      padding: EdgeInsets.all(widget.myResp[281]),
      child: Text(
        Translations.of(widget.context).allProblemsSolvedButtonBefore,
        textAlign: TextAlign.center,
        style:
            TextStyle(color: Color(0xff0D7802), fontSize: widget.myResp[282]),
      ),
      onPressed: () async {
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
                  fontSize: widget.myResp[283],
                ),
              ),
            ),
          );

          return;
        } else if (widget.problems.ishasproblems == 'true') {
          Scaffold.of(widget.context).showSnackBar(
            SnackBar(
              backgroundColor: Theme.of(widget.context).primaryColor,
              content: Text(
                Translations.of(widget.context)
                    .allProblemsSolveProblemScaffoldOne,
                style: TextStyle(
                  fontSize: widget.myResp[284],
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
                      Translations.of(widget.context)
                          .allProblemsSolveProblemShowDialogOneTitle,
                      style: TextStyle(
                        fontSize: widget.myResp[285],
                      ),
                    ),
                    content: Padding(
                      padding: EdgeInsets.only(top: widget.myResp[286]),
                      child: Text(
                          Translations.of(widget.context)
                              .allProblemsSolveProblemShowDialogOneMessage,
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: widget.myResp[287])),
                    ),
                    actions: <Widget>[
                      FlatButton(
                        highlightColor: Colors.red,
                        splashColor: Theme.of(widget.context).primaryColor,
                        onPressed: () {
                          Navigator.of(widget.context).pop();
                        },
                        child: Text(
                          Translations.of(widget.context)
                              .allProblemsSolveProblemShowDialogOneCancel,
                          style: TextStyle(fontSize: widget.myResp[288]),
                        ),
                      ),
                      FlatButton(
                          highlightColor: Colors.red,
                          splashColor: Theme.of(widget.context).primaryColor,
                          onPressed: () async {
                            Navigator.of(widget.context).pop();
                            Map<String, dynamic> successInformation =
                                await widget.model.solveProblemm(
                                    widget.problems.id, widget.index);
                            if (successInformation['statuscode'] == '1') {
                              Scaffold.of(widget.context).showSnackBar(
                                SnackBar(
                                  backgroundColor:
                                      Theme.of(widget.context).primaryColor,
                                  content: Text(
                                    Translations.of(widget.context)
                                        .allProblemsSolveProblemShowDialogTwoOne,
                                    style: TextStyle(fontSize: widget.myResp[289]),
                                  ),
                                ),
                              );
                            } else {
                              showDialog(
                                  context: widget.context,
                                  builder: (BuildContext conte) {
                                    String mess = Translations.of(
                                            widget.context)
                                        .allProblemsSolveProblemShowDialogTwoDeaflut;
                                    if (successInformation['statuscode'] ==
                                        '2') {
                                      mess = Translations.of(widget.context)
                                          .allProblemsSolveProblemShowDialogTwoTwo;
                                    } else if (successInformation[
                                            'statuscode'] ==
                                        '3') {
                                      mess = Translations.of(widget.context)
                                          .allProblemsSolveProblemShowDialogTwoThree;
                                    } else if (successInformation[
                                            'statuscode'] ==
                                        '4') {
                                      mess = Translations.of(widget.context)
                                          .allProblemsSolveProblemShowDialogTwoFour;
                                    } else if (successInformation[
                                            'statuscode'] ==
                                        '5') {
                                      mess = Translations.of(widget.context)
                                          .allProblemsSolveProblemShowDialogTwoFive;
                                    } else if (successInformation[
                                            'statuscode'] ==
                                        '6') {
                                      mess = Translations.of(widget.context)
                                          .allProblemsSolveProblemShowDialogTwoSix;
                                    }
                                    return WillPopScope(
                                      onWillPop: () async => false,
                                      child: AlertDialog(
                                        title: Text(
                                          Translations.of(widget.context)
                                              .allProblemsSolveProblemShowDialogTwoTitle,
                                          style: TextStyle(
                                            fontSize: widget.myResp[290],
                                          ),
                                        ),
                                        content: Padding(
                                          padding:
                                              EdgeInsets.only(top: widget.myResp[291]),
                                          child: Text(mess,
                                              textAlign: TextAlign.center,
                                              style: TextStyle(fontSize: widget.myResp[292])),
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
                                                  child: Text(
                                                      Translations.of(
                                                              widget.context)
                                                          .allProblemsSolveProblemShowDialogTwoButtonOk,
                                                      style: TextStyle(
                                                          fontSize: widget.myResp[293])))
                                        ],
                                      ),
                                    );
                                  });
                            }
                          },
                          child: Text(
                              Translations.of(widget.context)
                                  .allProblemsSolveProblemShowDialogOneOk,
                              style: TextStyle(fontSize: widget.myResp[294]))),
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
                  fontSize: widget.myResp[295],
                ),
              ),
            ),
          );
        }
      },
    );

    Widget solveProblemTrue = GestureDetector(
      child: Column(
        children: <Widget>[
          Icon(
            Icons.done,
            color: Colors.green.shade900,
            size: widget.myResp[296],
          ),
          Text(
            Translations.of(widget.context).allProblemsSolvedButtonAfter,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: widget.myResp[297],
              color: Colors.green.shade900,
              fontWeight: FontWeight.w800,
            ),
          ),
        ],
      ),
    );
    return widget.problems.solved == 'false'
        ? solveProblemFalse
        : solveProblemTrue;
  }
}
