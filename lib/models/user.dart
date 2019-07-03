import 'package:flutter/material.dart';

class User {
  final int id;
  final String userName;
  final String token;
  final String avater;
  final int userstypeId;
  final String userTypeName;
  final String mobileNumber;
  final String address;
  User({    
    @required this.id,
    @required this.userName,
    @required this.token,
    @required this.avater,
    @required this.userstypeId,
    @required this.userTypeName,
    @required this.mobileNumber,
    @required this.address,
  });
}
