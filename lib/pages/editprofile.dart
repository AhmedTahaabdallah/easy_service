import 'package:flutter/material.dart';
import '../scoped-models/main.dart';
import 'package:scoped_model/scoped_model.dart';
//import '../widgets/circle_avatar/customcircleavatar.dart';
import '../widgets/ui_element/adapativ_progress_indicator.dart';
import '../widgets/inputs/image.dart';
import 'dart:io';
import '../widgets/helpers/ensure_visible.dart';
import 'package:connectivity/connectivity.dart';
import '../translation/translation_strings.dart';


class EditProfile extends StatefulWidget {
  final MainModel model;
  final List<dynamic> myResp;
  EditProfile(this.model, this.myResp);
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final Map<String, dynamic> _formData = {
    "username": null,
    "avater": null,
    "mobile_number": null,
    "address": null
  };
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final _userNameFocusNode = FocusNode();
  final _userNameTextControler = TextEditingController();
  final _mobileFocusNode = FocusNode();
  final _mobileTextControler = TextEditingController();
  final _addressFocusNode = FocusNode();
  final _addressTextControler = TextEditingController();

  @override
  void dispose() {
    super.dispose();
  }

  void _setImage(File image) {
    _formData['avater'] = image;
  }

  Widget _buildUserNameTextField(MainModel model) {
    if (model.user.userName == null &&
        _userNameTextControler.text.trim() == '') {
      _userNameTextControler.text = '';
    } else if (model.user.userName != null &&
        _userNameTextControler.text.trim() == '') {
      _userNameTextControler.text = model.user.userName;
    } else if (model.user.userName != null &&
        _userNameTextControler.text.trim() != '') {
      _userNameTextControler.text = _userNameTextControler.text;
    } else if (model.user.userName == null &&
        _userNameTextControler.text.trim() != '') {
      _userNameTextControler.text = _userNameTextControler.text;
    } else {
      _userNameTextControler.text = '';
    }
    return EnsureVisibleWhenFocused(
      focusNode: _userNameFocusNode,
      child: TextFormField(
        //initialValue: product == null ? '' : product.title,
        controller: _userNameTextControler,
        focusNode: _userNameFocusNode,
        validator: (String value) {
          if (value.isEmpty) {
            return Translations.of(context).editprofileUserNameErrorEmpty;
          } else if (value.trim().length < 5) {
            return Translations.of(context).editprofileUserNameErrorLess;
          } else if (value.trim().length > 12) {
            return Translations.of(context).editprofileUserNameErrorMore;
          }
        },
        //initialValue: widget.proudcts == null ? '' : widget.proudcts["title"],
        onSaved: (String value) {
          //setState(() {
          //if (value.trim().length <= 20) {
          _formData['username'] = value;
          //}
          //});
        }
        /*onChanged: (String value){
      setState(() {
        if(value.length <= 20 ){
          _titleValue = value;
        }

      });
    }*/
        ,
        maxLength: 12,
        style: TextStyle(fontSize: widget.myResp[412]),
        decoration: InputDecoration(

            /*counterText: _formData['title'].toString().length.toString() + " of 20",
          counterStyle:
              TextStyle(fontSize: 18.0, color: Theme.of(context).accentColor),*/
            labelText: Translations.of(context).editprofileUserNameLabel,
            labelStyle: TextStyle(fontSize: widget.myResp[413]),
            errorStyle: TextStyle(fontSize: widget.myResp[414]),
            counterStyle: TextStyle(fontSize: widget.myResp[414]),
            icon: Icon(
              Icons.title,
              size: widget.myResp[415],
            )),
      ),
    );
  }

  Widget _buildMobileNumberTextField(MainModel model) {
    //print(model.user.mobile_number);
    if (model.user.mobileNumber == null &&
        _mobileTextControler.text.trim() == '') {
      _mobileTextControler.text = '';
    } else if (model.user.mobileNumber != null &&
        _mobileTextControler.text.trim() == '') {
      _mobileTextControler.text = model.user.mobileNumber;
    } else if (model.user.mobileNumber != null &&
        _mobileTextControler.text.trim() != '') {
      _mobileTextControler.text = _mobileTextControler.text;
    } else if (model.user.mobileNumber == null &&
        _mobileTextControler.text.trim() != '') {
      _mobileTextControler.text = _mobileTextControler.text;
    } else {
      _mobileTextControler.text = '';
    }
    return EnsureVisibleWhenFocused(
      focusNode: _mobileFocusNode,
      child: TextFormField(
        //initialValue: product == null ? '' : product.title,
        controller: _mobileTextControler,
        focusNode: _mobileFocusNode,
        validator: (String value) {
          if (value.isEmpty) {
            return Translations.of(context).editprofileUserMobileErrorEmpty;
          } else if (value.trim().length != 11 || !RegExp(r"[0-9]{11}").hasMatch(value)) {
            return Translations.of(context).editprofileUserMobileErrorWrong;
          }
        },
        //initialValue: widget.proudcts == null ? '' : widget.proudcts["title"],
        onSaved: (String value) {
          //setState(() {
          //if (value.trim().length <= 20) {
          _formData['mobile_number'] = value;
          //}
          //});
        }
        /*onChanged: (String value){
      setState(() {
        if(value.length <= 20 ){
          _titleValue = value;
        }

      });
    }*/
        ,
        maxLength: 11,
        style: TextStyle(fontSize: widget.myResp[416]),
        keyboardType: TextInputType.number,
        decoration: InputDecoration(

            /*counterText: _formData['title'].toString().length.toString() + " of 20",
          counterStyle:
              TextStyle(fontSize: 18.0, color: Theme.of(context).accentColor),*/
            labelText: Translations.of(context).editprofileUserMobileLabel,
            labelStyle: TextStyle(fontSize: widget.myResp[417]),
            errorStyle: TextStyle(fontSize: widget.myResp[418]),
            counterStyle: TextStyle(fontSize: widget.myResp[418]),
            icon: Icon(
              Icons.phone,
              size: widget.myResp[419],
            )),
      ),
    );
  }

  Widget _buildAddressTextField(MainModel model) {
    /*print(model.user.address);
    print(model.user.userName);
    print(model.user.userstype_id);
    print(model.user.userTypeName);
    print(model.user.mobile_number);
    print(model.user.avater);
    print(model.user.id);*/
    if (model.user.address == null && _addressTextControler.text.trim() == '') {
      _addressTextControler.text = '';
    } else if (model.user.address != null &&
        _addressTextControler.text.trim() == '') {
      _addressTextControler.text = model.user.address;
    } else if (model.user.address != null &&
        _addressTextControler.text.trim() != '') {
      _addressTextControler.text = _addressTextControler.text;
    } else if (model.user.address == null &&
        _addressTextControler.text.trim() != '') {
      _addressTextControler.text = _addressTextControler.text;
    } else {
      _addressTextControler.text = '';
    }
    return EnsureVisibleWhenFocused(
      focusNode: _addressFocusNode,
      child: TextFormField(
        //initialValue: product == null ? '' : product.title,
        controller: _addressTextControler,
        focusNode: _addressFocusNode,
        validator: (String value) {
          if (value.isEmpty) {
            return Translations.of(context).editprofileAddressErrorEmpty;
          } else if (value.trim().length < 5) {
            return Translations.of(context).editprofileAddressErrorLess;
          } else if (value.trim().length > 250) {
            return Translations.of(context).editprofileAddressErrorMore;
          }
        },
        //initialValue: widget.proudcts == null ? '' : widget.proudcts["title"],
        onSaved: (String value) {
          //setState(() {
          //if (value.trim().length <= 20) {
          _formData['address'] = value;
          //}
          //});
        }
        /*onChanged: (String value){
      setState(() {
        if(value.length <= 20 ){
          _titleValue = value;
        }

      });
    }*/
        ,
        maxLength: 250,
        style: TextStyle(fontSize: widget.myResp[420]),
        decoration: InputDecoration(

            /*counterText: _formData['title'].toString().length.toString() + " of 20",
          counterStyle:
              TextStyle(fontSize: 18.0, color: Theme.of(context).accentColor),*/
            labelText: Translations.of(context).editprofileAddressLabel,
            labelStyle: TextStyle(fontSize: widget.myResp[421]),
            errorStyle: TextStyle(fontSize: widget.myResp[422]),
            counterStyle: TextStyle(fontSize: widget.myResp[422]),
            icon: Icon(
              Icons.home,
              size: widget.myResp[423],
            )),
      ),
    );
  }

  void _submitForm(MainModel model) async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi) {
      if (!_formKey.currentState.validate()) {
        return;
      }
      _formKey.currentState.save();
      Map<String, dynamic> successInformation = await model.editUserProfile(
          _formData['avater'],
          _formData['username'],
          _formData['mobile_number'],
          _formData['address']);
      showDialog(
          context: context,
          builder: (BuildContext conte) {
            String mess = Translations.of(context).editprofileShowDialogDeaflut;
            if (successInformation['statuscode'] == '1') {
              mess = Translations.of(context).editprofileShowDialogOne;
            } else if (successInformation['statuscode'] == '2') {
              mess = Translations.of(context).editprofileShowDialogTwo;
            } else if (successInformation['statuscode'] == '3') {
              mess = Translations.of(context).editprofileShowDialogThree;
            } else if (successInformation['statuscode'] == '4') {
              mess = Translations.of(context).editprofileShowDialogFour;
            } else if (successInformation['statuscode'] == '5') {
              mess = Translations.of(context).editprofileShowDialogFive;
            } else if (successInformation['statuscode'] == '6') {
              mess = Translations.of(context).editprofileShowDialogSix;
            } else if (successInformation['statuscode'] == '7') {
              mess = Translations.of(context).editprofileShowDialogSeven;
            }
            return WillPopScope(
              onWillPop: () async => false,
              child: AlertDialog(
                title: Text(
                  Translations.of(context).editprofileShowDialogTitle,
                  style: TextStyle(
                    fontSize: widget.myResp[424],
                  ),
                ),
                content: Padding(
                  padding: EdgeInsets.only(top: widget.myResp[425]),
                  child: Text(mess,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: widget.myResp[426])),
                ),
                actions: <Widget>[
                  model.isLoadinProgress
                      ? AdapativProgressIndicator()
                      : FlatButton(
                          highlightColor: Colors.red,
                          splashColor: Theme.of(context).primaryColor,
                          onPressed: () {
                            Navigator.of(context).pop();
                            if (successInformation['statuscode'] == '1') {
                              //Navigator.of(context).pushReplacementNamed('/home');
                              Navigator.pushNamedAndRemoveUntil(context, '/home',
                                  (Route<dynamic> route) => false);
                            }
                          },
                          child: Text(Translations.of(context).editprofileShowDialogOk, style: TextStyle(fontSize: widget.myResp[427])))
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
                  Translations.of(context).editprofileShowDialogTwoTitle,
                  style: TextStyle(
                    fontSize: widget.myResp[428],
                  ),
                ),
                content: Padding(
                  padding: EdgeInsets.only(top: widget.myResp[429]),
                  child: Text(Translations.of(context).noInternetConnection,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: widget.myResp[430])),
                ),
                actions: <Widget>[
                  FlatButton(
                      highlightColor: Colors.red,
                      splashColor: Theme.of(context).primaryColor,
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text(Translations.of(context).editprofileShowDialogTwoOk, style: TextStyle(fontSize: widget.myResp[431])))
                ],
              ),
            );
          });
    }
  }

  Widget _buildSubmitButton(MainModel model) {
    return ScopedModelDescendant<MainModel>(
      builder: (BuildContext context, Widget child, MainModel model) {
        return model.isLoadinProgress
            ? Center(
                child: AdapativProgressIndicator(),
              )
            : GestureDetector(
                onTap: () => _submitForm(model),
                child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  decoration: BoxDecoration(
                      //color: Colors.deepPurple,
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Text(
                    Translations.of(context).editprofileSaveButton,
                    style: TextStyle(color: Colors.white, fontSize: widget.myResp[602]),
                  ),
                  //color: Colors.deepPurple,
                ),
              );
      },
    );
  }

  Future<bool> _willPopCallback() async {
    Navigator.pushNamedAndRemoveUntil(
        context, '/home', (Route<dynamic> route) => false);
    return false; // return true if the route to be popped
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _willPopCallback,
      child: Scaffold(
        appBar: AppBar(
          title: Text(Translations.of(context).editprofileAppBarTitle,
          style: TextStyle(fontSize: widget.myResp[406]),),
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(widget.myResp[407]),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: <Widget>[
                      ImageInput(_setImage, widget.model, widget.myResp),
                      SizedBox(
                        height: widget.myResp[408],
                      ),
                      _buildUserNameTextField(widget.model),
                      SizedBox(
                        height: widget.myResp[409],
                      ),
                      _buildMobileNumberTextField(widget.model),
                      SizedBox(
                        height: widget.myResp[410],
                      ),
                      _buildAddressTextField(widget.model),
                      SizedBox(
                        height: widget.myResp[411],
                      ),
                      _buildSubmitButton(widget.model),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
