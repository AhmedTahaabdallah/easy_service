import 'package:flutter/material.dart';
import './problem_card.dart';
import '../../models/problemm.dart';
import 'package:scoped_model/scoped_model.dart';
import '../../scoped-models/main.dart';
import '../../translation/translation_strings.dart';

class Problems extends StatelessWidget {
  final String typeProblems;
  final String typeProblemsName;
  final List<dynamic> myResp;
  Problems(this.typeProblems, this.typeProblemsName, this.myResp);

  Widget _buildProblemList(MainModel model, BuildContext context) {
    Widget productCard;
    List<Problemm> proudcts = model.allProblems;
    if (proudcts.length > 0) {
      int len = proudcts.length - 1;
      productCard = ListView.builder(
          itemCount: proudcts.length, 
          itemBuilder: (BuildContext cont, int index) => len == index ? ProblemCard(proudcts[index], model, index, typeProblems, typeProblemsName, myResp,isLast: true) : ProblemCard(proudcts[index], model, index,typeProblems, typeProblemsName, myResp));
    } else {
      productCard = Center(child: Text(Translations.of(context).allProblemsNoProblemsFound),);
      productCard = Container();
    }
    return productCard;
  }

  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<MainModel>(builder: (BuildContext context, Widget child, MainModel model){
      return _buildProblemList(model, context);
    });
  }
}
