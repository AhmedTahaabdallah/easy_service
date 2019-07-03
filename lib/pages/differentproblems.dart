import 'package:flutter/material.dart';
import '../widgets/problem/problems.dart';
//import '../models/product.dart';
import 'package:scoped_model/scoped_model.dart';
import '../scoped-models/main.dart';
import '../widgets/ui_element/adapativ_progress_indicator.dart';
import 'package:connectivity/connectivity.dart';
import '../translation/translation_strings.dart';

class DifferentProblemsPage extends StatefulWidget {
  final MainModel model;
  final String opraetorType;
  final String title;
  final List<dynamic> myResp;
  DifferentProblemsPage(this.opraetorType, this.model, this.title, this.myResp);
  @override
  State<StatefulWidget> createState() {
    return _DifferentProblemsPageState();
  }
}

class _DifferentProblemsPageState extends State<DifferentProblemsPage> {
  //final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  Widget content;

  void _checkInternet() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi) {
      widget.model
          .fetchDifferentProblems(
              opraetorType: widget.opraetorType, reload: 'false')
          .then((_) {
        content = Center(
          child: Text(
            Translations.of(context).allProblemsNoProblemsFound,
            style: TextStyle(fontSize: widget.myResp[354]),
          ),
        );
      });
    }
  }

  @override
  initState() {
    widget.model.clearAllProblems();

    content = Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            'assets/images/nointernet.png',
            fit: BoxFit.cover,
            width: widget.myResp[612],
            height: widget.myResp[613],
          ),
          SizedBox(
            height: widget.myResp[614],
          ),
          ScopedModelDescendant<MainModel>(builder: (content, child, model) {
            return Text(
              Translations.of(context).noInternetConnection,
              style: TextStyle(fontSize: widget.myResp[355]),
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
    widget.model.resetAllProblem();
    super.dispose();
  }

  Widget _buildProductList() {
    return ScopedModelDescendant(
      builder: (BuildContext context, Widget child, MainModel model) {
        if (model.allProblems.length > 0 && !model.isLoadingFetchProblems) {
          content =
              Problems('differentproblems', widget.opraetorType, widget.myResp);
        } else if (model.isLoadingFetchProblems) {
          content = Center(
            child: AdapativProgressIndicator(),
          );
        }
        return RefreshIndicator(
            child: content, onRefresh: model.fetchDifferentProblems);
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
            style: TextStyle(fontSize: widget.myResp[353]),
          ),
          elevation:
              Theme.of(context).platform == TargetPlatform.iOS ? 0.0 : 4.0,
        ),
        body: _buildProductList(),
      ),
    );
  }
}
