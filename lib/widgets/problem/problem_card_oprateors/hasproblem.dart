import 'package:flutter/material.dart';
//import 'package:real_estate_servicing/models/problemm.dart';
import '../../../scoped-models/main.dart';
import '../../../models/problemm.dart';
import '../../../widgets/ui_element/adapativ_progress_indicator.dart';
import 'package:connectivity/connectivity.dart';
import '../../../translation/translation_strings.dart';


class HasProblemCard extends StatefulWidget {
  final MainModel model;
  final Problemm problems;
  final BuildContext context;
  final int index;
  final List<dynamic> myResp;
  HasProblemCard(this.model, this.problems, this.context, this.index, this.myResp);
  @override
  _HasProblemCardState createState() => _HasProblemCardState();
}

class _HasProblemCardState extends State<HasProblemCard> {
  @override
  Widget build(BuildContext context) {
    Widget hasProblemFalse = FlatButton(
      highlightColor: Colors.red,
      splashColor: Theme.of(widget.context).primaryColor,
      padding: EdgeInsets.all(widget.myResp[298]),
      child: Text(
        Translations.of(widget.context).allProblemsHasProblemButtonAfter,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Color(0xffF90B0B),
          fontWeight: FontWeight.w600,
          fontSize: widget.myResp[299]
        ),
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
                  fontSize: widget.myResp[300],
                ),
              ),
            ),
          );

          return;
        } else if (widget.problems.solved == 'true') {
          Scaffold.of(widget.context).showSnackBar(
            SnackBar(
              backgroundColor: Theme.of(widget.context).primaryColor,
              content: Text(
                Translations.of(widget.context).allProblemsHasProblemScaffoldOne,
                style: TextStyle(
                  fontSize: widget.myResp[301],
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
                      Translations.of(widget.context).allProblemsHasProblemShowDialogOneTitle,
                      style: TextStyle(
                        fontSize: widget.myResp[302],
                      ),
                    ),
                    content: Padding(
                      padding: EdgeInsets.only(top: widget.myResp[303]),
                      child: Text(
                          Translations.of(widget.context).allProblemsHasProblemShowDialogOneMessage,
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: widget.myResp[304])),
                    ),
                    actions: <Widget>[
                      FlatButton(
                          highlightColor: Colors.red,
                          splashColor: Theme.of(widget.context).primaryColor,
                          onPressed: () {
                            Navigator.of(widget.context).pop();
                          },
                          child:
                              Text(Translations.of(widget.context).allProblemsHasProblemShowDialogOneCancel, style: TextStyle(fontSize: widget.myResp[305]))),
                      FlatButton(
                          highlightColor: Colors.red,
                          splashColor: Theme.of(widget.context).primaryColor,
                          onPressed: () async {
                            Navigator.of(widget.context).pop();
                            Map<String, dynamic> successInformation =
                                await widget.model.hasProblemm(
                                    widget.problems.id, widget.index);
                            if (successInformation['statuscode'] == '1') {
                              Scaffold.of(widget.context).showSnackBar(
                                SnackBar(
                                  backgroundColor:
                                      Theme.of(widget.context).primaryColor,
                                  content: Text(
                                    Translations.of(widget.context).allProblemsHasProblemShowDialogTwoOne,
                                    style: TextStyle(fontSize: widget.myResp[306]),
                                  ),
                                ),
                              );
                            } else {
                              showDialog(
                                  context: widget.context,
                                  builder: (BuildContext conte) {
                                    String mess = Translations.of(widget.context).allProblemsHasProblemShowDialogTwoDeaflut;
                                    if (successInformation['statuscode'] ==
                                        '2') {
                                      mess = Translations.of(widget.context).allProblemsHasProblemShowDialogTwoTwo;
                                    } else if (successInformation[
                                            'statuscode'] ==
                                        '3') {
                                      mess = Translations.of(widget.context).allProblemsHasProblemShowDialogTwoThree;
                                    } else if (successInformation[
                                            'statuscode'] ==
                                        '4') {
                                      mess =
                                          Translations.of(widget.context).allProblemsHasProblemShowDialogTwoFour;
                                    } else if (successInformation[
                                            'statuscode'] ==
                                        '5') {
                                      mess =
                                          Translations.of(widget.context).allProblemsHasProblemShowDialogTwoFive;
                                    } else if (successInformation[
                                            'statuscode'] ==
                                        '6') {
                                      mess = Translations.of(widget.context).allProblemsHasProblemShowDialogTwoSix;
                                    } else if (successInformation[
                                            'statuscode'] ==
                                        '7') {
                                      mess = Translations.of(widget.context).allProblemsHasProblemShowDialogTwoSeven;
                                    } else if (successInformation[
                                            'statuscode'] ==
                                        '8') {
                                      mess =
                                          Translations.of(widget.context).allProblemsHasProblemShowDialogTwoEgiht;
                                    }

                                    return WillPopScope(
                                      onWillPop: () async => false,
                                      child: AlertDialog(
                                        title: Text(
                                          Translations.of(widget.context).allProblemsHasProblemShowDialogTwoTitle,
                                          style: TextStyle(
                                            fontSize: widget.myResp[307],
                                          ),
                                        ),
                                        content: Padding(
                                          padding:
                                              EdgeInsets.only(top: widget.myResp[308]),
                                          child: Text(mess,
                                              textAlign: TextAlign.center,
                                              style: TextStyle(fontSize: widget.myResp[309])),
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
                                                  child: Text(Translations.of(widget.context).allProblemsHasProblemShowDialogTwoButtonOk,
                                                      style: TextStyle(
                                                          fontSize: widget.myResp[310])))
                                        ],
                                      ),
                                    );
                                  });
                            }
                          },
                          child: Text(Translations.of(widget.context).allProblemsHasProblemShowDialogOneOk,
                              style: TextStyle(fontSize: widget.myResp[311]))),
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
                style: TextStyle(fontSize: widget.myResp[312]),
              ),
            ),
          );
        }
      },
    );

    Widget hasProblemTrue = GestureDetector(
      child: Column(
        children: <Widget>[
          Icon(
            Icons.done,
            color: Colors.red.shade900,
            size: widget.myResp[313],
          ),
          Text(
            Translations.of(widget.context).allProblemsHasProblemButtonAfter,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: widget.myResp[314],
              color: Colors.red.shade900,
              fontWeight: FontWeight.w800,
            ),
          )
        ],
      ),
      onTap: () {
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
                  fontSize: widget.myResp[301],
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
                    Translations.of(widget.context).allProblemsRemoveHasProblemShowDialogOneTitle,
                    style: TextStyle(
                      fontSize: widget.myResp[302],
                    ),
                  ),
                  content: Padding(
                    padding: EdgeInsets.only(top: widget.myResp[303]),
                    child: Text(
                        Translations.of(widget.context).allProblemsRemoveHasProblemShowDialogOneMessage,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: widget.myResp[304])),
                  ),
                  actions: <Widget>[
                    FlatButton(
                        highlightColor: Colors.red,
                        splashColor: Theme.of(widget.context).primaryColor,
                        onPressed: () {
                          Navigator.of(widget.context).pop();
                        },
                        child:
                            Text(Translations.of(widget.context).allProblemsRemoveHasProblemShowDialogOneCancel, style: TextStyle(fontSize: widget.myResp[305]))),
                    FlatButton(
                        highlightColor: Colors.red,
                        splashColor: Theme.of(widget.context).primaryColor,
                        onPressed: () async {
                          Navigator.of(widget.context).pop();
                          Map<String, dynamic> successInformation =
                              await widget.model.removeHasProblemm(
                                  widget.problems.id, widget.index);
                          if (successInformation['statuscode'] == '1') {
                            Scaffold.of(widget.context).showSnackBar(
                              SnackBar(
                                backgroundColor:
                                    Theme.of(widget.context).primaryColor,
                                content: Text(
                                  Translations.of(widget.context).allProblemsRemoveHasProblemShowDialogTwoOne,
                                  style: TextStyle(fontSize: widget.myResp[306]),
                                ),
                              ),
                            );
                          } else {
                            showDialog(
                                context: widget.context,
                                builder: (BuildContext conte) {
                                  String mess = Translations.of(widget.context).allProblemsRemoveHasProblemShowDialogTwoDeaflut;
                                  if (successInformation['statuscode'] == '2') {
                                    mess = Translations.of(widget.context).allProblemsRemoveHasProblemShowDialogTwoTwo;
                                  } else if (successInformation['statuscode'] ==
                                      '3') {
                                    mess = Translations.of(widget.context).allProblemsRemoveHasProblemShowDialogTwoThree;
                                  } else if (successInformation['statuscode'] ==
                                      '4') {
                                    mess = Translations.of(widget.context).allProblemsRemoveHasProblemShowDialogTwoFour;
                                  } else if (successInformation['statuscode'] ==
                                      '5') {
                                    mess = Translations.of(widget.context).allProblemsRemoveHasProblemShowDialogTwoFive;
                                  }
                                  return WillPopScope(
                                    onWillPop: () async => false,
                                    child: AlertDialog(
                                      title: Text(
                                        Translations.of(widget.context).allProblemsRemoveHasProblemShowDialogTwoTitle,
                                        style: TextStyle(
                                          fontSize: widget.myResp[307],
                                        ),
                                      ),
                                      content: Padding(
                                        padding:
                                            EdgeInsets.only(top: widget.myResp[308]),
                                        child: Text(mess,
                                            textAlign: TextAlign.center,
                                            style: TextStyle(fontSize: widget.myResp[309])),
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
                                                child: Text(Translations.of(widget.context).allProblemsRemoveHasProblemShowDialogTwoButtonOk,
                                                    style: TextStyle(
                                                        fontSize: widget.myResp[310])))
                                      ],
                                    ),
                                  );
                                });
                          }
                        },
                        child: Text(Translations.of(widget.context).allProblemsRemoveHasProblemShowDialogOneOk,
                            style: TextStyle(fontSize: widget.myResp[311]))),
                  ],
                ),
              );
            });
      },
    );
    return widget.problems.ishasproblems == 'false'
        ? hasProblemFalse
        : hasProblemTrue;
  }
}
