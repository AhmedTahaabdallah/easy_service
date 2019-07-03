import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'dart:io';
import '../models/user.dart';
import '../models/problemm.dart';
import '../models/hasproblem.dart';
//import 'dart:convert';
//import 'package:mime/mime.dart';
//import 'package:http/http.dart' as http;
//import 'package:http_parser/http_parser.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';
//import '../models/auth.dart';
import 'package:rxdart/subjects.dart';
import '../shared/global_config.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:intl/intl.dart';
//import 'package:path/path.dart';
import 'package:dio/dio.dart';

//import 'package:async/async.dart';

mixin ConnectedProblemsModel on Model {
  List<Problemm> _problems = [];
  List<User> _allUsers = [];
  List<HasProblem> _hasProblem = [];
  //List<Problemm> _proudctsUser = [];
  int _selProblemmId = 0;
  int _selProblemmIdProblemPage = 0;
  int _selProblemmIdHasProblem = 0;
  int _selProblemmIdSolveProblem = 0;
  int _selProblemmIdReserveProblem = 0;
  int _selProblemmIdDate = 0;
  String _selProblemmIdDateString = 'first';
  String _selHasProblemmIdDateString = 'first';
  User _authenticatedUser;
  bool _isLoadingAuth = false;
  bool _isLoadinProgress = false;
  bool _isLoadinProgressAllUsers = false;
  int _selAllUserId = 0;
  bool _isLoadingFetchProblems = false;
  bool _isLoadingFetchProblemsMore = false;
  bool _isLoadingFetchAllUsers = false;
  bool _isLoadingFetchAllUsersMore = false;
  int _currentPage = 1;
  int _totalPage = 1;
  int _currentPageAllUsers = 1;
  int _totalPageAllUsers = 1;
  bool _isLoadingFetchHasProblems = false;
  bool _isLoadinProgressHasProblem = false;
  bool _isLoadingFetchHasProblemsMore = false;
  int _currentPageHasProblem = 1;
  int _totalPageHasProblem = 1;
  int _selProblemmIdDateHasProblem = 0;
  String anotherUrl = '';
  String anotherUserUrl = '';
  String _userTypeProcessor = '';
  String typ = '';
  

  Map<String, int> _allDrawerCount = {
    'newproblems': 0,
    'hasproblems': 0,
    'solveproblems': 0,
    'owner': 0,
    'admin': 0,
    'user': 0,
    'client': 0,
    'new': 0
  };
}

mixin ProductsModel on ConnectedProblemsModel {
  List<Problemm> get allProblems {
    return List.from(_problems);
  }

  List<User> get allUsers {
    return List.from(_allUsers);
  }

  List<HasProblem> get allHasProblems {
    return List.from(_hasProblem);
  }

  Map<String, int> get allDrawerCount {
    return _allDrawerCount;
  }

  int get selProblemmId {
    return _selProblemmId;
  }

  int get selProblemmIdProblemPage {
    return _selProblemmIdProblemPage;
  }

  int get selProblemmIdHasProblem {
    return _selProblemmIdHasProblem;
  }

  int get selProblemmIdSolveProblem {
    return _selProblemmIdSolveProblem;
  }

  int get selProblemmIdReserveProblem {
    return _selProblemmIdReserveProblem;
  }

  int get selProblemmIdDate {
    return _selProblemmIdDate;
  }

  int get selAllUserId {
    return _selAllUserId;
  }

  String get selProblemmIdDateString {
    return _selProblemmIdDateString;
  }

  String get selHasProblemmIdDateString {
    return _selHasProblemmIdDateString;
  }

  void setProblrmIdProblemPage(int proId) {
    _selProblemmIdProblemPage = proId;
  }

  int get selProblemmIdDateHasProblem {
    return _selProblemmIdDateHasProblem;
  }

  void clearAllProblems(){
    _problems = [];
  }

  void clearAllHasProblems(){
    _hasProblem = [];
  }

  void clearAllUsers(){
    _allUsers = [];
  }


  
  String langType;
  timeago.LookupMessages  langMess;
  Locale _appLocale;
  
  void  setMyLocale(String myLocale) {
   
    String fina ;
    if(myLocale == null){
      fina = 'ar';
    } else {
      fina = myLocale;
    }
    if(fina == 'en'){
      langMess = timeago.EnMessages();
    } else{
      langMess = timeago.ArMessages();
    }
    langType = fina;
    _appLocale = Locale(fina);
    
  }
  
  Locale get appLocal => _appLocale ?? Locale("ar");

  void changeDirection() async{
    final SharedPreferences pref = await SharedPreferences.getInstance();
    if (_appLocale == Locale("ar")) {
      _appLocale = Locale("en");
      langType = 'en';
      langMess = timeago.EnMessages();      
      pref.setString('myAppLocale', 'en');
    } else {
      _appLocale = Locale('ar');
      langType = 'ar';
      langMess = timeago.ArMessages();
      pref.setString('myAppLocale', 'ar');
    }
    notifyListeners();
  }

  

  Timer _problemDateWrittenTimer;
  Timer _problemDateWrittenTimerChange;
  Map<int, String> _dateWrittenAgo = Map<int, String>();
  Map<int, String> _currentDateAgo = Map<int, String>();
  Map<int, String> _returnDateAgo = Map<int, String>();

  Map<int, String> _dateWrittenAgoDiffrent = Map<int, String>();
  Map<int, String> _currentDateAgoDiffrent = Map<int, String>();
  Map<int, String> _returnDateAgoDiffrent = Map<int, String>();
  String parseHumanDateTime(
    String dateTime,
    String currentDateTime,
  ) {
    Duration timeAgo =
        DateTime.parse(currentDateTime).difference(DateTime.parse(dateTime));
    DateTime theDiffrence = DateTime.parse(currentDateTime).subtract(timeAgo);
    timeago.setLocaleMessages(langType, langMess);
    return timeago.format(theDiffrence,
        locale: langType, clock: DateTime.parse(currentDateTime));
  }

  String parseHumanDateTimeToAddMinuts(
      String dateTime, String currentDateTime, int id, String typp) {
    String formattedDate;
    DateTime theDiffrence;
    if(typp == 'main'){
      DateTime curr = DateTime.parse(currentDateTime).add(Duration(seconds: 60));
    
      formattedDate = DateFormat('yyyy-MM-dd HH:mm:ss','en_US').format(curr);
      _currentDateAgo[id] = formattedDate;
      Duration timeAgo = curr.difference(DateTime.parse(dateTime));
      theDiffrence = DateTime.parse(formattedDate).subtract(timeAgo);
    } else if(typp == 'notmain'){
      DateTime curr = DateTime.parse(currentDateTime).add(Duration(seconds: 60));
    
      formattedDate = DateFormat('yyyy-MM-dd HH:mm:ss','en_US').format(curr);
      _currentDateAgoDiffrent[id] = formattedDate;
      Duration timeAgo = curr.difference(DateTime.parse(dateTime));
      theDiffrence = DateTime.parse(formattedDate).subtract(timeAgo);
    }
    
    timeago.setLocaleMessages(langType, langMess);
    return timeago.format(theDiffrence,
        locale: langType, clock: DateTime.parse(formattedDate));
    
  }

  void _changeDateWrittenTimer(String typp) {
    if(typp == 'main'){
      _dateWrittenAgo.forEach((dateKey, dateValue) {
        _currentDateAgo.forEach((currentKey, currentValue) {
          if (dateKey == currentKey) {
            String newDatee = parseHumanDateTimeToAddMinuts(
                dateValue, currentValue, currentKey, typp);
            _returnDateAgo[dateKey] = newDatee;
          }
        });
      });
    } else if(typp == 'notmain'){
      _dateWrittenAgoDiffrent.forEach((dateKey, dateValue) {
        _currentDateAgoDiffrent.forEach((currentKey, currentValue) {
          if (dateKey == currentKey) {
            String newDatee = parseHumanDateTimeToAddMinuts(
                dateValue, currentValue, currentKey, typp);
            _returnDateAgoDiffrent[dateKey] = newDatee;
          }
        });
      });
    }
    notifyListeners();
    startProblemDateWrittenTimer(typp);
  }

  void startProblemDateWrittenTimer(String typp) {
    _problemDateWrittenTimer =
        Timer(Duration(seconds: 60), () => _changeDateWrittenTimer(typp));
  }

  void stopProblemDateWrittenTimer() {
    _problemDateWrittenTimer.cancel();
  }

  void startProblemDateWrittenTimerChangeFirst(int problemId) {
    _selProblemmIdDateString = 'first';
    _selProblemmIdDate = problemId;
    notifyListeners();
    _problemDateWrittenTimerChange =
        Timer(Duration(seconds: 3), stopProblemDateWrittenTimerChangeFirst);
  }

  void stopProblemDateWrittenTimerChangeFirst() {
    startProblemDateWrittenTimerChangeSecond();
  }

  void startProblemDateWrittenTimerChangeSecond() {
    _selProblemmIdDateString = 'second';
    notifyListeners();
    _problemDateWrittenTimerChange =
        Timer(Duration(seconds: 3), stopProblemDateWrittenTimerChangeSecond);
  }

  void stopProblemDateWrittenTimerChangeSecond() {
    _selProblemmIdDateString = 'first';
    _selProblemmIdDate = 0;
    notifyListeners();
    _problemDateWrittenTimerChange.cancel();
  }

  Map<int, String> get dateWrittenAgo {
    return _dateWrittenAgo;
  }

  Map<int, String> get currentDateAgo {
    return _currentDateAgo;
  }

  Map<int, String> get returnDateAgo {
    return _returnDateAgo;
  }

  Map<int, String> get dateWrittenAgoDiffrent {
    return _dateWrittenAgoDiffrent;
  }

  Map<int, String> get currentDateAgoDiffrent {
    return _currentDateAgoDiffrent;
  }

  Map<int, String> get returnDateAgoDiffrent {
    return _returnDateAgoDiffrent;
  }

  Timer _hasProblemDateWrittenTimer;
  Timer _hasProblemDateWrittenTimerChange;
  Map<int, String> _dateWrittenAgoHasProblem = Map<int, String>();
  Map<int, String> _currentDateAgoHasProblem = Map<int, String>();
  Map<int, String> _returnDateAgoHasProblem = Map<int, String>();

  String parseHumanDateTimeToAddMinutsHasProblem(
      String dateTime, String currentDateTime, int id) {
    DateTime curr = DateTime.parse(currentDateTime).add(Duration(seconds: 60));
    String formattedDate = DateFormat('yyyy-MM-dd HH:mm:ss','en_US').format(curr);
    _currentDateAgoHasProblem[id] = formattedDate;
    Duration timeAgo = curr.difference(DateTime.parse(dateTime));
    DateTime theDiffrence = DateTime.parse(formattedDate).subtract(timeAgo);
    timeago.setLocaleMessages(langType, langMess);
    return timeago.format(theDiffrence,
        locale: langType, clock: DateTime.parse(formattedDate));
  }

  void _changeDateWrittenTimerHasProblem() {
    _dateWrittenAgoHasProblem.forEach((dateKey, dateValue) {
      _currentDateAgoHasProblem.forEach((currentKey, currentValue) {
        if (dateKey == currentKey) {
          String newDatee = parseHumanDateTimeToAddMinutsHasProblem(
              dateValue, currentValue, currentKey);
          _returnDateAgoHasProblem[dateKey] = newDatee;
        }
      });
    });
    notifyListeners();
    startHasProblemDateWrittenTimer();
  }

  void startHasProblemDateWrittenTimer() {
    _hasProblemDateWrittenTimer =
        Timer(Duration(seconds: 60), _changeDateWrittenTimerHasProblem);
  }

  void stopHasProblemDateWrittenTimer() {
    _hasProblemDateWrittenTimer.cancel();
  }

  void startHasProblemDateWrittenTimerChangeFirst(int problemId) {
    _selHasProblemmIdDateString = 'first';
    _selProblemmIdDateHasProblem = problemId;
    notifyListeners();
    _hasProblemDateWrittenTimerChange =
        Timer(Duration(seconds: 3), stopHasProblemDateWrittenTimerChangeFirst);
  }

  void stopHasProblemDateWrittenTimerChangeFirst() {
    startHasProblemDateWrittenTimerChangeSecond();
  }

  void startHasProblemDateWrittenTimerChangeSecond() {
    _selHasProblemmIdDateString = 'second';
    notifyListeners();
    _hasProblemDateWrittenTimerChange =
        Timer(Duration(seconds: 3), stopHasProblemDateWrittenTimerChangeSecond);
  }

  void stopHasProblemDateWrittenTimerChangeSecond() {
    _selHasProblemmIdDateString = 'first';
    _selProblemmIdDateHasProblem = 0;
    notifyListeners();
    _hasProblemDateWrittenTimerChange.cancel();
    
  }

  Map<int, String> get dateWrittenAgoHasProblem {
    return _dateWrittenAgoHasProblem;
  }

  Map<int, String> get currentDateAgoHasProblem {
    return _currentDateAgoHasProblem;
  }

  Map<int, String> get returnDateAgoHasProblem {
    return _returnDateAgoHasProblem;
  }
  /*bool _showFavorets = false;

  List<Product> get allProducts {
    return List.from(_proudcts);
  }

  List<Product> get allProductsUser {
    return List.from(_proudctsUser);
  }

  List<Product> get displayedProducts {
    if (_showFavorets) {
      return _proudcts.where((Product product) => product.isFavorits).toList();
    }
    return List.from(_proudcts);
  }

  String get selectProductId {
    return _selProductId;
  }

  Product get selectedProduct {
    if (selectProductId == null) {
      return null;
    }
    return _proudcts.firstWhere((Product product) {
      return product.id == _selProductId;
    });
  }

  bool get displayFavoretsOnly {
    return _showFavorets;
  }

  int get selectProductIndex {
    return _proudcts.indexWhere((Product product) {
      return product.id == _selProductId;
    });
  }

  Product get oneProduct {
    return _oneProduct;
  }*/

  Future<Map<String, dynamic>> addProblemm(String descrption) async {
    try{
    _isLoadinProgress = true;
    notifyListeners();
    final Map<String, dynamic> addProblemData = {
      'description': descrption,
      'token': _authenticatedUser.token
    };
    Response response;
    response = await Dio().post(BASEURL + ADDPROBLEM, data: addProblemData
        /*body: json.encode(addProblemData),
      headers: {
        //'Content-Type': 'application/json'
        HttpHeaders.contentTypeHeader: 'application/json'
      },*/
        );
    if (response.statusCode != 200 && response.statusCode != 201) {
      _isLoadinProgress = false;
      notifyListeners();
      return {};
    }
    final Map<String, dynamic> responseData = response.data;

    _isLoadinProgress = false;
    notifyListeners();
    return {
      'status': responseData['data']['status'],
      'statuscode': responseData['data']['statuscode']
    };
    }catch(err){
      _isLoadinProgress = false;
      notifyListeners();
      return {
        'statuscode': '0'
      };
    }
  }

  Future<Map<String, dynamic>> deleteProblemm(int problemId) async {
    try{
    _selProblemmId = problemId;
    _isLoadinProgress = true;
    notifyListeners();
    final Map<String, dynamic> deleteProblemData = {
      'token': _authenticatedUser.token
    };
    Response response;
    response = await Dio().post(BASEURL + DELETEPROBLEM + problemId.toString(),
        data: deleteProblemData
        /*body: json.encode(addProblemData),
      headers: {
        //'Content-Type': 'application/json'
        HttpHeaders.contentTypeHeader: 'application/json'
      },*/
        );
    if (response.statusCode != 200 && response.statusCode != 201) {
      _selProblemmId = 0;
      _isLoadinProgress = false;
      notifyListeners();
      return {};
    }
    final Map<String, dynamic> responseData = response.data;

    _problems.removeWhere((prblemm) => prblemm.id == problemId);
    _selProblemmId = 0;
    _isLoadinProgress = false;
    notifyListeners();
    return {
      'status': responseData['data']['status'],
      'statuscode': responseData['data']['statuscode']
    };
    } catch(error){
      _selProblemmId = 0;
      _isLoadinProgress = false;
      notifyListeners();
      return {
        'statuscode': '0'
      };
    }
  }

  Future<Map<String, dynamic>> hasProblemm(int problemId, int index) async {
    try{
    _selProblemmIdHasProblem = problemId;
    _isLoadinProgress = true;
    notifyListeners();
    final Map<String, dynamic> hasProblemData = {
      'token': _authenticatedUser.token
    };
    Response response;
    response = await Dio().post(BASEURL + HASPROBLEM + problemId.toString(),
        data: hasProblemData
        /*body: json.encode(addProblemData),
      headers: {
        //'Content-Type': 'application/json'
        HttpHeaders.contentTypeHeader: 'application/json'
      },*/
        );
    if (response.statusCode != 200 && response.statusCode != 201) {
      _selProblemmIdHasProblem = 0;
      _isLoadinProgress = false;
      notifyListeners();
      return {};
    }
    final Map<String, dynamic> responseData = response.data;

    //_problems.removeWhere((prblemm) => prblemm.id == problemId);
    if (responseData['data']['statuscode'] == '1') {
      Problemm oldProblem = _problems[index];
      int id = oldProblem.id;
      String authoraddress = oldProblem.authoraddress;
      String authoravater = oldProblem.authoravater;
      String authormobilenumber = oldProblem.authormobilenumber;
      String authorname = oldProblem.authorname;
      String bookauthoravater = oldProblem.bookauthoravater;
      String bookauthorname = oldProblem.bookauthorname;
      int bookuserId = oldProblem.bookuserId;
      String currentdatetime = oldProblem.currentdatetime;
      String dateBook = oldProblem.dateBook;
      String dateWritten = oldProblem.dateWritten;
      String description = oldProblem.description;
      String requestuseravater = oldProblem.requestuseravater;
      String requestusername = oldProblem.requestusername;
      int requestusertypeid = oldProblem.requestusertypeid;
      String requestusertypename = oldProblem.requestusertypename;
      String solved = oldProblem.solved;
      int userId = oldProblem.userId;
      int hasproblemcommentcount = oldProblem.hasproblemcommentcount;
      Problemm newProblemm = Problemm(
          id: id,
          authoraddress: authoraddress,
          authoravater: authoravater,
          authormobilenumber: authormobilenumber,
          authorname: authorname,
          bookauthoravater: bookauthoravater,
          bookauthorname: bookauthorname,
          bookuserId: bookuserId,
          currentdatetime: currentdatetime,
          dateBook: dateBook,
          dateWritten: dateWritten,
          description: description,
          requestuseravater: requestuseravater,
          requestusername: requestusername,
          requestusertypeid: requestusertypeid,
          requestusertypename: requestusertypename,
          solved: solved,
          userId: userId,
          ishasproblems: 'true',
          hasproblemcommentcount: hasproblemcommentcount);
      _problems[index] = newProblemm;
    }
    _selProblemmIdHasProblem = 0;
    _isLoadinProgress = false;
    notifyListeners();
    return {
      'status': responseData['data']['status'],
      'statuscode': responseData['data']['statuscode']
    };
    } catch(err){
      _selProblemmIdHasProblem = 0;
      _isLoadinProgress = false;
      notifyListeners();
      return {
        'statuscode': '0'
      };
    }
  }

  Future<Map<String, dynamic>> removeHasProblemm(
      int problemId, int index) async {
    try{
    _selProblemmIdHasProblem = problemId;
    _isLoadinProgress = true;
    notifyListeners();
    final Map<String, dynamic> removeHasProblemData = {
      'token': _authenticatedUser.token
    };
    Response response;
    response = await Dio().post(
        BASEURL + REMOVEHASPROBLEM + problemId.toString(),
        data: removeHasProblemData
        /*body: json.encode(addProblemData),
      headers: {
        //'Content-Type': 'application/json'
        HttpHeaders.contentTypeHeader: 'application/json'
      },*/
        );
    if (response.statusCode != 200 && response.statusCode != 201) {
      _selProblemmIdHasProblem = 0;
      _isLoadinProgress = false;
      notifyListeners();
      return {};
    }
    final Map<String, dynamic> responseData = response.data;

    //_problems.removeWhere((prblemm) => prblemm.id == problemId);
    if (responseData['data']['statuscode'] == '1') {
      Problemm oldProblem = _problems[index];
      int id = oldProblem.id;
      String authoraddress = oldProblem.authoraddress;
      String authoravater = oldProblem.authoravater;
      String authormobilenumber = oldProblem.authormobilenumber;
      String authorname = oldProblem.authorname;
      String bookauthoravater = oldProblem.bookauthoravater;
      String bookauthorname = oldProblem.bookauthorname;
      int bookuserId = oldProblem.bookuserId;
      String currentdatetime = oldProblem.currentdatetime;
      String dateBook = oldProblem.dateBook;
      String dateWritten = oldProblem.dateWritten;
      String description = oldProblem.description;
      String requestuseravater = oldProblem.requestuseravater;
      String requestusername = oldProblem.requestusername;
      int requestusertypeid = oldProblem.requestusertypeid;
      String requestusertypename = oldProblem.requestusertypename;
      String solved = oldProblem.solved;
      int userId = oldProblem.userId;
      int hasproblemcommentcount = oldProblem.hasproblemcommentcount;
      Problemm newProblemm = Problemm(
          id: id,
          authoraddress: authoraddress,
          authoravater: authoravater,
          authormobilenumber: authormobilenumber,
          authorname: authorname,
          bookauthoravater: bookauthoravater,
          bookauthorname: bookauthorname,
          bookuserId: bookuserId,
          currentdatetime: currentdatetime,
          dateBook: dateBook,
          dateWritten: dateWritten,
          description: description,
          requestuseravater: requestuseravater,
          requestusername: requestusername,
          requestusertypeid: requestusertypeid,
          requestusertypename: requestusertypename,
          solved: solved,
          userId: userId,
          ishasproblems: 'false',
          hasproblemcommentcount: hasproblemcommentcount);
      _problems[index] = newProblemm;
    }
    _selProblemmIdHasProblem = 0;
    _isLoadinProgress = false;
    notifyListeners();
    return {
      'status': responseData['data']['status'],
      'statuscode': responseData['data']['statuscode']
    };
    } catch(err){
      _selProblemmIdHasProblem = 0;
      _isLoadinProgress = false;
      notifyListeners();
      return {
        'statuscode': '0'
      };
    }
  }

  Future<Map<String, dynamic>> solveProblemm(int problemId, int index) async {
    try{
    _selProblemmIdSolveProblem = problemId;
    _isLoadinProgress = true;
    notifyListeners();
    final Map<String, dynamic> solveProblemData = {
      'token': _authenticatedUser.token
    };
    Response response;
    response = await Dio().post(BASEURL + SOLVEPROBLEM + problemId.toString(),
        data: solveProblemData
        /*body: json.encode(addProblemData),
      headers: {
        //'Content-Type': 'application/json'
        HttpHeaders.contentTypeHeader: 'application/json'
      },*/
        );
    if (response.statusCode != 200 && response.statusCode != 201) {
      _selProblemmIdSolveProblem = 0;
      _isLoadinProgress = false;
      notifyListeners();
      return {};
    }
    final Map<String, dynamic> responseData = response.data;

    //_problems.removeWhere((prblemm) => prblemm.id == problemId);
    if (responseData['data']['statuscode'] == '1') {
      Problemm oldProblem = _problems[index];
      int id = oldProblem.id;
      String authoraddress = oldProblem.authoraddress;
      String authoravater = oldProblem.authoravater;
      String authormobilenumber = oldProblem.authormobilenumber;
      String authorname = oldProblem.authorname;
      String bookauthoravater = oldProblem.bookauthoravater;
      String bookauthorname = oldProblem.bookauthorname;
      int bookuserId = oldProblem.bookuserId;
      String currentdatetime = oldProblem.currentdatetime;
      String dateBook = oldProblem.dateBook;
      String dateWritten = oldProblem.dateWritten;
      String description = oldProblem.description;
      String requestuseravater = oldProblem.requestuseravater;
      String requestusername = oldProblem.requestusername;
      int requestusertypeid = oldProblem.requestusertypeid;
      String requestusertypename = oldProblem.requestusertypename;
      String ishasproblems = oldProblem.ishasproblems;
      int userId = oldProblem.userId;
      int hasproblemcommentcount = oldProblem.hasproblemcommentcount;
      Problemm newProblemm = Problemm(
          id: id,
          authoraddress: authoraddress,
          authoravater: authoravater,
          authormobilenumber: authormobilenumber,
          authorname: authorname,
          bookauthoravater: bookauthoravater,
          bookauthorname: bookauthorname,
          bookuserId: bookuserId,
          currentdatetime: currentdatetime,
          dateBook: dateBook,
          dateWritten: dateWritten,
          description: description,
          requestuseravater: requestuseravater,
          requestusername: requestusername,
          requestusertypeid: requestusertypeid,
          requestusertypename: requestusertypename,
          solved: 'true',
          userId: userId,
          ishasproblems: ishasproblems,
          hasproblemcommentcount: hasproblemcommentcount);
      _problems[index] = newProblemm;
    }
    _selProblemmIdSolveProblem = 0;
    _isLoadinProgress = false;
    notifyListeners();
    return {
      'status': responseData['data']['status'],
      'statuscode': responseData['data']['statuscode']
    };
    } catch(err){
      _selProblemmIdSolveProblem = 0;
      _isLoadinProgress = false;
      notifyListeners();
      return {
        'statuscode': '0'
      };
    }
  }

  Future<Map<String, dynamic>> reserveProblemm(
      int problemId, String reserveDate, int index) async {
    try{
    _selProblemmIdReserveProblem = problemId;
    _isLoadinProgress = true;
    notifyListeners();
    final Map<String, dynamic> reserveProblemData = {
      'token': _authenticatedUser.token,
      'date_book': reserveDate,
    };
    Response response;
    response = await Dio().post(BASEURL + RESERVEPROBLEM + problemId.toString(),
        data: reserveProblemData
        /*body: json.encode(addProblemData),
      headers: {
        //'Content-Type': 'application/json'
        HttpHeaders.contentTypeHeader: 'application/json'
      },*/
        );
    if (response.statusCode != 200 && response.statusCode != 201) {
      _selProblemmIdReserveProblem = 0;
      _isLoadinProgress = false;
      notifyListeners();
      return {};
    }
    final Map<String, dynamic> responseData = response.data;

    //_problems.removeWhere((prblemm) => prblemm.id == problemId);
    if (responseData['data']['statuscode'] == '1') {
      Problemm oldProblem = _problems[index];
      int id = oldProblem.id;
      String authoraddress = oldProblem.authoraddress;
      String authoravater = oldProblem.authoravater;
      String authormobilenumber = oldProblem.authormobilenumber;
      String authorname = oldProblem.authorname;
      String bookauthoravater = _authenticatedUser.avater;
      String bookauthorname = _authenticatedUser.userName;
      int bookuserId = _authenticatedUser.id;
      String currentdatetime = oldProblem.currentdatetime;
      String dateBook = reserveDate;
      String dateWritten = oldProblem.dateWritten;
      String description = oldProblem.description;
      String requestuseravater = oldProblem.requestuseravater;
      String requestusername = oldProblem.requestusername;
      int requestusertypeid = oldProblem.requestusertypeid;
      String requestusertypename = oldProblem.requestusertypename;
      String ishasproblems = oldProblem.ishasproblems;
      String solved = oldProblem.solved;
      int userId = oldProblem.userId;
      int hasproblemcommentcount = oldProblem.hasproblemcommentcount;
      Problemm newProblemm = Problemm(
          id: id,
          authoraddress: authoraddress,
          authoravater: authoravater,
          authormobilenumber: authormobilenumber,
          authorname: authorname,
          bookauthoravater: bookauthoravater,
          bookauthorname: bookauthorname,
          bookuserId: bookuserId,
          currentdatetime: currentdatetime,
          dateBook: dateBook,
          dateWritten: dateWritten,
          description: description,
          requestuseravater: requestuseravater,
          requestusername: requestusername,
          requestusertypeid: requestusertypeid,
          requestusertypename: requestusertypename,
          solved: solved,
          userId: userId,
          ishasproblems: ishasproblems,
          hasproblemcommentcount: hasproblemcommentcount);
      _problems[index] = newProblemm;
    }
    _selProblemmIdReserveProblem = 0;
    _isLoadinProgress = false;
    notifyListeners();
    return {
      'status': responseData['data']['status'],
      'statuscode': responseData['data']['statuscode']
    };
    } catch(err){
      _selProblemmIdReserveProblem = 0;
      _isLoadinProgress = false;
      notifyListeners();
      return {
        'statuscode': '0'
      };
    }
  }

  Future<Null> fetchAllProblems({String reload = 'true'}) async {
    if (_isLoadinProgress || _selProblemmIdDate != 0) {
      return;
    }
    try {
      final SharedPreferences pref = await SharedPreferences.getInstance();
      _isLoadingFetchProblems = true;
      _returnDateAgo = {};
      _dateWrittenAgo = {};
      _currentDateAgo = {};
      _problems = [];
      if (reload == 'true') {
        stopProblemDateWrittenTimer();
      }
      notifyListeners();
      //try{

      final Response responseAllDrawerCount = await Dio().get(
        BASEURL + ALLDRAWERCOUNT + "${_authenticatedUser.token}",
        /*headers: {
        HttpHeaders.contentTypeHeader: 'application/json'
      },*/
      );
      final Map<String, dynamic> allDrawerCountData =
          responseAllDrawerCount.data;
      _allDrawerCount['newproblems'] =
          allDrawerCountData['data']['newproblems'];
      _allDrawerCount['hasproblems'] =
          allDrawerCountData['data']['hasproblems'];
      _allDrawerCount['solveproblems'] =
          allDrawerCountData['data']['solveproblems'];
      _allDrawerCount['owner'] = allDrawerCountData['data']['owner'];
      _allDrawerCount['admin'] = allDrawerCountData['data']['admin'];
      _allDrawerCount['user'] = allDrawerCountData['data']['user'];
      _allDrawerCount['client'] = allDrawerCountData['data']['client'];
      _allDrawerCount['new'] = allDrawerCountData['data']['new'];
      notifyListeners();
      
      final Response response = await Dio().get(
        BASEURL + GETALLPROBLEMS + "${_authenticatedUser.token}",
        /*headers: {
        //HttpHeaders.authorizationHeader: "bearer ${_authenticatedUser.token}",
        HttpHeaders.contentTypeHeader: 'application/json'
        //'Content-Type': 'application/json',
      },*/
      );
      final List<Problemm> fetchListProduct = [];
      final Map<String, dynamic> problemmListData = response.data;
      if (problemmListData['data'].length == 0) {
        final Response response2 = await Dio().get(
          BASEURL + GETUSERINFO + "${_authenticatedUser.token}",
          //headers: {HttpHeaders.contentTypeHeader: 'application/json'},
        );
        final Map<String, dynamic> problemmListData2 = response2.data;
        //if(problemmListData2.containsKey('userstype_id')){
        pref.setInt("userstype_id", problemmListData2['data']['userstype_id']);
        int userId = _authenticatedUser.id;
        String userTokken = _authenticatedUser.token;
        String userTypeName = _authenticatedUser.userTypeName;
        _authenticatedUser = User(
            id: userId,
            token: userTokken,
            userName: problemmListData2['data']['name'],
            avater: problemmListData2['data']['avater'],
            userstypeId: problemmListData2['data']['userstype_id'],
            mobileNumber: problemmListData2['data']['mobile_number'],
            address: problemmListData2['data']['address'],
            userTypeName: userTypeName);
        //}
        //stopProblemDateWrittenTimer();
        print('zero : ' +_authenticatedUser.avater);
        if (reload == 'true') {
          stopProblemDateWrittenTimer();
        }
        _isLoadingFetchProblems = false;
        notifyListeners();
        return;
      } else if (!problemmListData.containsKey('meta')) {
        /*if(problemmListData['data']['requestusertypeid'] != null) {
            pref.setInt("userstype_id", problemmListData['data']['requestusertypeid']);
          } */
        pref.setInt(
            "userstype_id", problemmListData['data']['requestusertypeid']);
        int userId = _authenticatedUser.id;
        String userTokken = _authenticatedUser.token;
        String userTypeName = _authenticatedUser.userTypeName;
        /*String userName = _authenticatedUser.userName;
        String userAvater = _authenticatedUser.avater;
        String mobile_number = _authenticatedUser.mobile_number;
        String address = _authenticatedUser.address;*/
        _authenticatedUser = User(
            id: userId,
            token: userTokken,
            userName: problemmListData['data']['requestusername'],
            avater: problemmListData['data']['requestuseravater'],
            mobileNumber: problemmListData['data']['requestusermobile'],
            address: problemmListData['data']['requestuseradress'],
            userstypeId: problemmListData['data']['requestusertypeid'],
            userTypeName: userTypeName);
        //stopProblemDateWrittenTimer();
        //print('mate ' + _authenticatedUser.avater);
        if (reload == 'true') {
          stopProblemDateWrittenTimer();
          _returnDateAgo = {};
          _dateWrittenAgo = {};
          _currentDateAgo = {};
        }
        _isLoadingFetchProblems = false;
        notifyListeners();
        return;
      }
      if(typ == 'differentproblems'){
        stopProblemDateWrittenTimer();
      }
      for (int i = 0; i < problemmListData['data'].length; i++) {
        final Problemm problemm = Problemm(
          id: problemmListData['data'][i]['id'],
          description: problemmListData['data'][i]['description'],
          dateWritten: problemmListData['data'][i]['date_written'],
          currentdatetime: problemmListData['data'][i]['currentdatetime'],
          userId: problemmListData['data'][i]['user_id'],
          authorname: problemmListData['data'][i]['authorname'],
          authoravater: problemmListData['data'][i]['authoravater'],
          solved: problemmListData['data'][i]['solved'],
          ishasproblems: problemmListData['data'][i]['ishasproblems'],
          bookuserId: problemmListData['data'][i]['bookuser_id'],
          bookauthorname: problemmListData['data'][i]['bookauthorname'],
          bookauthoravater: problemmListData['data'][i]['bookauthoravater'],
          dateBook: problemmListData['data'][i]['date_book'],
          requestusertypeid: problemmListData['data'][i]['requestusertypeid'],
          requestusertypename: problemmListData['data'][i]
              ['requestusertypename'],
          authormobilenumber: problemmListData['data'][i]['authormobilenumber'],
          authoraddress: problemmListData['data'][i]['authoraddress'],
          requestusername: problemmListData['data'][i]['requestusername'],
          requestuseravater: problemmListData['data'][i]['requestuseravater'],
          hasproblemcommentcount: problemmListData['data'][i]
              ['hasproblemcommentcount'],
        );
        fetchListProduct.add(problemm);
        int ne = i + 1;
        if (ne == problemmListData['data'].length) {
          int userId = _authenticatedUser.id;
          String userTokken = _authenticatedUser.token;
          //String mobileNumber = _authenticatedUser.mobileNumber;
          //String address = _authenticatedUser.address;
          _authenticatedUser = User(
            id: userId,
            token: userTokken,
            userName: problemmListData['data'][i]['requestusername'],
            avater: problemmListData['data'][i]['requestuseravater'],
            userstypeId: problemmListData['data'][i]['requestusertypeid'],
            userTypeName: problemmListData['data'][i]['requestusertypename'],
            mobileNumber: problemmListData['data'][i]['requestusermobile_number'],
            address: problemmListData['data'][i]['requestuseraddress'],
          );

          pref.setInt("userid", userId);
          pref.setString("token", userTokken);
          pref.setString(
              "userName", problemmListData['data'][i]['requestusername']);
          pref.setString(
              "userAvater", problemmListData['data'][i]['requestuseravater']);
          pref.setInt(
              "userstype_id", problemmListData['data'][i]['requestusertypeid']);
          pref.setString("userTypeName",
              problemmListData['data'][i]['requestusertypename']);
        }

        _currentDateAgo[problemmListData['data'][i]['id']] =
            problemmListData['data'][i]['currentdatetime'];
        _dateWrittenAgo[problemmListData['data'][i]['id']] =
            problemmListData['data'][i]['date_written'];
        String daWritten = parseHumanDateTime(
            problemmListData['data'][i]['date_written'],
            problemmListData['data'][i]['currentdatetime']);
        _returnDateAgo[problemmListData['data'][i]['id']] = daWritten;
        //print(problemmListData['data'][i]['currentdatetime']);
      }

      _problems = fetchListProduct;
      _currentPage = problemmListData['meta']['current_page'];
      _totalPage = problemmListData['meta']['last_page'];
      startProblemDateWrittenTimer('main');
      _isLoadingFetchProblems = false;
      notifyListeners();
      _selProblemmId = 0;
    } catch (err) {
      _isLoadingFetchProblems = false;
      notifyListeners();
      _selProblemmId = 0;
    }
  }

  Future<Null> fetchMoreProblems() async {
    try{
    _isLoadingFetchProblemsMore = true;
    notifyListeners();
    if (_currentPage >= _totalPage) {
      _isLoadingFetchProblemsMore = false;
      notifyListeners();
      return;
    }
    //try{
    final Response responseAllDrawerCount = await Dio().get(
      BASEURL + ALLDRAWERCOUNT + "${_authenticatedUser.token}",
      /*headers: {
        HttpHeaders.contentTypeHeader: 'application/json'
      },*/
    );
    final Map<String, dynamic> allDrawerCountData = responseAllDrawerCount.data;
    _allDrawerCount['newproblems'] = allDrawerCountData['data']['newproblems'];
    _allDrawerCount['hasproblems'] = allDrawerCountData['data']['hasproblems'];
    _allDrawerCount['solveproblems'] =
        allDrawerCountData['data']['solveproblems'];
    _allDrawerCount['owner'] = allDrawerCountData['data']['owner'];
    _allDrawerCount['admin'] = allDrawerCountData['data']['admin'];
    _allDrawerCount['user'] = allDrawerCountData['data']['user'];
    _allDrawerCount['client'] = allDrawerCountData['data']['client'];
    _allDrawerCount['new'] = allDrawerCountData['data']['new'];
    notifyListeners();

    final Response response = await Dio().get(
      BASEURL +
          GETALLPROBLEMS +
          "${_authenticatedUser.token}?page=" +
          (_currentPage + 1).toString(),
      /*headers: {
        //HttpHeaders.authorizationHeader: _authenticatedUser.token,
        HttpHeaders.contentTypeHeader: 'application/json'
        //'Content-Type': 'application/json',
      },*/
    );

    final Map<String, dynamic> problemmListData = response.data;
    if (problemmListData['data'].length == 0) {
      _isLoadingFetchProblemsMore = false;
      notifyListeners();
      return;
    }
    for (int i = 0; i < problemmListData['data'].length; i++) {
      final Problemm problemm = Problemm(
        id: problemmListData['data'][i]['id'],
        description: problemmListData['data'][i]['description'],
        dateWritten: problemmListData['data'][i]['date_written'],
        currentdatetime: problemmListData['data'][i]['currentdatetime'],
        userId: problemmListData['data'][i]['user_id'],
        authorname: problemmListData['data'][i]['authorname'],
        authoravater: problemmListData['data'][i]['authoravater'],
        solved: problemmListData['data'][i]['solved'],
        ishasproblems: problemmListData['data'][i]['ishasproblems'],
        bookuserId: problemmListData['data'][i]['bookuser_id'],
        bookauthorname: problemmListData['data'][i]['bookauthorname'],
        bookauthoravater: problemmListData['data'][i]['bookauthoravater'],
        dateBook: problemmListData['data'][i]['date_book'],
        requestusertypeid: problemmListData['data'][i]['requestusertypeid'],
        requestusertypename: problemmListData['data'][i]['requestusertypename'],
        authormobilenumber: problemmListData['data'][i]['authormobilenumber'],
        authoraddress: problemmListData['data'][i]['authoraddress'],
        requestusername: problemmListData['data'][i]['requestusername'],
        requestuseravater: problemmListData['data'][i]['requestuseravater'],
        hasproblemcommentcount: problemmListData['data'][i]
            ['hasproblemcommentcount'],
      );
      _problems.add(problemm);

      _currentDateAgo[problemmListData['data'][i]['id']] =
          problemmListData['data'][i]['currentdatetime'];
      _dateWrittenAgo[problemmListData['data'][i]['id']] =
          problemmListData['data'][i]['date_written'];
      String daWritten = parseHumanDateTime(
          problemmListData['data'][i]['date_written'],
          problemmListData['data'][i]['currentdatetime']);
      _returnDateAgo[problemmListData['data'][i]['id']] = daWritten;
    }
    _isLoadingFetchProblemsMore = false;
    _currentPage++;
    notifyListeners();
    _selProblemmId = null;
    } catch(err){
      _isLoadingFetchProblemsMore = false;
      notifyListeners();
      _selProblemmId = null;
    }
  }

  Future<Null> fetchDifferentProblems(
      {String opraetorType, String reload = 'true'}) async {
    if (_isLoadinProgress || _selProblemmIdDate != 0) {
      return;
    }
    try{
    _isLoadingFetchProblems = true;
    _returnDateAgoDiffrent = {};
    _dateWrittenAgoDiffrent = {};
    _currentDateAgoDiffrent = {};
    _problems = [];
    if (reload == 'true') {
      stopProblemDateWrittenTimer();
    }
    notifyListeners();
    //try{
    //String anotherUrl = '';
    if (opraetorType == 'new') {
      anotherUrl = NEWPROBLEMOPRATOR;
    } else if (opraetorType == 'hasproblem') {
      anotherUrl = HASPROBLEMOPRATOR;
    } else if (opraetorType == 'solved') {
      anotherUrl = SOLVEDPROBLEMOPRATOR;
    }
    final Response response = await Dio().get(
      BASEURL + anotherUrl + "${_authenticatedUser.token}",
      /*headers: {
        //HttpHeaders.authorizationHeader: "bearer ${_authenticatedUser.token}",
        HttpHeaders.contentTypeHeader: 'application/json'
        //'Content-Type': 'application/json',
      },*/
    );
    final List<Problemm> fetchListProduct = [];
    final Map<String, dynamic> problemmListData = response.data;
    if (problemmListData['data'].length == 0) {
      //stopProblemDateWrittenTimer();
      if (reload == 'true') {
        stopProblemDateWrittenTimer();
      }
      _isLoadingFetchProblems = false;
      notifyListeners();
      return;
    } else if (!problemmListData.containsKey('meta')) {
      //stopProblemDateWrittenTimer();
      if (reload == 'true') {
        stopProblemDateWrittenTimer();
      }
      _isLoadingFetchProblems = false;
      notifyListeners();
      return;
    }
    for (int i = 0; i < problemmListData['data'].length; i++) {
      final Problemm problemm = Problemm(
        id: problemmListData['data'][i]['id'],
        description: problemmListData['data'][i]['description'],
        dateWritten: problemmListData['data'][i]['date_written'],
        currentdatetime: problemmListData['data'][i]['currentdatetime'],
        userId: problemmListData['data'][i]['user_id'],
        authorname: problemmListData['data'][i]['authorname'],
        authoravater: problemmListData['data'][i]['authoravater'],
        solved: problemmListData['data'][i]['solved'],
        ishasproblems: problemmListData['data'][i]['ishasproblems'],
        bookuserId: problemmListData['data'][i]['bookuser_id'],
        bookauthorname: problemmListData['data'][i]['bookauthorname'],
        bookauthoravater: problemmListData['data'][i]['bookauthoravater'],
        dateBook: problemmListData['data'][i]['date_book'],
        requestusertypeid: problemmListData['data'][i]['requestusertypeid'],
        requestusertypename: problemmListData['data'][i]['requestusertypename'],
        authormobilenumber: problemmListData['data'][i]['authormobilenumber'],
        authoraddress: problemmListData['data'][i]['authoraddress'],
        requestusername: problemmListData['data'][i]['requestusername'],
        requestuseravater: problemmListData['data'][i]['requestuseravater'],
        hasproblemcommentcount: problemmListData['data'][i]
            ['hasproblemcommentcount'],
      );
      fetchListProduct.add(problemm);
      _currentDateAgoDiffrent[problemmListData['data'][i]['id']] =
          problemmListData['data'][i]['currentdatetime'];
      _dateWrittenAgoDiffrent[problemmListData['data'][i]['id']] =
          problemmListData['data'][i]['date_written'];
      String daWritten = parseHumanDateTime(
          problemmListData['data'][i]['date_written'],
          problemmListData['data'][i]['currentdatetime']);
      _returnDateAgoDiffrent[problemmListData['data'][i]['id']] = daWritten;
      //print(problemmListData['data'][i]['currentdatetime']);
    }

    _problems = fetchListProduct;
    _currentPage = problemmListData['meta']['current_page'];
    _totalPage = problemmListData['meta']['last_page'];
    startProblemDateWrittenTimer('notmain');
    _isLoadingFetchProblems = false;
    _selProblemmId = 0;
    typ = 'differentproblems';
    notifyListeners();
    } catch(err){
      _isLoadingFetchProblems = false;
      _selProblemmId = 0;
      notifyListeners();    
    }
  }

  Future<Null> fetchMoreDifferentProblems(String opraetorType) async {
    try{
    _isLoadingFetchProblemsMore = true;
    notifyListeners();
    if (_currentPage >= _totalPage) {
      _isLoadingFetchProblemsMore = false;
      notifyListeners();
      return;
    }
    //try{
    //print(anotherUrl);
    /*if(opraetorType == 'new'){
      anotherUrl = NEWPROBLEMOPRATOR;
    } else if(opraetorType == 'hasproblem'){
      anotherUrl = HASPROBLEMOPRATOR;
    } else if(opraetorType == 'solved'){
      anotherUrl = SOLVEDPROBLEMOPRATOR;
    }*/
    final Response response = await Dio().get(
      BASEURL +
          anotherUrl +
          "${_authenticatedUser.token}?page=" +
          (_currentPage + 1).toString(),
      /*headers: {
        //HttpHeaders.authorizationHeader: _authenticatedUser.token,
        HttpHeaders.contentTypeHeader: 'application/json'
        //'Content-Type': 'application/json',
      },*/
    );

    final Map<String, dynamic> problemmListData = response.data;
    if (problemmListData['data'].length == 0) {
      _isLoadingFetchProblemsMore = false;
      notifyListeners();
      return;
    }
    for (int i = 0; i < problemmListData['data'].length; i++) {
      final Problemm problemm = Problemm(
        id: problemmListData['data'][i]['id'],
        description: problemmListData['data'][i]['description'],
        dateWritten: problemmListData['data'][i]['date_written'],
        currentdatetime: problemmListData['data'][i]['currentdatetime'],
        userId: problemmListData['data'][i]['user_id'],
        authorname: problemmListData['data'][i]['authorname'],
        authoravater: problemmListData['data'][i]['authoravater'],
        solved: problemmListData['data'][i]['solved'],
        ishasproblems: problemmListData['data'][i]['ishasproblems'],
        bookuserId: problemmListData['data'][i]['bookuser_id'],
        bookauthorname: problemmListData['data'][i]['bookauthorname'],
        bookauthoravater: problemmListData['data'][i]['bookauthoravater'],
        dateBook: problemmListData['data'][i]['date_book'],
        requestusertypeid: problemmListData['data'][i]['requestusertypeid'],
        requestusertypename: problemmListData['data'][i]['requestusertypename'],
        authormobilenumber: problemmListData['data'][i]['authormobilenumber'],
        authoraddress: problemmListData['data'][i]['authoraddress'],
        requestusername: problemmListData['data'][i]['requestusername'],
        requestuseravater: problemmListData['data'][i]['requestuseravater'],
        hasproblemcommentcount: problemmListData['data'][i]
            ['hasproblemcommentcount'],
      );
      _problems.add(problemm);

      _currentDateAgoDiffrent[problemmListData['data'][i]['id']] =
          problemmListData['data'][i]['currentdatetime'];
      _dateWrittenAgoDiffrent[problemmListData['data'][i]['id']] =
          problemmListData['data'][i]['date_written'];
      String daWritten = parseHumanDateTime(
          problemmListData['data'][i]['date_written'],
          problemmListData['data'][i]['currentdatetime']);
      _returnDateAgoDiffrent[problemmListData['data'][i]['id']] = daWritten;
    }
    _isLoadingFetchProblemsMore = false;
    _currentPage++;
    _selProblemmId = 0;
    notifyListeners();
    
    } catch(err){
      _isLoadingFetchProblemsMore = false;
      _selProblemmId = 0;
      notifyListeners();
    }
  }

  void resetAllHasProblem() {
    _hasProblem = [];
  }

  void resetAllProblem() {
    _problems = [];
  }

  void resetAllUsers() {
    _allUsers = [];
  }

  Future<Null> fetchAllHasProblems(int problemId, Problemm pro,
      {String reload = 'true'}) async {
    if (_isLoadinProgressHasProblem || _selProblemmIdDateHasProblem != 0) {
      return;
    }
    try{
    //final SharedPreferences pref = await SharedPreferences.getInstance();
    _isLoadingFetchHasProblems = true;
    _returnDateAgoHasProblem = {};
    _dateWrittenAgoHasProblem = {};
    _currentDateAgoHasProblem = {};
    _hasProblem = [];
    if (reload == 'true') {
      //stopProblemDateWrittenTimer();
    }
    notifyListeners();
    //try{
    final Response response = await Dio().get(
      BASEURL +
          FETCHALLHASPROBLEM +
          problemId.toString() +
          "/${_authenticatedUser.token}",
      /*headers: {
        //HttpHeaders.authorizationHeader: "bearer ${_authenticatedUser.token}",
        HttpHeaders.contentTypeHeader: 'application/json'
        //'Content-Type': 'application/json',
      },*/
    );
    final List<HasProblem> fetchListHasProblem = [];
    final Map<String, dynamic> hasProblemmListData = response.data;
    if (hasProblemmListData['data'].length == 0) {
      //stopHasProblemDateWrittenTimer();
      _isLoadingFetchHasProblems = false;
      _hasProblem = [];
      notifyListeners();
      return;
    } else if (!hasProblemmListData.containsKey('meta')) {
      stopHasProblemDateWrittenTimer();
      _isLoadingFetchHasProblems = false;
      _hasProblem = [];
      notifyListeners();
      return;
    }
    for (int i = 0; i < hasProblemmListData['data'].length; i++) {
      final HasProblem hasProblemm = HasProblem(
        id: hasProblemmListData['data'][i]['id'],
        content: hasProblemmListData['data'][i]['content'],
        dateWritten: hasProblemmListData['data'][i]['date_written'],
        currentdatetime: hasProblemmListData['data'][i]['currentdatetime'],
        userId: hasProblemmListData['data'][i]['user_id'],
        authorname: hasProblemmListData['data'][i]['authorname'],
        authoravater: hasProblemmListData['data'][i]['authoravater'],
        problemId: hasProblemmListData['data'][i]['problem_id'],
      );
      fetchListHasProblem.add(hasProblemm);

      _currentDateAgoHasProblem[hasProblemmListData['data'][i]['id']] =
          hasProblemmListData['data'][i]['currentdatetime'];
      _dateWrittenAgoHasProblem[hasProblemmListData['data'][i]['id']] =
          hasProblemmListData['data'][i]['date_written'];
      String daWritten = parseHumanDateTime(
          hasProblemmListData['data'][i]['date_written'],
          hasProblemmListData['data'][i]['currentdatetime']);
      _returnDateAgoHasProblem[hasProblemmListData['data'][i]['id']] =
          daWritten;
      //print(problemmListData['data'][i]['currentdatetime']);
    }

    _hasProblem = fetchListHasProblem;
    int index = _problems.indexWhere((problemss) => problemss.id == pro.id);
    Problemm oldProblem = pro;
      int id = oldProblem.id;
      String authoraddress = oldProblem.authoraddress;
      String authoravater = oldProblem.authoravater;
      String authormobilenumber = oldProblem.authormobilenumber;
      String authorname = oldProblem.authorname;
      String bookauthoravater = oldProblem.bookauthoravater;
      String bookauthorname = oldProblem.bookauthorname;
      int bookuserId = oldProblem.bookuserId;
      String currentdatetime = oldProblem.currentdatetime;
      String dateBook = oldProblem.dateBook;
      String dateWritten = oldProblem.dateWritten;
      String description = oldProblem.description;
      String requestuseravater = oldProblem.requestuseravater;
      String requestusername = oldProblem.requestusername;
      int requestusertypeid = oldProblem.requestusertypeid;
      String requestusertypename = oldProblem.requestusertypename;
      String ishasproblems = oldProblem.ishasproblems;
      String solved = oldProblem.solved;
      int userId = oldProblem.userId;
      int hasproblemcommentcount = _hasProblem.length;
      Problemm newProblemm = Problemm(
          id: id,
          authoraddress: authoraddress,
          authoravater: authoravater,
          authormobilenumber: authormobilenumber,
          authorname: authorname,
          bookauthoravater: bookauthoravater,
          bookauthorname: bookauthorname,
          bookuserId: bookuserId,
          currentdatetime: currentdatetime,
          dateBook: dateBook,
          dateWritten: dateWritten,
          description: description,
          requestuseravater: requestuseravater,
          requestusername: requestusername,
          requestusertypeid: requestusertypeid,
          requestusertypename: requestusertypename,
          solved: solved,
          userId: userId,
          ishasproblems: ishasproblems,
          hasproblemcommentcount: hasproblemcommentcount);
      _problems[index] = newProblemm;

    
    _currentPageHasProblem = hasProblemmListData['meta']['current_page'];
    _totalPageHasProblem = hasProblemmListData['meta']['last_page'];
    startHasProblemDateWrittenTimer();
    _isLoadingFetchHasProblems = false;
    _selProblemmIdHasProblem = 0;
    notifyListeners();    
    } catch(err){
      _isLoadingFetchHasProblems = false;
      _selProblemmIdHasProblem = 0;
      notifyListeners();
    }
  }

  Future<Null> fetchMoreHasProblems(int problemId) async {
    try{
    _isLoadingFetchHasProblemsMore = true;
    notifyListeners();
    if (_currentPageHasProblem >= _totalPageHasProblem) {
      _isLoadingFetchHasProblemsMore = false;
      notifyListeners();
      return;
    }
    //try{
    final Response response = await Dio().get(
      BASEURL +
          FETCHALLHASPROBLEM +
          problemId.toString() +
          "/${_authenticatedUser.token}?page=" +
          (_currentPageHasProblem + 1).toString(),
      /*headers: {
        //HttpHeaders.authorizationHeader: _authenticatedUser.token,
        HttpHeaders.contentTypeHeader: 'application/json'
        //'Content-Type': 'application/json',
      },*/
    );

    final Map<String, dynamic> hasProblemmListData = response.data;
    if (hasProblemmListData['data'].length == 0) {
      _isLoadingFetchHasProblemsMore = false;
      notifyListeners();
      return;
    }
    for (int i = 0; i < hasProblemmListData['data'].length; i++) {
      final HasProblem hasProblemm = HasProblem(
        id: hasProblemmListData['data'][i]['id'],
        content: hasProblemmListData['data'][i]['content'],
        dateWritten: hasProblemmListData['data'][i]['date_written'],
        currentdatetime: hasProblemmListData['data'][i]['currentdatetime'],
        userId: hasProblemmListData['data'][i]['user_id'],
        authorname: hasProblemmListData['data'][i]['authorname'],
        authoravater: hasProblemmListData['data'][i]['authoravater'],
        problemId: hasProblemmListData['data'][i]['problem_id'],
      );
      _hasProblem.add(hasProblemm);

      _currentDateAgoHasProblem[hasProblemmListData['data'][i]['id']] =
          hasProblemmListData['data'][i]['currentdatetime'];
      _dateWrittenAgoHasProblem[hasProblemmListData['data'][i]['id']] =
          hasProblemmListData['data'][i]['date_written'];
      String daWritten = parseHumanDateTime(
          hasProblemmListData['data'][i]['date_written'],
          hasProblemmListData['data'][i]['currentdatetime']);
      _returnDateAgoHasProblem[hasProblemmListData['data'][i]['id']] =
          daWritten;
    }
    _isLoadingFetchHasProblemsMore = false;
    _currentPageHasProblem++;
    _selProblemmIdHasProblem = 0;
    notifyListeners();   
    } catch(err){
      _isLoadingFetchHasProblemsMore = false;
      _selProblemmIdHasProblem = 0;
      notifyListeners();   
    }
  }

  Future<Map<String, dynamic>> addHasProblemm(
      int problemId, String content) async {
    try{
    _isLoadinProgressHasProblem = true;
    notifyListeners();
    final Map<String, dynamic> addHasProblemData = {
      'content': content,
      'problem_id': problemId,
      'token': _authenticatedUser.token
    };
    Response response;
    response = await Dio().post(BASEURL + ADDHASPROBLEM, data: addHasProblemData
        /*body: json.encode(addHasProblemData),
      headers: {
        //'Content-Type': 'application/json'
        HttpHeaders.contentTypeHeader: 'application/json'
      },*/
        );
    if (response.statusCode != 200 && response.statusCode != 201) {
      _isLoadinProgressHasProblem = false;
      notifyListeners();
      return {};
    }
    final Map<String, dynamic> hasProblemmListData = response.data;

    /*if (hasProblemmListData['data']['statuscode'] == '1') {
      final HasProblem hasProblemm = HasProblem(
        id: hasProblemmListData['data']['id'],
        content: hasProblemmListData['data']['content'],
        date_written: hasProblemmListData['data']['date_written'],
        currentdatetime: hasProblemmListData['data']['date_written'],
        user_id: hasProblemmListData['data']['user_id'],
        authorname: _authenticatedUser.userName,
        authoravater: _authenticatedUser.avater,
        problem_id: hasProblemmListData['data']['problem_id'],
      );
      _hasProblem.add(hasProblemm);

      _currentDateAgoHasProblem[hasProblemmListData['data']['id']] =
          hasProblemmListData['data']['date_written'];
      _dateWrittenAgoHasProblem[hasProblemmListData['data']['id']] =
          hasProblemmListData['data']['date_written'];
      String daWritten = parseHumanDateTime(
          hasProblemmListData['data']['date_written'],
          hasProblemmListData['data']['date_written']);
      _returnDateAgoHasProblem[hasProblemmListData['data']['id']] = daWritten;
    }*/

    _isLoadinProgressHasProblem = false;
    notifyListeners();
    return {
      'status': hasProblemmListData['data']['status'],
      'statuscode': hasProblemmListData['data']['statuscode']
    };
    } catch(err){
      _isLoadinProgressHasProblem = false;
      notifyListeners();
      return {
        'statuscode': '0'
      };
    }
  }

  Future<Map<String, dynamic>> editUserProfile(
      File image, String userName, String mobileNumber, String address) async {
    try{
    _isLoadinProgress = true;
    notifyListeners();
    FormData formData;
    if (image == null) {
      formData = new FormData.from({
        'name': userName,
        'mobile_number': mobileNumber,
        'address': address,
        'token': _authenticatedUser.token
      });
    } else {
      formData = new FormData.from({
        'name': userName,
        'mobile_number': mobileNumber,
        'address': address,
        'token': _authenticatedUser.token,
        "avater": new UploadFileInfo(image, "upload1.jpg")
      });
    }

    /*http.Response response;
    response = await http.post(
      BASEURL + EDITUSERPRFILE,
      body: json.encode(editProfileData),
      headers: {
        //'Content-Type': 'application/json'
        HttpHeaders.contentTypeHeader: 'application/json'
      },
    );*/
    Response response;
    response = await Dio().post(BASEURL + EDITUSERPRFILE, data: formData);
    if (response.statusCode != 200 && response.statusCode != 201) {
      _isLoadinProgress = false;
      notifyListeners();
      return {};
    }
    final Map<String, dynamic> responseData = response.data;
    if (responseData['data']['statuscode'] == '1') {
      int id = _authenticatedUser.id;
      String token = _authenticatedUser.token;
      String userName = _authenticatedUser.userName;
      String avater = _authenticatedUser.avater;
      int userstypeId = _authenticatedUser.userstypeId;
      String userTypeName = _authenticatedUser.userTypeName;

      _authenticatedUser = User(
        id: id,
        token: token,
        userName: userName,
        avater: avater,
        userstypeId: userstypeId,
        userTypeName: userTypeName,
        mobileNumber: mobileNumber,
        address: address,
      );
      final SharedPreferences pref = await SharedPreferences.getInstance();
      pref.setString("userMobile_number", mobileNumber);
      pref.setString("userAddress", address);
    }
    _isLoadinProgress = false;
    notifyListeners();
    return {
      'status': responseData['data']['status'],
      'statuscode': responseData['data']['statuscode']
    };
    } catch(err){
      _isLoadinProgress = false;
      notifyListeners();
      return {
        'statuscode': '0'
      };
    }
  }

  Future<Null> fetchAllUsersType({String getUserType}) async {
    if (_isLoadinProgressAllUsers || _selAllUserId != 0) {
      return;
    }
    try{
    _isLoadingFetchAllUsers = true;
    _allUsers = [];
    notifyListeners();
    //try{
    //String anotherUrl = '';
    if (getUserType == 'admins') {
      anotherUserUrl = GETALLADMINS;
    } else if (getUserType == 'users') {
      anotherUserUrl = GETALLUSERS;
    } else if (getUserType == 'clients') {
      anotherUserUrl = GETALLCLIENTS;
    } else if (getUserType == 'new') {
      anotherUserUrl = GETALLNEW;
    }
    final Response response = await Dio().get(
      BASEURL + anotherUserUrl + "${_authenticatedUser.token}",
      /*headers: {
        //HttpHeaders.authorizationHeader: "bearer ${_authenticatedUser.token}",
        HttpHeaders.contentTypeHeader: 'application/json'
        //'Content-Type': 'application/json',
      },*/
    );
    final List<User> fetchAllUsers = [];
    final Map<String, dynamic> allUsersListData = response.data;
    if (allUsersListData['data'].length == 0) {
      _isLoadingFetchAllUsers = false;
      notifyListeners();
      return;
    } else if (!allUsersListData.containsKey('meta')) {
      _isLoadingFetchAllUsers = false;
      notifyListeners();
      return;
    }
    for (int i = 0; i < allUsersListData['data'].length; i++) {
      final User userss = User(
          id: allUsersListData['data'][i]['id'],
          userName: allUsersListData['data'][i]['userName'],
          avater: allUsersListData['data'][i]['avater'],
          mobileNumber: allUsersListData['data'][i]['mobile_number'],
          address: allUsersListData['data'][i]['address'],
          userstypeId: allUsersListData['data'][i]['userstype_id'],
          userTypeName: allUsersListData['data'][i]['userTypeName']);
      fetchAllUsers.add(userss);
    }

    _allUsers = fetchAllUsers;
    _currentPageAllUsers = allUsersListData['meta']['current_page'];
    _totalPageAllUsers = allUsersListData['meta']['last_page'];
    _isLoadingFetchAllUsers = false;
    _selAllUserId = 0;
    notifyListeners();    
    } catch(err){
      _isLoadingFetchAllUsers = false;
      _selAllUserId = 0;
      notifyListeners();
    }
  }

  Future<Null> fetchMoreAllUsersType() async {
    try{
    _isLoadingFetchAllUsersMore = true;
    notifyListeners();
    if (_currentPageAllUsers >= _totalPageAllUsers) {
      _isLoadingFetchAllUsersMore = false;
      notifyListeners();
      return;
    }
    final Response response = await Dio().get(
      BASEURL +
          anotherUserUrl +
          "${_authenticatedUser.token}?page=" +
          (_currentPageAllUsers + 1).toString(),
      /*headers: {
        //HttpHeaders.authorizationHeader: _authenticatedUser.token,
        HttpHeaders.contentTypeHeader: 'application/json'
        //'Content-Type': 'application/json',
      },*/
    );

    final Map<String, dynamic> allUsersListData = response.data;
    if (allUsersListData['data'].length == 0) {
      _isLoadingFetchAllUsersMore = false;
      notifyListeners();
      return;
    }
    for (int i = 0; i < allUsersListData['data'].length; i++) {
      final User userss = User(
          id: allUsersListData['data'][i]['id'],
          userName: allUsersListData['data'][i]['userName'],
          avater: allUsersListData['data'][i]['avater'],
          mobileNumber: allUsersListData['data'][i]['mobile_number'],
          address: allUsersListData['data'][i]['address'],
          userstypeId: allUsersListData['data'][i]['userstype_id'],
          userTypeName: allUsersListData['data'][i]['userTypeName']);
      _allUsers.add(userss);
    }
    _isLoadingFetchAllUsersMore = false;
    _currentPageAllUsers++;
    _selAllUserId = 0;
    notifyListeners();    
    } catch(err){
      _isLoadingFetchAllUsersMore = false;
      _currentPageAllUsers++;
      _selAllUserId = 0;
      notifyListeners();  
    }
  }

  Future<Map<String, dynamic>> deleteUser(int userId) async {
    try{
    _userTypeProcessor = 'deleteuser';
    _selAllUserId = userId;
    _isLoadinProgressAllUsers = true;
    notifyListeners();
    final Map<String, dynamic> addUserData = {
      'token': _authenticatedUser.token
    };
    Response response;
    response = await Dio().post(BASEURL + DELETEUSER + userId.toString(),
        data: addUserData
        /*body: json.encode(addUserData),
      headers: {
        //'Content-Type': 'application/json'
        HttpHeaders.contentTypeHeader: 'application/json'
      },*/
        );
    if (response.statusCode != 200 && response.statusCode != 201) {
      _userTypeProcessor = '';
      _selAllUserId = 0;
      _isLoadinProgressAllUsers = false;
      notifyListeners();
      return {};
    }
    final Map<String, dynamic> responseData = response.data;
    if (responseData['data']['statuscode'] == '1') {
      _allUsers.removeWhere((user) => user.id == userId);
    }
    _userTypeProcessor = '';
    _selAllUserId = 0;
    _isLoadinProgressAllUsers = false;
    notifyListeners();
    return {
      'status': responseData['data']['status'],
      'statuscode': responseData['data']['statuscode']
    };
    } catch(err){
      _userTypeProcessor = '';
      _selAllUserId = 0;
      _isLoadinProgressAllUsers = false;
      notifyListeners();
      return {
        'statuscode': '0'
      };
    }
  }

  Future<Map<String, dynamic>> changeUserType(int userId, String typed) async {
    try{
    _userTypeProcessor = 'changetype';
    _selAllUserId = userId;
    _isLoadinProgressAllUsers = true;
    notifyListeners();
    final Map<String, dynamic> changeUserData = {
      'token': _authenticatedUser.token,
      'userstype': typed
    };
    Response response;
    response = await Dio().post(BASEURL + CHANGEUSERTYPE + userId.toString(),
        data: changeUserData
        /*body: json.encode(changeUserData),
      headers: {
        //'Content-Type': 'application/json'
        HttpHeaders.contentTypeHeader: 'application/json'
      },*/
        );
    if (response.statusCode != 200 && response.statusCode != 201) {
      _userTypeProcessor = '';
      _selAllUserId = 0;
      _isLoadinProgressAllUsers = false;
      notifyListeners();
      return {};
    }
    final Map<String, dynamic> responseData = response.data;

    if (responseData['data']['statuscode'] == '1') {
      _allUsers.removeWhere((user) => user.id == userId);
    }
    _userTypeProcessor = '';
    _selAllUserId = 0;
    _isLoadinProgressAllUsers = false;
    notifyListeners();
    return {
      'status': responseData['data']['status'],
      'statuscode': responseData['data']['statuscode']
    };
    } catch(err){
      _userTypeProcessor = '';
      _selAllUserId = 0;
      _isLoadinProgressAllUsers = false;
      notifyListeners();
      return {
        'statuscode': '0'
      };
    }
  }

  Future<Map<String, dynamic>> changeUserPassword(String password) async {
    try{
    _isLoadinProgressAllUsers = true;
    notifyListeners();
    final Map<String, dynamic> changeUserData = {
      'token': _authenticatedUser.token,
      'password': password
    };
    Response response = await Dio().post(BASEURL + CHANGEUSERPASSWORD,
        data: changeUserData
        /*body: json.encode(changeUserData),
      headers: {
        //'Content-Type': 'application/json'
        HttpHeaders.contentTypeHeader: 'application/json'
      },*/
        );
    if (response.statusCode != 200 && response.statusCode != 201) {
      _isLoadinProgressAllUsers = false;
      notifyListeners();
      return {};
    }
    final Map<String, dynamic> responseData = response.data;

    _isLoadinProgressAllUsers = false;
    notifyListeners();
    return {
      'status': responseData['data']['status'],
      'statuscode': responseData['data']['statuscode']
    };
    } catch(err){
      _isLoadinProgressAllUsers = false;
      notifyListeners();
      //print(err.toString());
      return {
      'status': '0'
    };
    }
  }
}

mixin UserModel on ConnectedProblemsModel {
  PublishSubject<bool> _userSubject = PublishSubject();
  PublishSubject<bool> get userSubject {
    return _userSubject;
  }

  User get user {
    return _authenticatedUser;
  }

  Future<Map<String, dynamic>> authenticateRegister(
      String email, String userName, String password) async {
    try{
    _isLoadingAuth = true;
    notifyListeners();
    final Map<String, dynamic> authRegisterData = {
      'email': email,
      'name': userName,
      'password': password
    };
    Response response;
    response = await Dio().post(BASEURL + REGISTER, data: authRegisterData
        /*body: json.encode(authRegisterData),
      headers: {'Content-Type': 'application/json'},*/
        //headers: {'Accept': 'application/json'},
        );
    if (response.statusCode != 200 && response.statusCode != 201) {
      _isLoadingAuth = false;
      notifyListeners();
      return {};
    }
    final Map<String, dynamic> responseData = response.data;

    _isLoadingAuth = false;
    notifyListeners();
    //print(responseData['data']);
    return {
      'status': responseData['data']['status'],
      'statuscode': responseData['data']['statuscode']
    };
    } catch(err){
      _isLoadingAuth = false;
      notifyListeners();
      return {
        'statuscode': '0'
      };
    }
  }

  Future<Map<String, dynamic>> authenticateLogin(
      String email, String password) async {
    try{
    _isLoadingAuth = true;
    notifyListeners();
    final Map<String, dynamic> authLoginData = {
      'email': email,
      'password': password
    };
    Response response;
    response = await Dio().post(BASEURL + LOGIN, data: authLoginData
        //body: json.encode(authLoginData),
        //headers: {
        //'Content-Type': 'application/json'
        //HttpHeaders.contentTypeHeader: 'application/json'
        //},
        );
    if (response.statusCode != 200 && response.statusCode != 201) {
      _isLoadingAuth = false;
      notifyListeners();
      return {};
    }
    final Map<String, dynamic> responseData = response.data;

    if (responseData['data']['statuscode'] == '1') {
      _authenticatedUser = User(
        id: responseData['data']['userid'],
        token: responseData['data']['status'],
        userName: responseData['data']['name'],
        avater: responseData['data']['avater'],
        userstypeId: responseData['data']['userstype_id'],
        userTypeName: responseData['data']['usertypename'],
        mobileNumber: responseData['data']['mobile_number'],
        address: responseData['data']['address'],
      );

      _userSubject.add(true);
      final SharedPreferences pref = await SharedPreferences.getInstance();
      pref.setInt("userid", responseData['data']['userid']);
      pref.setString("token", responseData['data']['status']);
      pref.setString("userName", responseData['data']['name']);
      pref.setString("userAvater", responseData['data']['avater']);
      pref.setInt("userstype_id", responseData['data']['userstype_id']);
      pref.setString("userTypeName", responseData['data']['usertypename']);
      pref.setString(
          "userMobile_number", responseData['data']['mobile_number']);
      pref.setString("userAddress", responseData['data']['address']);
    }
    //print(_authenticatedUser.address);

    _isLoadingAuth = false;
    notifyListeners();
    return {
      'status': responseData['data']['status'],
      'statuscode': responseData['data']['statuscode']
    };
    }catch(err){
      _isLoadingAuth = false;
      notifyListeners();
      return {
        'statuscode': '0'
      };
    }
  }

  void autoAuthenticate() async {
    try{
    final SharedPreferences pref = await SharedPreferences.getInstance();
    final String token = pref.getString("token");
    final int userid = pref.getInt("userid");
    final String userName = pref.getString("userName");
    final String userAvater = pref.getString("userAvater");
    final int userTypeId = pref.getInt("userstype_id");
    final String userTypeName = pref.getString("userTypeName");
    final String mobileNumber = pref.getString("userMobile_number");
    final String address = pref.getString("userAddress");
    if (token != null &&
        userName != null &&
        userAvater != null &&
        userTypeName != null &&
        userTypeId != null &&
        userid != null) {
      _authenticatedUser = User(
          id: userid,
          token: token,
          userName: userName,
          avater: userAvater,
          userstypeId: userTypeId,
          userTypeName: userTypeName,
          mobileNumber: mobileNumber,
          address: address);
      _userSubject.add(true);
      //print(_authenticatedUser.address);
      notifyListeners();
    }
    }catch(err){

    }
  }

  Future<bool> logout() async {
    try{
    _authenticatedUser = null;
    _userSubject.add(false);
    _selProblemmId = 0;
    _selAllUserId = 0;
    final SharedPreferences pref = await SharedPreferences.getInstance();
    pref.remove("token");
    pref.remove("userid");
    pref.remove("userName");
    pref.remove("userAvater");
    pref.remove("userTypeName");
    pref.remove("userMobile_number");
    pref.remove("userAddress");
    //notifyListeners();
    return true;
    } catch(err){
      return false;
    }
  }
}

mixin UtiltyModel on ConnectedProblemsModel {
  bool get isLoadinProgress {
    return _isLoadinProgress;
  }

  bool get isLoadingAuth {
    return _isLoadingAuth;
  }

  bool get isLoadingFetchProblems {
    return _isLoadingFetchProblems;
  }

  bool get isLoadingFetchProblemsMore {
    return _isLoadingFetchProblemsMore;
  }

  String get userTypeProcessor {
    return _userTypeProcessor;
  }

  int get getCurrentPage {
    return _currentPage;
  }

  int get getTotalPage {
    return _totalPage;
  }

  bool get isLoadingFetchAllUsers {
    return _isLoadingFetchAllUsers;
  }

  bool get isLoadingFetchAllUsersMore {
    return _isLoadingFetchAllUsersMore;
  }

  int get currentPageAllUsers {
    return _currentPageAllUsers;
  }

  int get totalPageAllUsers {
    return _totalPageAllUsers;
  }

  bool get isLoadinProgressHasProblem {
    return _isLoadinProgressHasProblem;
  }

  bool get isLoadinProgressAllUsers {
    return _isLoadinProgressAllUsers;
  }

  bool get isLoadingFetchHasProblems {
    return _isLoadingFetchHasProblems;
  }

  bool get isLoadingFetchHasProblemsMore {
    return _isLoadingFetchHasProblemsMore;
  }

  int get currentPageHasProblem {
    return _currentPageHasProblem;
  }

  int get totalPageHasProblem {
    return _totalPageHasProblem;
  }

  
}
