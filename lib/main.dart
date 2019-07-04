import 'package:flutter/material.dart';
import './scoped-models/main.dart';
import 'package:scoped_model/scoped_model.dart';
import './shared/adapitve_theme.dart';
import './widgets/helpers/custom_route.dart';
import 'package:shared_preferences/shared_preferences.dart';
import './pages/auth.dart';
import './pages/allproblems.dart';
import './pages/onboarding.dart';
import './pages/problempage.dart';
import './pages/changepassword.dart';
import './pages/contactdeveloper.dart';
import './translation/translation.dart';
import './translation/translation_strings.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import './funcations/responsevefuncation.dart';

void main() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  //prefs.setBool('seen', false);
  runApp(MyApp(prefs.getBool('seen'), prefs.getString('myAppLocale'), prefs.getDouble('screenwidth'), prefs.getDouble('screenheight'), prefs.getBool('locale')));
}

class MyApp extends StatefulWidget {
  final bool seen;
  final String myLocale;
  final double screenwidth;
  final double screenheight;
  final bool locale;
  MyApp(this.seen, this.myLocale, this.screenwidth, this.screenheight, this.locale);
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  //Widget _screen;
  bool _seen;
  bool _isAuthenticated = false;
  final MainModel _model = MainModel();

  @override
  void initState() {
    _model.setMyLocale(widget.myLocale);
    _model.autoAuthenticate();
    _model.userSubject.listen((bool isAuthenticated) {
      setState(() {
        _isAuthenticated = isAuthenticated;
      });
    });
    _seen = widget.seen;

    super.initState();
  }

  @override
  Widget build(BuildContext context1) {
    //Locale mylocale = Localizations.localeOf(context);
    
    bool isEng = false;
    if(widget.myLocale == 'en'){
      isEng = true;
    } else if(widget.myLocale == null){
      isEng = false;
    } else{
      isEng = false;
    }
    return ScopedModel<MainModel>(
        model: _model,
        child: ScopedModelDescendant<MainModel>(
            builder: (BuildContext context, Widget child, MainModel model) {
          return MaterialApp(
            
            locale: _model.appLocal,
            localizationsDelegates: [
              const TranslationsDelegate(),
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
            ],
            supportedLocales: [
              const Locale('ar', ''), // Arabic
              const Locale('en', ''), // English
            ],
            onGenerateTitle: (BuildContext context) =>
                Translations.of(context).appTitle,
            theme: getAdaptiveThemeData(context, isEng),
            debugShowCheckedModeBanner: false,
            //debugShowMaterialGrid: true,
            //title: "Nice Store",
            //home: AuthPage(),
            routes: {
              '/': (BuildContext cont) => _seen == null || !_seen
                  ? OnBoarding(_model,getResponseve)
                  : !_isAuthenticated ? AuthPage(getResponseve) : AllProblemsPage(_model, getResponseve, widget.screenwidth, widget.screenheight, widget.locale),
              '/home': (BuildContext cont) =>
                  !_isAuthenticated ? AuthPage(getResponseve) : AllProblemsPage(_model, getResponseve, widget.screenwidth, widget.screenheight, widget.locale),
              //'/products' : (BuildContext cont) => AllProductsPage(_model),
              //'/admin' : (BuildContext cont) => !_isAuthenticated ? AuthPage(): AllProductsPage(_model),
            },
            onGenerateRoute: (RouteSettings settings) {
              /*final List<String> pathElement = settings.name.split('/');
              if(pathElement[0] != ''){
                return null;
              }*/
              switch (settings.name) {
                case '/':
                  return CustomeRoute(
                      settings: RouteSettings(isInitialRoute: false),
                      builder: (_) {
                        return _isAuthenticated
                            ? AllProblemsPage(_model, getResponseve, widget.screenwidth, widget.screenheight, widget.locale)
                            : AuthPage(getResponseve);
                      });
                /*case '/login':
                return MaterialPageRoute(
                  builder: (_) => AuthPage());*/
                case '/home':
                  return MaterialPageRoute(
                      builder: (_) => AllProblemsPage(_model, getResponseve, widget.screenwidth, widget.screenheight, widget.locale));
                case '/problempage':
                  return CustomeRoute(builder: (_) {
                    return _isAuthenticated ? ProblemPage(_model, getResponseve, widget.screenwidth, widget.screenheight, widget.locale) : AuthPage(getResponseve);
                  });
                case '/changepassword':
                  return CustomeRoute(builder: (_) {
                    return _isAuthenticated ? ChangeUserPassword(getResponseve) : AuthPage(getResponseve);
                  });
                case '/contactdeveloper':
                  return CustomeRoute(builder: (_) {
                    return _isAuthenticated ? ContactDeveloper(getResponseve) : AuthPage(getResponseve);
                  });
              }
              /*if(!_isAuthenticated){
              return MaterialPageRoute<bool>(builder: (BuildContext cont) => AuthPage());
            }
            final List<String> pathElement = settings.name.split('/');
            if(pathElement[0] != ''){
              return null;
            }
            if(pathElement[1] == 'problempage'){
              //final String productId = pathElement[2];
              /*final Product product = _model.allProducts.firstWhere((Product produc){
                return produc.id == productId;
              });*/
              return CustomeRoute<bool>(builder: (BuildContext cont) =>
              !_isAuthenticated ? AuthPage(): ProblemPage(_model));
            }*/
            },

            onUnknownRoute: (RouteSettings settings) {
              return MaterialPageRoute(
                  builder: (BuildContext cont) =>
                      !_isAuthenticated ? AuthPage(getResponseve) : AllProblemsPage(_model, getResponseve, widget.screenwidth, widget.screenheight, widget.locale));
            },
          );
        }));
  }
}
