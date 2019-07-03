import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AdapativProgressIndicator extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Theme.of(context).platform == TargetPlatform.android ?
    CircularProgressIndicator(strokeWidth: 2.5,valueColor:
    new AlwaysStoppedAnimation<Color>(Theme.of(context).primaryColor)) : CupertinoActivityIndicator();
  }
}