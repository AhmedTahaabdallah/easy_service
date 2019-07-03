import 'package:flutter/material.dart';
import 'package:real_estate_servicing/widgets/ui_element/adapativ_progress_indicator.dart';
import 'package:scoped_model/scoped_model.dart';
import '../scoped-models/main.dart';
import 'package:connectivity/connectivity.dart';
import '../translation/translation_strings.dart';
import '../widgets/helpers/ensure_visible.dart';

class ChangeUserPassword extends StatefulWidget {
  final Function myRespFunc;
  ChangeUserPassword(this.myRespFunc);
  @override
  _ChangeUserPasswordState createState() => _ChangeUserPasswordState();
}

class _ChangeUserPasswordState extends State<ChangeUserPassword> {
  final Map<String, dynamic> _formData = {
    'password': null,
  };
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final _passwordFocusNode = FocusNode();

  /*DecorationImage _buildBackgroundImage() {
    return DecorationImage(
      fit: BoxFit.cover,
      colorFilter:
          ColorFilter.mode(Colors.black.withOpacity(.5), BlendMode.dstATop),
      image: AssetImage("assets/images/home2.png"),
    );
  }*/

  @override
  Widget build(BuildContext context) {
    List<dynamic> myResp = widget.myRespFunc(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(Translations.of(context).changePasswrdAppBarTitle,
        style: TextStyle(fontSize: myResp[449]),),
      ),
      backgroundColor: Colors.white,
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: Container(
          color: Colors.white,
          //decoration: BoxDecoration(image: _buildBackgroundImage()),
          padding: EdgeInsets.all(myResp[450]),
          child: Center(
            child: SingleChildScrollView(
              child: ScopedModelDescendant<MainModel>(
                builder: (BuildContext context, Widget child, MainModel model) {
                  return Form(
                    key: _formKey,
                    child: Column(
                      children: <Widget>[
                        EnsureVisibleWhenFocused(
                          focusNode: _passwordFocusNode,
                                                  child: TextFormField(
                                                    focusNode: _passwordFocusNode,
                            //initialValue: product == null ? '' : product.description,
                            //controller: _descriptionTextControler,
                            //focusNode: _descriptionFocusNode,
                            validator: (String value) {
                              if (value.trim().isEmpty) {
                                return Translations.of(context).changePasswrdErrorEmpty;
                              } else if (value.trim().length < 5) {
                                return Translations.of(context).changePasswrdErrorLess;
                              } else if (value.trim().length > 12) {
                                return Translations.of(context).changePasswrdErrorMore;
                              }
                            },
                            //initialValue: widget.proudcts == null ? '' : widget.proudcts["description"],
                            onSaved: (String value) {
                              //setState(() {
                              //if (value.trim().length <= 300) {
                              _formData['password'] = value;
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
                            maxLength: 12,

                            style: TextStyle(
                              fontSize: myResp[451],
                            ),
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                /*counterText: _formData['description'].toString().length.toString() + " of 300",
                          counterStyle:
                              TextStyle(fontSize: 18.0, color: Theme.of(context).accentColor),*/
                                labelText: Translations.of(context).changePasswrdLabel,
                                labelStyle: TextStyle(fontSize: myResp[452]),
                                errorStyle: TextStyle(fontSize: myResp[453]),
                                counterStyle: TextStyle(
                                  fontSize: myResp[454],
                                  color: Theme.of(context).primaryColor,
                                ),
                                /*border: OutlineInputBorder(
                borderSide: BorderSide(style:
                BorderStyle.solid,width: 2.0,color: Colors.deepPurple),borderRadius: BorderRadius.circular(7.0)),*/
                                icon: Icon(
                                  Icons.description,
                                  size: myResp[455],
                                  color: Theme.of(context).primaryColor,
                                )),
                            keyboardType: TextInputType.text,
                            obscureText: true,
                            //maxLines: 6,
                          ),
                        ),
                        SizedBox(
                          height: myResp[456],
                        ),
                        model.isLoadinProgressAllUsers
                            ? AdapativProgressIndicator()
                            : FlatButton(
                                highlightColor: Colors.red,
                                splashColor: Theme.of(context).primaryColor,
                                textColor: Theme.of(context).primaryColor,
                                onPressed: () async {
                                  var connectivityResult = await (Connectivity()
                                      .checkConnectivity());
                                  if (connectivityResult ==
                                          ConnectivityResult.mobile ||
                                      connectivityResult ==
                                          ConnectivityResult.wifi) {
                                    if (!_formKey.currentState.validate()) {
                                      return;
                                    }
                                    _formKey.currentState.save();
                                    //print(_formData['password']);
                                    Map<String, dynamic> successInformation =
                                        await model.changeUserPassword(
                                      _formData['password'],
                                    );
                                    showDialog(
                                        context: context,
                                        builder: (BuildContext conte) {
                                          String mess = Translations.of(context).changePasswrdShowDialogDeaflut;
                                          if (successInformation[
                                                  'statuscode'] ==
                                              '1') {
                                            mess = Translations.of(context).changePasswrdShowDialogOne;
                                          } else if (successInformation[
                                                  'statuscode'] ==
                                              '2') {
                                            mess = Translations.of(context).changePasswrdShowDialogTwo;
                                          } else if (successInformation[
                                                  'statuscode'] ==
                                              '3') {
                                            mess =
                                                Translations.of(context).changePasswrdShowDialogThree;
                                          } else if (successInformation[
                                                  'statuscode'] ==
                                              '4') {
                                            mess =
                                                Translations.of(context).changePasswrdShowDialogFour;
                                          }
                                          return WillPopScope(
                                            onWillPop: () async => false,
                                            child: AlertDialog(
                                              title: Text(
                                                Translations.of(context).changePasswrdShowDialogTitle,
                                                style: TextStyle(
                                                  fontSize: myResp[458],
                                                ),
                                              ),
                                              content: Padding(
                                                padding: EdgeInsets.only(
                                                    top: myResp[459]),
                                                child: Text(mess,
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        fontSize: myResp[460])),
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
                                                          Navigator.of(context)
                                                              .pop();
                                                          /*Navigator.of(context)
                                                            .pushReplacementNamed(
                                                                '/home');*/
                                                          Navigator
                                                              .pushNamedAndRemoveUntil(
                                                                  context,
                                                                  '/home',
                                                                  (Route<dynamic>
                                                                          route) =>
                                                                      false);
                                                        },
                                                        child: Text(Translations.of(context).changePasswrdShowDialogOk,
                                                            style: TextStyle(
                                                                fontSize:
                                                                    myResp[461])))
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
                                                Translations.of(context).changePasswrdShowDialogTwoTitle,
                                                style: TextStyle(
                                                  fontSize: myResp[462],
                                                ),
                                              ),
                                              content: Padding(
                                                padding: EdgeInsets.only(
                                                    top: myResp[463]),
                                                child: Text(
                                                    Translations.of(context).noInternetConnection,
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        fontSize: myResp[464])),
                                              ),
                                              actions: <Widget>[
                                                FlatButton(
                                                    highlightColor: Colors.red,
                                                    splashColor:
                                                        Theme.of(context)
                                                            .primaryColor,
                                                    onPressed: () {
                                                      Navigator.of(context)
                                                          .pop();
                                                    },
                                                    child: Text(Translations.of(context).changePasswrdShowDialogTwoOk,
                                                        style: TextStyle(
                                                            fontSize: myResp[465])))
                                              ],
                                            ),
                                          );
                                        });
                                  }
                                },
                                child: Text(
                                  Translations.of(context).changePasswrdSaveButton,
                                  style: TextStyle(
                                    fontSize: myResp[457],
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
    );
  }
}
