import 'package:flutter/material.dart';
import 'package:real_estate_servicing/widgets/ui_element/adapativ_progress_indicator.dart';
import 'package:scoped_model/scoped_model.dart';
import '../scoped-models/main.dart';
import 'package:connectivity/connectivity.dart';
import '../translation/translation_strings.dart';
import '../widgets/helpers/ensure_visible.dart';

class AddProblem extends StatefulWidget {
  final List<dynamic> myResp;
  AddProblem(this.myResp);
  @override
  _AddProblemState createState() => _AddProblemState();
}

class _AddProblemState extends State<AddProblem> {
  final Map<String, dynamic> _formData = {
    'description': null,
  };
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final _problemFocusNode = FocusNode();

  DecorationImage _buildBackgroundImage() {
    return DecorationImage(
      fit: BoxFit.cover,
      colorFilter:
          ColorFilter.mode(Colors.black.withOpacity(.5), BlendMode.dstATop),
      image: AssetImage("assets/images/home2.png"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(Translations.of(context).addProblemAppBarTitle
        ,style: TextStyle(fontSize: widget.myResp[432]),),
      ),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: Container(
          decoration: BoxDecoration(image: _buildBackgroundImage()),
          padding: EdgeInsets.all(widget.myResp[433]),
          child: Center(
            child: SingleChildScrollView(
              child: SingleChildScrollView(
                child: ScopedModelDescendant<MainModel>(
                  builder:
                      (BuildContext context, Widget child, MainModel model) {
                    return Form(
                      key: _formKey,
                      child: Column(
                        children: <Widget>[
                          EnsureVisibleWhenFocused(
                            focusNode: _problemFocusNode,
                            child: TextFormField(
                              focusNode: _problemFocusNode,
                              //initialValue: product == null ? '' : product.description,
                              //controller: _descriptionTextControler,
                              //focusNode: _descriptionFocusNode,
                              validator: (String value) {
                                if (value.trim().isEmpty) {
                                  return Translations.of(context)
                                      .addProblemErrorEmpty;
                                } else if (value.trim().length < 10) {
                                  return Translations.of(context)
                                      .addProblemErrorLess;
                                } else if (value.trim().length > 250) {
                                  return Translations.of(context)
                                      .addProblemErrorMore;
                                }
                              },
                              //initialValue: widget.proudcts == null ? '' : widget.proudcts["description"],
                              onSaved: (String value) {
                                //setState(() {
                                //if (value.trim().length <= 300) {
                                _formData['description'] = value;
                                //}
                                //});
                              }
                              /*onChanged: (String value){
                      setState(() {
                        if(value.length <= 300 ){
                            _descriptionValue = value;
                        }

                      });
                    }*/
                              ,
                              maxLength: 250,

                              style: TextStyle(
                                fontSize: widget.myResp[434],
                              ),
                              decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  /*counterText: _formData['description'].toString().length.toString() + " of 300",
                            counterStyle:
                                TextStyle(fontSize: 18.0, color: Theme.of(context).accentColor),*/
                                  labelText:
                                      Translations.of(context).addProblemLabel,
                                  labelStyle: TextStyle(fontSize: widget.myResp[435]),
                                  errorStyle: TextStyle(fontSize: widget.myResp[436]),
                                  counterStyle: TextStyle(
                                    fontSize: widget.myResp[437],
                                    color: Theme.of(context).primaryColor,
                                  ),
                                  /*border: OutlineInputBorder(
                  borderSide: BorderSide(style:
                  BorderStyle.solid,width: 2.0,color: Colors.deepPurple),borderRadius: BorderRadius.circular(7.0)),*/
                                  icon: Icon(
                                    Icons.description,
                                    size: widget.myResp[438],
                                    color: Theme.of(context).primaryColor,
                                  )),
                              keyboardType: TextInputType.multiline,
                              maxLines: 6,
                            ),
                          ),
                          SizedBox(
                            height: widget.myResp[439],
                          ),
                          model.isLoadinProgress
                              ? AdapativProgressIndicator()
                              : FlatButton(
                                  highlightColor: Colors.red,
                                  splashColor: Theme.of(context).primaryColor,
                                  textColor: Theme.of(context).primaryColor,
                                  onPressed: () async {
                                    var connectivityResult =
                                        await (Connectivity()
                                            .checkConnectivity());
                                    if (connectivityResult ==
                                            ConnectivityResult.mobile ||
                                        connectivityResult ==
                                            ConnectivityResult.wifi) {
                                      if (!_formKey.currentState.validate()) {
                                        return;
                                      }
                                      _formKey.currentState.save();
                                      Map<String, dynamic> successInformation =
                                          await model.addProblemm(
                                        _formData['description'],
                                      );
                                      showDialog(
                                          context: context,
                                          builder: (BuildContext conte) {
                                            String mess = Translations.of(
                                                    context)
                                                .addProblemShowDialogDeaflut;
                                            if (successInformation[
                                                    'statuscode'] ==
                                                '1') {
                                              mess = Translations.of(context)
                                                  .addProblemShowDialogOne;
                                            } else if (successInformation[
                                                    'statuscode'] ==
                                                '2') {
                                              mess = Translations.of(context)
                                                  .addProblemShowDialogTwo;
                                            } else if (successInformation[
                                                    'statuscode'] ==
                                                '3') {
                                              mess = Translations.of(context)
                                                  .addProblemShowDialogThree;
                                            } else if (successInformation[
                                                    'statuscode'] ==
                                                '4') {
                                              mess = Translations.of(context)
                                                  .addProblemShowDialogFour;
                                            } else if (successInformation[
                                                    'statuscode'] ==
                                                '5') {
                                              mess = Translations.of(context)
                                                  .addProblemShowDialogFive;
                                            }
                                            return WillPopScope(
                                              onWillPop: () async => false,
                                              child: AlertDialog(
                                                title: Text(
                                                  Translations.of(context)
                                                      .addProblemShowDialogTitle,
                                                  style: TextStyle(
                                                    fontSize: widget.myResp[441],
                                                  ),
                                                ),
                                                content: Padding(
                                                  padding:
                                                      EdgeInsets.only(
                                                          top: widget.myResp[442]),
                                                  child: Text(mess,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          fontSize: widget.myResp[443])),
                                                ),
                                                actions: <Widget>[
                                                  model.isLoadinProgress
                                                      ? AdapativProgressIndicator()
                                                      : FlatButton(
                                                          highlightColor:
                                                              Colors.red,
                                                          splashColor:
                                                              Theme.of(context)
                                                                  .primaryColor,
                                                          onPressed: () {
                                                            Navigator.of(
                                                                    context)
                                                                .pop();
                                                            /*Navigator.of(context)
                                                              .pushReplacementNamed(
                                                                  '/home');*/
                                                            Navigator.pushNamedAndRemoveUntil(
                                                                context,
                                                                '/home',
                                                                (Route<dynamic>
                                                                        route) =>
                                                                    false);
                                                          },
                                                          child: Text(
                                                              Translations.of(
                                                                      context)
                                                                  .addProblemShowDialogOk,
                                                              style: TextStyle(
                                                                  fontSize:
                                                                      widget.myResp[444])))
                                                ],
                                              ),
                                            );
                                          });
                                    } else {
                                      showDialog(
                                          context: context,
                                          builder: (BuildContext conte) {
                                            return WillPopScope(
                                              onWillPop: () async => false,
                                              child: AlertDialog(
                                                title: Text(
                                                  Translations.of(context)
                                                      .addProblemShowDialogTwoTitle,
                                                  style: TextStyle(
                                                    fontSize: widget.myResp[445],
                                                  ),
                                                ),
                                                content: Padding(
                                                  padding:
                                                      EdgeInsets.only(
                                                          top: widget.myResp[446]),
                                                  child: Text(
                                                      Translations.of(context)
                                                          .noInternetConnection,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          fontSize: widget.myResp[447])),
                                                ),
                                                actions: <Widget>[
                                                  model.isLoadinProgress
                                                      ? AdapativProgressIndicator()
                                                      : FlatButton(
                                                          highlightColor:
                                                              Colors.red,
                                                          splashColor:
                                                              Theme.of(context)
                                                                  .primaryColor,
                                                          onPressed: () {
                                                            Navigator.of(
                                                                    context)
                                                                .pop();
                                                          },
                                                          child: Text(
                                                              Translations.of(
                                                                      context)
                                                                  .addProblemShowDialogTwoOk,
                                                              style: TextStyle(
                                                                  fontSize:
                                                                      widget.myResp[448])))
                                                ],
                                              ),
                                            );
                                          });
                                    }
                                  },
                                  child: Text(
                                    Translations.of(context)
                                        .addProblemSaveButton,
                                    style: TextStyle(
                                      fontSize: widget.myResp[440],
                                    ),
                                  ),
                                ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
