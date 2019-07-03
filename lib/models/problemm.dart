import 'package:flutter/material.dart';

class Problemm {
  final int id;
  final String description;
  final String dateWritten;
  final String currentdatetime;
  final int userId;
  final String authorname;
  final String authoravater;
  final String solved;
  final String ishasproblems;
  final int bookuserId;
  final String bookauthorname;
  final String bookauthoravater;
  final String dateBook;
  final int requestusertypeid;
  final String requestusertypename;
  final String authormobilenumber;
  final String authoraddress;
  final String requestusername;
  final String requestuseravater;
  int hasproblemcommentcount;
  
  Problemm(
      {@required this.id,
      @required this.description,
      @required this.dateWritten,
      @required this.currentdatetime,
      @required this.userId,
      @required this.authorname,
      @required this.authoravater,
      @required this.solved,
      @required this.ishasproblems,
      @required this.bookuserId,
      @required this.bookauthorname,
      @required this.bookauthoravater,
      @required this.dateBook,
      @required this.requestusertypeid,
      @required this.requestusertypename,
      @required this.authormobilenumber,
      @required this.authoraddress,
      @required this.requestusername,
      @required this.requestuseravater,
      @required this.hasproblemcommentcount,
      });
}
