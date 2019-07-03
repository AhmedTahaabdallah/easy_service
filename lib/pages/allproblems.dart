import 'package:flutter/material.dart';
import '../widgets/problem/problems.dart';
//import '../models/product.dart';
import 'package:scoped_model/scoped_model.dart';
import '../scoped-models/main.dart';
import '../widgets/ui_element/adapativ_progress_indicator.dart';
import '../pages/addproblem.dart';
import '../widgets/drawer/firstsection.dart';
import '../widgets/drawer/secondsection.dart';
import '../widgets/drawer/thirdsection.dart';
import '../widgets/drawer/fourthsection.dart';
import '../translation/translation_strings.dart';
import 'package:connectivity/connectivity.dart';

class AllProblemsPage extends StatefulWidget {
  final MainModel model;
  final Function myRespFunc;
  AllProblemsPage(this.model, this.myRespFunc);
  @override
  State<StatefulWidget> createState() {
    return _AllProblemsPageState();
  }
}

enum PopupOutMenu { CHANGEPASSWORD, CHANGELANGUAGE, CONTACT }

class _AllProblemsPageState extends State<AllProblemsPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  Widget content;

  void _checkInternet(List<dynamic> myResp) async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi) {
      widget.model.fetchAllProblems(reload: 'false').then((_) {
        //List<dynamic> myResp = widget.myRespFunc(context);
        content = ScopedModelDescendant<MainModel>(
            builder: (BuildContext context, Widget child, MainModel model) {
          return Center(
            child: Text(
              Translations.of(context).allProblemsNoProblemsFound,
              style: TextStyle(fontSize: myResp[73]),
            ),
          );
        });
      });
    }
  }

  @override
  initState() {
    widget.model.clearAllProblems();
    List<dynamic> myResp = widget.myRespFunc(context);
    content = ScopedModelDescendant<MainModel>(
        builder: (BuildContext context, Widget child, MainModel model) {
      return /*model.user.userstypeId == 5
          ? Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    Translations.of(context).allProblemsNoProblemsFound,
                    style: TextStyle(fontSize: myResp[73]),
                  )
                ],
              ),
            )
          : */Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'assets/images/nointernet.png',
                    fit: BoxFit.cover,
                    width: myResp[609],
                    height: myResp[610],
                  ),
                  SizedBox(
                    height: myResp[611],
                  ),
                  Text(
                    Translations.of(context).noInternetConnection,
                    style: TextStyle(fontSize: myResp[355]),
                  ),
                ],
              ),
            );
    });
    _checkInternet(myResp);
    super.initState();
  }

  Widget _buildSlidDrawer(BuildContext cont, List<dynamic> myResp) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * myResp[603],
      child: Container(
        color: Colors.blue,
        child: Drawer(
          child: ScopedModelDescendant<MainModel>(
            builder: (context, child, model) {
              return ListView(
                  padding: EdgeInsets.only(top: myResp[74]),
                  shrinkWrap: true,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        FirstSection(model, myResp),
                        SecondSection(model, myResp),
                        ThirdSection(model, myResp),
                        FourthSection(model, context, myResp),
                      ],
                    ),
                  ]);
            },
          ),
        ),
      ),
    );
  }

  Widget _buildProblemList(List<dynamic> myResp) {
    return ScopedModelDescendant(
      builder: (BuildContext context, Widget child, MainModel model) {
        /*content = model.user.userstypeId == 5
            ? Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      Translations.of(context).allProblemsNoProblemsFound,
                      style: TextStyle(fontSize: myResp[73]),
                    )
                  ],
                ),
              )
            : Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      'assets/images/nointernet.png',
                      fit: BoxFit.cover,
                      width: myResp[609],
                      height: myResp[610],
                    ),
                    SizedBox(
                      height: myResp[611],
                    ),
                    Text(
                      Translations.of(context).noInternetConnection,
                      style: TextStyle(fontSize: myResp[355]),
                    ),
                  ],
                ),
            );*/
        if (model.allProblems.length > 0 && !model.isLoadingFetchProblems) {
          content = Problems('allproblems', 'All', myResp);
        } else if (model.isLoadingFetchProblems) {
          content = Center(
            child: AdapativProgressIndicator(),
          );
        }
        return RefreshIndicator(
            child: content, onRefresh: model.fetchAllProblems);
      },
    );
  }

  Widget _popupMenu(BuildContext context, List<dynamic> myResp) {
    return PopupMenuButton<PopupOutMenu>(
      itemBuilder: (context) {
        return [
          PopupMenuItem<PopupOutMenu>(
            value: PopupOutMenu.CHANGEPASSWORD,
            child: Text(
              Translations.of(context).allProblemsChangePassword,
              style: TextStyle(fontSize: myResp[69]),
            ),
          ),
          PopupMenuItem<PopupOutMenu>(
            value: PopupOutMenu.CHANGELANGUAGE,
            child: Text(Translations.of(context).language,
                style: TextStyle(fontSize: myResp[71])),
          ),
          PopupMenuItem<PopupOutMenu>(
            value: PopupOutMenu.CONTACT,
            child: Text(Translations.of(context).allProblemsContactUs,
                style: TextStyle(fontSize: myResp[71])),
          )
        ];
      },
      onSelected: (PopupOutMenu menu) {
        if (menu == PopupOutMenu.CHANGEPASSWORD) {
          Navigator.pushNamed(context, '/changepassword');
        } else if (menu == PopupOutMenu.CHANGELANGUAGE) {
          widget.model.changeDirection();
        } else if (menu == PopupOutMenu.CONTACT) {
          Navigator.pushNamed(context, '/contactdeveloper');
        }
      },
      icon: Icon(
        Icons.more_vert,
        size: myResp[72],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    List<dynamic> myResp = widget.myRespFunc(context);
    //print(widget.model.user.avater);
    return Scaffold(
      key: _scaffoldKey,
      drawer: _buildSlidDrawer(context, myResp),
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          Translations.of(context).allProblemsAppBarTitle,
          style: TextStyle(fontSize: myResp[61]),
        ),
        leading: IconButton(
          padding: EdgeInsets.only(right: myResp[62], left: myResp[63]),
          icon: Icon(
            Icons.menu,
            color: Colors.white,
            size: myResp[64],
          ),
          onPressed: () {
            _scaffoldKey.currentState.openDrawer();
          },
        ),
        elevation: Theme.of(context).platform == TargetPlatform.iOS ? 0.0 : 4.0,
        actions: <Widget>[
          ScopedModelDescendant<MainModel>(
            builder: (BuildContext context, Widget child, MainModel model) {
              return model.user.userstypeId == 4
                  ? Container(
                      child: IconButton(
                      onPressed: () {
                        if (model.isLoadingFetchProblems ||
                            model.isLoadingFetchProblemsMore) {
                          Scaffold.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                Translations.of(context)
                                    .allProblemsScaffoldMessageOne,
                                style: TextStyle(fontSize: myResp[66]),
                              ),
                              backgroundColor: Theme.of(context).primaryColor,
                            ),
                          );
                          return;
                        } else if (model.isLoadinProgress) {
                          Scaffold.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                Translations.of(context)
                                    .allProblemsScaffoldMessageTwo,
                                style: TextStyle(fontSize: myResp[67]),
                              ),
                              backgroundColor: Theme.of(context).primaryColor,
                            ),
                          );
                          return;
                        }
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return AddProblem(myResp);
                        }));
                      },
                      icon: Icon(
                        Icons.add_circle,
                        size: myResp[65],
                      ),
                    ))
                  : Container();
            },
          ),
          Container(
              margin: EdgeInsets.only(right: myResp[68]),
              child: _popupMenu(context, myResp))
        ],
      ),
      body: _buildProblemList(myResp),
    );
  }
}
