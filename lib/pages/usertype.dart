import 'package:flutter/material.dart';
import '../widgets/users/users.dart';
//import '../models/product.dart';
import 'package:scoped_model/scoped_model.dart';
import '../scoped-models/main.dart';
import '../widgets/ui_element/adapativ_progress_indicator.dart';
import 'package:connectivity/connectivity.dart';
import '../translation/translation_strings.dart';

class UserTypePage extends StatefulWidget {
  final MainModel model;
  final String opraetorType;
  final String title;
  final List<dynamic> myResp;
  UserTypePage(this.opraetorType, this.model, this.title, this.myResp);
  @override
  State<StatefulWidget> createState() {
    return _UserTypePagePageState();
  }
}

class _UserTypePagePageState extends State<UserTypePage> {
  //final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  Widget content;
  void _checkInternet() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi) {
      widget.model
          .fetchAllUsersType(getUserType: widget.opraetorType)
          .then((_) {
        content = Center(
          child: Text(
            Translations.of(context).userTypeNoUsersFounded,
            style: TextStyle(fontSize: widget.myResp[357]),
          ),
        );
      });
    }
  }

  @override
  initState() {
    widget.model.clearAllUsers();
    content = Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            'assets/images/nointernet.png',
            fit: BoxFit.cover,
            width: widget.myResp[615],
            height: widget.myResp[616],
          ),
          SizedBox(
            height: widget.myResp[617],
          ),
          ScopedModelDescendant<MainModel>(builder: (content, child, model) {
            return Text(
              Translations.of(context).noInternetConnection,
              style: TextStyle(fontSize: widget.myResp[358]),
            );
          }),
        ],
      ),
    );
    _checkInternet();
    super.initState();
  }

  @override
  void dispose() {
    widget.model.resetAllUsers();
    super.dispose();
  }

  Widget _buildAllUsersList(BuildContext contt) {
    return ScopedModelDescendant(
      builder: (BuildContext context, Widget child, MainModel model) {
        if (model.allUsers.length > 0 && !model.isLoadingFetchAllUsers) {
          content = Users(widget.opraetorType, contt, widget.myResp);
        } else if (model.isLoadingFetchAllUsers) {
          content = Center(
            child: AdapativProgressIndicator(),
          );
        }
        return RefreshIndicator(
            child: content, onRefresh: model.fetchAllUsersType);
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
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            widget.title,
            style: TextStyle(fontSize: widget.myResp[356]),
          ),
          elevation:
              Theme.of(context).platform == TargetPlatform.iOS ? 0.0 : 4.0,
        ),
        body: _buildAllUsersList(context),
      ),
    );
  }
}
