import 'package:flutter/material.dart';
//import 'package:real_estate_servicing/models/problemm.dart';
import '../../../scoped-models/main.dart';
import '../../../models/problemm.dart';
//import '../../../widgets/ui_element/adapativ_progress_indicator.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:intl/intl.dart';
import 'package:connectivity/connectivity.dart';
import '../../../translation/translation_strings.dart';

class ReserveProblemCard extends StatefulWidget {
  final MainModel model;
  final Problemm problems;
  final BuildContext context;
  final int index;
  final List<dynamic> myResp;
  ReserveProblemCard(
      this.model, this.problems, this.context, this.index, this.myResp);
  @override
  _ReserveProblemCardState createState() => _ReserveProblemCardState();
}

class _ReserveProblemCardState extends State<ReserveProblemCard> {
  final dateFormat = DateFormat("yyyy-MM-dd HH:mm:ss", 'en_US');
  InputType inputType = InputType.both;
  bool editable = false;
  DateTime date;
  String reserveDateTimeString;

  /*Future<DateTime> selecionarData() async {
//dataSelecionada is a final DateTime
    DateTime dataSelecionada = await showDatePicker(
    context: context,
    initialDate: DateTime(2019),
    firstDate: DateTime(2019),
    lastDate: DateTime(2022),
    builder: (BuildContext context, Widget child) {
      return FittedBox(
        child: Theme(
          child: child,
          data: ThemeData(
            primaryColor: Colors.purple[300],
          ),
        ),
      );
    });
    return dataSelecionada;
  }*/

  @override
  Widget build(BuildContext context) {
    Widget reserveProblemFalse = FlatButton(
      highlightColor: Colors.red,
      splashColor: Theme.of(widget.context).primaryColor,
      padding: EdgeInsets.all(widget.myResp[315]),
      child: Text(
        Translations.of(widget.context).allProblemsReservedButtonBefore,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.blue,
          fontWeight: FontWeight.w600,
          fontSize: widget.myResp[316],
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
                  fontSize: widget.myResp[317],
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
                Translations.of(widget.context)
                    .allProblemsReserveProblemScaffoldMessage,
                style: TextStyle(
                  fontSize: widget.myResp[318],
                ),
              ),
            ),
          );

          return;
        }
        var connectivityResult = await (Connectivity().checkConnectivity());
        if (connectivityResult == ConnectivityResult.mobile ||
            connectivityResult == ConnectivityResult.wifi) {
          DateTime dataSelecionada = await showDatePicker(
              context: context,
              initialDate: DateTime.parse(widget.problems.currentdatetime),
              firstDate: DateTime.parse(widget.problems.currentdatetime),
              lastDate: DateTime(2150),
              builder: (BuildContext context, Widget child) {
                return FittedBox(
                  child: Theme(
                    child: child,
                    data: ThemeData(
                      primaryColor: Colors.purple,
                    ),
                  ),
                );
              });
          if (dataSelecionada == null) {
            return;
          }
          Future<TimeOfDay> getTime() => showTimePicker(
                context: context,
                initialTime: TimeOfDay.now() ?? TimeOfDay.now(),
              );
          final time = await getTime();
          if (dataSelecionada == null || time == null) {
            return;
          }
          DateTime da = DateTime(dataSelecionada.year, dataSelecionada.month,
              dataSelecionada.day, time.hour, time.minute);
          String formattedDate =
              DateFormat('yyyy-MM-dd HH:mm:ss', 'en_US').format(da);
          if (formattedDate != null) {
            DateTime reserveDateTime = DateTime.parse(formattedDate);
            DateTime currentDateTime =
                DateTime.parse(widget.problems.currentdatetime)
                    .add(Duration(hours: 1));
            String currentFormattedDate =
                DateFormat('yyyy-MM-dd HH:mm:ss', 'en_US')
                    .format(currentDateTime);
            if (reserveDateTime.isBefore(currentDateTime)) {
              
              Scaffold.of(widget.context).showSnackBar(
                SnackBar(
                  duration: Duration(seconds: 5),
                  backgroundColor: Theme.of(widget.context).primaryColor,
                  content: Text(
                    Translations.of(widget.context)
                            .allProblemsReserveProblemScaffoldMessageTwo +
                        ' ' +
                        currentFormattedDate,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: widget.myResp[333],
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              );
            } else {
              
              Map<String, dynamic> successInformation = await widget.model
                  .reserveProblemm(
                      widget.problems.id, formattedDate, widget.index);
              if (successInformation['statuscode'] == '1') {
                Scaffold.of(widget.context).showSnackBar(
                  SnackBar(
                    backgroundColor: Colors.blue,
                    content: Text(
                      Translations.of(widget.context)
                          .allProblemsReserveProblemScaffoldMessageThreeOne,
                      style: TextStyle(fontSize: widget.myResp[334]),
                    ),
                  ),
                );
              } else {
                String mess = Translations.of(widget.context)
                    .allProblemsReserveProblemScaffoldMessageThreeDeaflut;
                if (successInformation['statuscode'] == '2') {
                  mess = Translations.of(widget.context)
                      .allProblemsReserveProblemScaffoldMessageThreeTwo;
                } else if (successInformation['statuscode'] == '3') {
                  mess = Translations.of(widget.context)
                      .allProblemsReserveProblemScaffoldMessageThreeThree;
                } else if (successInformation['statuscode'] == '4') {
                  mess = Translations.of(widget.context)
                      .allProblemsReserveProblemScaffoldMessageThreeFour;
                } else if (successInformation['statuscode'] == '5') {
                  mess = Translations.of(widget.context)
                      .allProblemsReserveProblemScaffoldMessageThreeFive;
                } else if (successInformation['statuscode'] == '6') {
                  mess = Translations.of(widget.context)
                      .allProblemsReserveProblemScaffoldMessageThreeSix;
                } else if (successInformation['statuscode'] == '7') {
                  mess = Translations.of(widget.context)
                      .allProblemsReserveProblemScaffoldMessageThreeSeven;
                }
                Scaffold.of(widget.context).showSnackBar(
                  SnackBar(
                    backgroundColor: Colors.blue,
                    content: Text(
                      mess,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: widget.myResp[335],
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                );
              }
            }
          }
        } else {
          Scaffold.of(widget.context).showSnackBar(
            SnackBar(
              backgroundColor: Theme.of(widget.context).primaryColor,
              content: Text(
                Translations.of(widget.context).noInternetConnection,
                style: TextStyle(
                  fontSize: widget.myResp[337],
                ),
              ),
            ),
          );
        }
      },
    );

    Widget reserveProblemTrue = GestureDetector(
      child: Column(
        children: <Widget>[
          Icon(
            Icons.done,
            color: Colors.blue.shade900,
            size: widget.myResp[338],
          ),
          Text(
            Translations.of(widget.context).allProblemsReservedButtonAfter,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: widget.myResp[339],
              color: Colors.blue.shade900,
              fontWeight: FontWeight.w800,
            ),
          ),
        ],
      ),
    );
    return widget.problems.dateBook == null
        ? reserveProblemFalse
        : reserveProblemTrue;
  }
}
