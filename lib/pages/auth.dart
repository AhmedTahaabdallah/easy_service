import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import '../scoped-models/main.dart';
import '../models/auth.dart';
import '../widgets/ui_element/adapativ_progress_indicator.dart';
import 'package:connectivity/connectivity.dart';
import '../translation/translation_strings.dart';
import '../widgets/helpers/ensure_visible.dart';

class AuthPage extends StatefulWidget {
  final Function responsveFunc;
  AuthPage(this.responsveFunc);
  @override
  State<StatefulWidget> createState() {
    return _AuthPageState();
  }
}

class _AuthPageState extends State<AuthPage> with TickerProviderStateMixin {
  final Map<String, dynamic> _formData = {
    'email': null,
    'password': null,
    'confirmpassword': null,
    'username': false
  };
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> _scafoldKey = GlobalKey<ScaffoldState>();
  TextEditingController _passwordtextController = TextEditingController();
  AuthMode _authMode = AuthMode.Login;
  AnimationController _controller;
  Animation<Offset> _slideAnimation;
  bool isvis = false;
  final _userNameFocusNode = FocusNode();
  final _emailFocusNode = FocusNode();
  final _passwordFocusNode = FocusNode();
  final _confirmPasswordFocusNode = FocusNode();

  void initState() {
    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    _slideAnimation = Tween<Offset>(begin: Offset(0.0, -1.5), end: Offset.zero)
        .animate(
            CurvedAnimation(parent: _controller, curve: Curves.fastOutSlowIn));
    super.initState();
  }

  DecorationImage _buildBackgroundImage() {
    return DecorationImage(
        fit: BoxFit.cover,
        colorFilter:
            ColorFilter.mode(Colors.black.withOpacity(.5), BlendMode.dstATop),
        image: AssetImage("assets/images/home2.png"));
  }

  Widget _buildEmailTextField(List<dynamic> myResp) {
    return EnsureVisibleWhenFocused(
      focusNode: _emailFocusNode,
      child: TextFormField(
        focusNode: _emailFocusNode,
        keyboardType: TextInputType.emailAddress,
        style: TextStyle(fontSize: myResp[38]),
        decoration: InputDecoration(
            labelText: Translations.of(context).authEmailTextFormFieldLabelText,
            labelStyle: TextStyle(fontSize: myResp[39]),
            errorStyle: TextStyle(fontSize: myResp[40]),
            filled: true,
            fillColor: Colors.white,
            icon: Icon(
              Icons.email,
              size: myResp[41],
              color: Theme.of(context).accentColor,
            )),
        validator: (String value) {
          if (value.trim() != 'owner') {
            if (value.trim().isEmpty ||
                !RegExp(r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
                    .hasMatch(value)) {
              return Translations.of(context).authEmailTextFormFieldLabelError;
            }
          }
        },
        onSaved: (String value) {
          _formData['email'] = value.trim();
        },
      ),
    );
  }

  Widget _buildPasswordTextField(List<dynamic> myResp) {
    return EnsureVisibleWhenFocused(
      focusNode: _passwordFocusNode,
      child: TextFormField(
        focusNode: _passwordFocusNode,
        controller: _passwordtextController,
        style: TextStyle(fontSize: myResp[42]),
        decoration: InputDecoration(
            labelText:
                Translations.of(context).authPasswordTextFormFieldLabelText,
            labelStyle: TextStyle(fontSize: myResp[43]),
            errorStyle: TextStyle(fontSize: myResp[44]),
            filled: true,
            fillColor: Colors.white,
            icon: Icon(
              Icons.lock,
              size: myResp[45],
              color: Theme.of(context).accentColor,
            )),
        obscureText: true,
        validator: (String value) {
          /*if (value.trim().isEmpty || value.trim().length < 6) {
            return 'Wrong Password';
          }*/
          if (value.trim().isEmpty) {
            return Translations.of(context)
                .authPasswordTextFormFieldLabelErrorEmpty;
          } else if (value.trim().length < 5) {
            return Translations.of(context)
                .authPasswordTextFormFieldLabelErrorMore;
          } else if (value.trim().length > 12) {
            return Translations.of(context)
                .authPasswordTextFormFieldLabelErrorLess;
          }
        },
        onSaved: (String value) {
          _formData['password'] = value.trim();
        },
      ),
    );
  }

  Widget _buildconfirmPasswordTextField(List<dynamic> myResp) {
    return FadeTransition(
      opacity: CurvedAnimation(parent: _controller, curve: Curves.easeIn),
      child: SlideTransition(
        position: _slideAnimation,
        child: Visibility(
          visible: isvis,
          child: EnsureVisibleWhenFocused(
            focusNode: _confirmPasswordFocusNode,
            child: TextFormField(
              focusNode: _confirmPasswordFocusNode,
              style: TextStyle(fontSize: myResp[46]),
              decoration: InputDecoration(
                  labelText: Translations.of(context)
                      .authConfirmPasswordTextFormFieldLabelText,
                  labelStyle: TextStyle(fontSize: myResp[47]),
                  errorStyle: TextStyle(fontSize: myResp[48]),
                  filled: true,
                  fillColor: Colors.white,
                  icon: Icon(
                    Icons.lock,
                    size: myResp[49],
                    color: Theme.of(context).accentColor,
                  )),
              obscureText: true,
              validator: (String value) {
                if (value.trim() != _passwordtextController.text &&
                    _authMode == AuthMode.Signup) {
                  return Translations.of(context)
                      .authConfirmPasswordTextFormFieldLabelError;
                }
              },
              onSaved: (String value) {
                _formData['confirmpassword'] = value.trim();
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildUserNameTextField(List<dynamic> myResp) {
    return FadeTransition(
      opacity: CurvedAnimation(parent: _controller, curve: Curves.easeIn),
      child: SlideTransition(
        position: _slideAnimation,
        child: Visibility(
          visible: isvis,
          child: EnsureVisibleWhenFocused(
            focusNode: _userNameFocusNode,
            child: TextFormField(
              focusNode: _userNameFocusNode,
              style: TextStyle(fontSize: myResp[50]),
              decoration: InputDecoration(
                  labelText: Translations.of(context)
                      .authUserNameTextFormFieldLabelText,
                  labelStyle: TextStyle(fontSize: myResp[51]),
                  errorStyle: TextStyle(fontSize: myResp[52]),
                  filled: true,
                  fillColor: Colors.white,
                  icon: Icon(
                    Icons.person,
                    size: myResp[53],
                    color: Theme.of(context).accentColor,
                  )),
              validator: (String value) {
                if (_authMode == AuthMode.Signup) {
                  if (value.trim().isEmpty) {
                    return Translations.of(context)
                        .authUserNameTextFormFieldLabelErrorEmpty;
                  } else if (value.trim().length < 5) {
                    return Translations.of(context)
                        .authUserNameTextFormFieldLabelErrorMore;
                  } else if (value.trim().length > 12) {
                    return Translations.of(context)
                        .authUserNameTextFormFieldLabelErrorLess;
                  }
                }
              },
              onSaved: (String value) {
                _formData['username'] = value.trim();
              },
            ),
          ),
        ),
      ),
    );
  }

  void _submitForm(
      MainModel model, BuildContext contextt, List<dynamic> myResp) async {
    //Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext cont) => AllProductsPage()));

    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi) {
      if (!_formKey.currentState.validate()) {
        return;
      }
      _formKey.currentState.save();
      if (_authMode == AuthMode.Login) {
        Map<String, dynamic> successInformation = await model.authenticateLogin(
          _formData['email'],
          _formData['password'],
        );

        if (successInformation['statuscode'] != '1') {
          showDialog(
              context: context,
              builder: (BuildContext conte) {
                String mess =
                    Translations.of(context).authLoginShowDialogDeaflut;
                if (successInformation['statuscode'] == '2') {
                  mess = Translations.of(context).authLoginShowDialogTwo;
                } else if (successInformation['statuscode'] == '3') {
                  mess = Translations.of(context).authLoginShowDialogThree;
                }
                return AlertDialog(
                  title: Text(
                    Translations.of(context).authLoginShowDialogTitle,
                    style: TextStyle(fontSize: myResp[54]),
                  ),
                  content: Text(mess, style: TextStyle(fontSize: myResp[55])),
                  actions: <Widget>[
                    FlatButton(
                        highlightColor: Colors.red,
                        splashColor: Theme.of(context).primaryColor,
                        onPressed: () => Navigator.of(context).pop(),
                        child: Text(
                            Translations.of(context)
                                .authLoginShowDialogButtonOk,
                            style: TextStyle(fontSize: myResp[56])))
                  ],
                );
              });
        } else {
          Navigator.pushReplacementNamed(context, '/home');
        }
      } else if (_authMode == AuthMode.Signup) {
        Map<String, dynamic> successInformation =
            await model.authenticateRegister(
          _formData['email'],
          _formData['username'],
          _formData['password'],
        );

        if (successInformation['statuscode'] == '1') {
          _authMode = AuthMode.Login;
          _controller.reverse().then((_) {
            setState(() {
              isvis = false;
            });
            //model.notifyListeners();
          });
        } else if (successInformation['statuscode'] != '1') {
          showDialog(
              context: context,
              builder: (BuildContext conte) {
                String mess =
                    Translations.of(context).authSignupShowDialogDeaflut;
                if (successInformation['statuscode'] == '2') {
                  mess = Translations.of(context).authSignupShowDialogTwo;
                } else if (successInformation['statuscode'] == '3') {
                  mess = Translations.of(context).authSignupShowDialogThree;
                } else if (successInformation['statuscode'] == '4') {
                  mess = Translations.of(context).authSignupShowDialogFour;
                } else if (successInformation['statuscode'] == '5') {
                  mess = Translations.of(context).authSignupShowDialogFive;
                } else if (successInformation['statuscode'] == '6') {
                  mess = Translations.of(context).authSignupShowDialogSix;
                } else if (successInformation['statuscode'] == '7') {
                  mess = Translations.of(context).authSignupShowDialogSeven;
                }
                return AlertDialog(
                  title: Text(
                    Translations.of(context).authSignupShowDialogTitle,
                    style: TextStyle(fontSize: myResp[57]),
                  ),
                  content: Text(mess, style: TextStyle(fontSize: myResp[58])),
                  actions: <Widget>[
                    FlatButton(
                        highlightColor: Colors.red,
                        splashColor: Theme.of(context).primaryColor,
                        onPressed: () => Navigator.of(context).pop(),
                        child: Text(
                            Translations.of(context)
                                .authSignupShowDialogButtonOk,
                            style: TextStyle(fontSize: myResp[59])))
                  ],
                );
              });
        }
      }
    } else {
      _scafoldKey.currentState.showSnackBar(SnackBar(
        backgroundColor: Theme.of(contextt).primaryColor,
        content: Text(
          Translations.of(context).noInternetConnection,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: myResp[60],
            color: Colors.white,
          ),
        ),
      ));
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    List<dynamic> myRespFunc = widget.responsveFunc(context);
    return Scaffold(
      key: _scafoldKey,
      appBar: AppBar(
          centerTitle: true,
          title: Text(
              _authMode == AuthMode.Signup
                  ? Translations.of(context).authAppBarTitleSignup
                  : Translations.of(context).authAppBarTitleLogin,
              style: TextStyle(fontSize: myRespFunc[29])),
          //fontSize: mylocale.languageCode.contains("en") ? appBarTitleFontSize : appBarTitleFontSize - 5.0)),
          elevation:
              Theme.of(context).platform == TargetPlatform.iOS ? 0.0 : 4.0),
      //body: ProductManager(proudctName: "Food Tester",),
      backgroundColor: Colors.white,
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: Container(
          decoration: BoxDecoration(image: _buildBackgroundImage()),
          padding: EdgeInsets.all(myRespFunc[30]),
          child: Center(
            child: SingleChildScrollView(
              child: ScopedModelDescendant<MainModel>(
                  builder: (BuildContext cont, Widget child, MainModel model) {
                return Form(
                  key: _formKey,
                  child: Container(
                    //width: tarqetWidth,
                    width: double.infinity,
                    child: Column(children: <Widget>[
                      _buildEmailTextField(myRespFunc),
                      SizedBox(
                        height: myRespFunc[31],
                      ),
                      _buildUserNameTextField(myRespFunc),
                      SizedBox(
                        height: myRespFunc[32],
                      ),
                      _buildPasswordTextField(myRespFunc),
                      SizedBox(
                        height: myRespFunc[33],
                      ),
                      _buildconfirmPasswordTextField(myRespFunc),
                      SizedBox(
                        height: myRespFunc[34],
                      ),
                      model.isLoadingAuth
                          ? Center(
                              child: AdapativProgressIndicator(),
                            )
                          : RaisedButton(
                              child: Text(
                                _authMode == AuthMode.Signup
                                    ? Translations.of(context)
                                        .authRaisedButtonSignup
                                    : Translations.of(context)
                                        .authRaisedButtonLogin,
                                style: TextStyle(fontSize: myRespFunc[35]),
                              ),
                              //color: Theme.of(context).primaryColor,
                              textColor: Colors.white,
                              onPressed: () =>
                                  _submitForm(model, context, myRespFunc)),
                      SizedBox(
                        height: myRespFunc[36],
                      ),
                      FlatButton(
                        highlightColor: Colors.red,
                        splashColor: Theme.of(context).primaryColor,
                        onPressed: () {
                          if (_authMode == AuthMode.Login) {
                            setState(() {
                              _authMode = AuthMode.Signup;
                              _controller.forward();
                              isvis = true;
                            });
                            //model.notifyListeners();
                          } else {
                            _authMode = AuthMode.Login;
                            _controller.reverse().then((_) {
                              setState(() {
                                isvis = false;
                              });
                              //model.notifyListeners();
                            });
                          }
                        },
                        child: Text(
                          _authMode == AuthMode.Login
                              ? Translations.of(context).authSwitchToSignup
                              : Translations.of(context).authSwitchToLogin,
                          style: TextStyle(
                            fontSize: myRespFunc[37],
                            color: Color(0xffD507F1),
                          ),
                        ),
                      ),
                    ]),
                  ),
                );
              }),
            ),
          ),
        ),
      ),
    );
  }
}
