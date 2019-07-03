import 'package:flutter/material.dart';
import '../models/pagemodel.dart';
import './auth.dart';
import 'package:page_view_indicator/page_view_indicator.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../translation/translation_strings.dart';
import '../scoped-models/main.dart';


class OnBoarding extends StatefulWidget {
  final MainModel model;
  final Function responsveFunc;
  OnBoarding(this.model,this.responsveFunc);
  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  List<PageModel> pages;
  ValueNotifier<int> _pageViewNotifier = ValueNotifier(0);

  void _addPages() {
    pages = List<PageModel>();
    //pages.clear();
    pages.add(
      PageModel(
        Translations.of(context).onboardingFirstTitle,
        Translations.of(context).onboardingFirstDescription,
        'assets/images/home1.png',
        Icons.ac_unit,
      ),
    );
    pages.add(
      PageModel(
        Translations.of(context).onboardingSecondTitle,
        Translations.of(context).onboardingSecondDescription,
        'assets/images/home2.png',
        Icons.add_to_photos,
      ),
    );
    pages.add(
      PageModel(
        Translations.of(context).onboardingThirdTitle,
        Translations.of(context).onboardingThirdDescription,
        'assets/images/home3.png',
        Icons.airplay,
      ),
    );
    pages.add(
      PageModel(
        Translations.of(context).onboardingFouirthTitle,
        Translations.of(context).onboardingFouirthDescription,
        'assets/images/home4.png',
        Icons.location_on,
      ),
    );
  }

  /*List<Widget> _drawPageIndicators(){
    List<Widget> _widgets = List<Widget>();
    for(var i in pages){
      _widgets.add(_drawCircle(Theme.of(context).primaryColor));
    }
    return _widgets;
  }

  Widget _drawCircle(Color color) {
    return Container(
      margin: EdgeInsets.only(right: 8.0),
      width: 15.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Theme.of(context).primaryColor
      ),
    );
  }*/
  

  Widget _displayPageIndicator(int length, List<dynamic> myResp) {
    return PageViewIndicator(
      pageIndexNotifier: _pageViewNotifier,
      length: length,
      normalBuilder: (animationController, index) => Circle(
            size: myResp[27],
            color: Colors.red.shade800,
          ),
      highlightedBuilder: (animationController, index) => ScaleTransition(
            scale: CurvedAnimation(
              parent: animationController,
              curve: Curves.ease,
            ),
            child: Circle(
              size: myResp[28],
              color: Theme.of(context).primaryColor,
            ),
          ),
    );
  }

  void _updateSeen() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('seen', true);
  }

  @override
  Widget build(BuildContext context) {
    _addPages();
    List<dynamic> myRespFunc = widget.responsveFunc(context);
    //print(pages.length);
    double ww = MediaQuery.of(context).size.width;
    double myWidth = MediaQuery.of(context).orientation == Orientation.portrait
        ? ww * myRespFunc[0]
        : ww * myRespFunc[1];
    return Stack(
      children: <Widget>[
        Scaffold(
          
          body: PageView.builder(
            itemBuilder: (context, index) {
              return Stack(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: ExactAssetImage(pages[index].image),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Transform.translate(
                        child: Icon(
                          pages[index].icon,
                          size: MediaQuery.of(context).orientation ==
                                  Orientation.portrait
                              ? myRespFunc[2]
                              : myRespFunc[3],
                          color: Theme.of(context).primaryColor,
                        ),
                        offset: Offset(
                            myRespFunc[4],
                            MediaQuery.of(context).orientation ==
                                    Orientation.portrait
                                ? myRespFunc[5]
                                : myRespFunc[6]),
                      ),
                      Transform.translate(
                        child: Container(
                          padding: EdgeInsets.only(right: myRespFunc[592], left: myRespFunc[593],
                           top: myRespFunc[594], bottom: myRespFunc[595]),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade600,
                            borderRadius: BorderRadius.circular(myRespFunc[596])
                          ),
                          child: Text(
                            pages[index].title,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: myRespFunc[7],
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        offset: Offset(
                            myRespFunc[8],
                            MediaQuery.of(context).orientation ==
                                    Orientation.portrait
                                ? myRespFunc[9]
                                : myRespFunc[10]),
                      ),
                      Transform.translate(
                        child: Padding(
                            padding: EdgeInsets.only(
                                right: MediaQuery.of(context).size.width * myRespFunc[11],
                                left: MediaQuery.of(context).size.width * myRespFunc[12],
                                top: MediaQuery.of(context).orientation ==
                                        Orientation.portrait
                                    ? myRespFunc[13]
                                    : myRespFunc[14]),
                            child: Container(
                              padding: EdgeInsets.only(right: myRespFunc[597], left: myRespFunc[598],
                               top: myRespFunc[599], bottom: myRespFunc[600]),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade600,
                            borderRadius: BorderRadius.circular(myRespFunc[601])
                          ),
                              child: Text(
                                pages[index].description,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: myRespFunc[15],
                                ),
                              ),
                            )),
                        offset: Offset(
                            myRespFunc[16],
                            MediaQuery.of(context).orientation ==
                                    Orientation.portrait
                                ? myRespFunc[17]
                                : myRespFunc[18]),
                      )
                    ],
                  )
                ],
              );
            },
            itemCount: pages.length,
            onPageChanged: (int index) {
              _pageViewNotifier.value = index;
            },
          ),
        ),
        Transform.translate(
          offset: Offset(
              myRespFunc[19],
              MediaQuery.of(context).orientation == Orientation.portrait
                  ? myRespFunc[20]
                  : myRespFunc[21]),
          child: Align(
            alignment: Alignment.center,
            child: _displayPageIndicator(
              pages.length, myRespFunc
            ) /*Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: _drawPageIndicators(),
            )*/
            ,
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).orientation == Orientation.portrait
                  ? myRespFunc[22]
                  : myRespFunc[23],
              left: myWidth,
              right: myWidth,
            ),
            child: SizedBox(
              //width: MediaQuery.of(context).size.width * .85,
              width: double.infinity,
              height: myRespFunc[24],
              child: RaisedButton(
                color: Theme.of(context).primaryColor,
                child: Text(
                  Translations.of(context).onboardingGetStartedButton,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: myRespFunc[25],
                    letterSpacing: myRespFunc[26],
                  ),
                ),
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(
                    builder: (context) {
                      _updateSeen();
                      return AuthPage(widget.responsveFunc);
                    },
                  ));
                },
              ),
            ),
          ),
        )
      ],
    );
  }
}
