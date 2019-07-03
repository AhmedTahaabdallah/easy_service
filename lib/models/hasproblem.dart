import 'package:flutter/material.dart';

class HasProblem {
  final int id;
  final String content;
  final String dateWritten;
  final String currentdatetime;
  final int userId;
  final String authorname;
  final String authoravater;
  final int problemId;

  HasProblem({
    @required this.id,
    @required this.content,
    @required this.dateWritten,
    @required this.currentdatetime,
    @required this.userId,
    @required this.authorname,
    @required this.authoravater,
    @required this.problemId,
  });
}
