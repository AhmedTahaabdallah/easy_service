import 'package:flutter/material.dart';
import '../../scoped-models/main.dart';
import '../../pages/differentproblems.dart';
import '../../translation/translation_strings.dart';


class SecondSection extends StatefulWidget {
  final MainModel model;
  final List<dynamic> myResp;
  SecondSection(this.model, this.myResp);
  @override
  _SecondSectionState createState() => _SecondSectionState();
}

class _SecondSectionState extends State<SecondSection> {
  @override
  Widget build(BuildContext context) {
    Widget _content = Container();
    if (widget.model.user.userstypeId <= 2) {
      _content = Padding(
        padding: EdgeInsets.only(
          top: widget.myResp[82],
          left: widget.myResp[83],
          right: widget.myResp[84],
          bottom: widget.myResp[85],
        ),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                top: widget.myResp[86],
                left: widget.myResp[87],
                right: widget.myResp[88],                
                bottom: widget.myResp[89],
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return DifferentProblemsPage('new', widget.model, Translations.of(context).allProblemsDrawerNewProblemsTitle, widget.myResp);
                  }));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.new_releases,
                          color: Colors.white,
                          size: widget.myResp[90],
                        ),
                        SizedBox(
                          width: widget.myResp[91],
                        ),
                        Text(
                          Translations.of(context).allProblemsDrawerNewProblems,
                          style: TextStyle(
                              fontSize: widget.myResp[92],
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    widget.model.allDrawerCount['newproblems'] != 0 ? Container(
                      decoration: BoxDecoration(
                          color: Colors.pink,
                          borderRadius: BorderRadius.circular(widget.myResp[93])),
                      padding: EdgeInsets.only(
                        right: widget.myResp[94],
                        left: widget.myResp[95],
                        top: widget.myResp[96],
                        bottom: widget.myResp[97],
                      ),
                      child: Text(
                        widget.model.allDrawerCount['newproblems'].toString(),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: widget.myResp[98],
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ) : Container()
                  ],
                ),
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(
                top: widget.myResp[99],
                bottom: widget.myResp[100],
                right: widget.myResp[101],
                left: widget.myResp[102],
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return DifferentProblemsPage('hasproblem', widget.model, Translations.of(context).allProblemsDrawerHasProblemsTitle, widget.myResp);
                  }));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.report_problem,
                          color: Colors.white,
                          size: widget.myResp[103],
                        ),
                        SizedBox(
                          width: widget.myResp[104],
                        ),
                        Text(
                          Translations.of(context).allProblemsDrawerHasProblems,
                          style: TextStyle(
                              fontSize: widget.myResp[105],
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    widget.model.allDrawerCount['hasproblems'] != 0 ? Container(
                      decoration: BoxDecoration(
                          color: Colors.pink,
                          borderRadius: BorderRadius.circular(widget.myResp[106])),
                      padding: EdgeInsets.only(
                        right: widget.myResp[107],
                        left: widget.myResp[108],
                        top: widget.myResp[109],
                        bottom: widget.myResp[110],
                      ),
                      child: Text(
                        widget.model.allDrawerCount['hasproblems'].toString(),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: widget.myResp[111],
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ) : Container()
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: widget.myResp[112],
                bottom: widget.myResp[113],
                right: widget.myResp[114],
                left: widget.myResp[115],
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return DifferentProblemsPage('solved', widget.model, Translations.of(context).allProblemsDrawerSolveProblemsTitle, widget.myResp);
                  }));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.done_all,
                          color: Colors.white,
                          size: widget.myResp[116],
                        ),
                        SizedBox(
                          width: widget.myResp[117],
                        ),
                        Text(
                          Translations.of(context).allProblemsDrawerSolveProblems,
                          style: TextStyle(
                              fontSize: widget.myResp[118],
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    widget.model.allDrawerCount['solveproblems'] != 0 ? Container(
                      decoration: BoxDecoration(
                          color: Colors.pink,
                          borderRadius: BorderRadius.circular(widget.myResp[119])),
                      padding: EdgeInsets.only(
                        right: widget.myResp[120],
                        left: widget.myResp[121],
                        top: widget.myResp[122],
                        bottom: widget.myResp[123],
                      ),
                      child: Text(
                        widget.model.allDrawerCount['solveproblems'].toString(),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: widget.myResp[124],
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ) : Container()
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    } else if (widget.model.user.userstypeId == 3) {
      _content = Padding(
        padding: EdgeInsets.only(
          top: widget.myResp[82],
          left: widget.myResp[83],
          right: widget.myResp[84],
          bottom: widget.myResp[85],
        ),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                top: widget.myResp[86],
                bottom: widget.myResp[89],
                right: widget.myResp[88],
                left: widget.myResp[87],
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return DifferentProblemsPage('new', widget.model, Translations.of(context).allProblemsDrawerNewProblemsTitle, widget.myResp);
                  }));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.new_releases,
                          color: Colors.white,
                          size: widget.myResp[90],
                        ),
                        SizedBox(
                          width: widget.myResp[91],
                        ),
                        Text(
                          Translations.of(context).allProblemsDrawerNewProblems,
                          style: TextStyle(
                              fontSize: widget.myResp[92],
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    widget.model.allDrawerCount['newproblems'] != 0 ? Container(
                      decoration: BoxDecoration(
                          color: Colors.pink,
                          borderRadius: BorderRadius.circular(widget.myResp[93])),
                      padding: EdgeInsets.only(
                        right: widget.myResp[94],
                        left: widget.myResp[95],
                        top: widget.myResp[96],
                        bottom: widget.myResp[97],
                      ),
                      child: Text(
                        widget.model.allDrawerCount['newproblems'].toString(),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: widget.myResp[98],
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ) : Container()
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: widget.myResp[99],
                bottom: widget.myResp[100],
                right: widget.myResp[101],
                left: widget.myResp[102],
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return DifferentProblemsPage('hasproblem', widget.model, Translations.of(context).allProblemsDrawerHasProblemsTitle, widget.myResp);
                  }));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.report_problem,
                          color: Colors.white,
                          size: widget.myResp[103],
                        ),
                        SizedBox(
                          width: widget.myResp[104],
                        ),
                        Text(
                          Translations.of(context).allProblemsDrawerHasProblems,
                          style: TextStyle(
                              fontSize: widget.myResp[105],
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    widget.model.allDrawerCount['hasproblems'] != 0 ? Container(
                      decoration: BoxDecoration(
                          color: Colors.pink,
                          borderRadius: BorderRadius.circular(widget.myResp[106])),
                      padding: EdgeInsets.only(
                        right: widget.myResp[107],
                        left: widget.myResp[108],
                        top: widget.myResp[109],
                        bottom: widget.myResp[110],
                      ),
                      child: Text(
                        widget.model.allDrawerCount['hasproblems'].toString(),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: widget.myResp[111],
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ) : Container()
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: widget.myResp[112],
                bottom: widget.myResp[113],
                right: widget.myResp[114],
                left: widget.myResp[115],
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return DifferentProblemsPage('solved', widget.model, Translations.of(context).allProblemsDrawerSolveProblemsTitle, widget.myResp);
                  }));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.done_all,
                          color: Colors.white,
                          size:widget.myResp[116],
                        ),
                        SizedBox(
                          width: widget.myResp[117],
                        ),
                        Text(
                          Translations.of(context).allProblemsDrawerSolveProblems,
                          style: TextStyle(
                              fontSize: widget.myResp[118],
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    widget.model.allDrawerCount['solveproblems'] != 0 ? Container(
                      decoration: BoxDecoration(
                          color: Colors.pink,
                          borderRadius: BorderRadius.circular(8.0)),
                      padding: EdgeInsets.only(
                        right: widget.myResp[120],
                        left: widget.myResp[121],
                        top: widget.myResp[122],
                        bottom: widget.myResp[123],
                      ),
                      child: Text(
                        widget.model.allDrawerCount['solveproblems'].toString(),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: widget.myResp[124],
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ) : Container()
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    } else if (widget.model.user.userstypeId == 4) {
      _content = Padding(
        padding: EdgeInsets.only(
          top: widget.myResp[82],
          left: widget.myResp[83],
          right: widget.myResp[84],
          bottom: widget.myResp[85],
        ),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                top: widget.myResp[86],
                bottom: widget.myResp[89],
                right: widget.myResp[88],
                left: widget.myResp[87],
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return DifferentProblemsPage('new', widget.model, Translations.of(context).allProblemsDrawerNewProblems, widget.myResp);
                  }));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.new_releases,
                          color: Colors.white,
                          size: widget.myResp[90],
                        ),
                        SizedBox(
                          width: widget.myResp[91],
                        ),
                        Text(
                          Translations.of(context).allProblemsDrawerNewProblems,
                          style: TextStyle(
                              fontSize: widget.myResp[92],
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    widget.model.allDrawerCount['newproblems'] != 0 ? Container(
                      decoration: BoxDecoration(
                          color: Colors.pink,
                          borderRadius: BorderRadius.circular(widget.myResp[93])),
                      padding: EdgeInsets.only(
                        right: widget.myResp[94],
                        left: widget.myResp[95],
                        top: widget.myResp[96],
                        bottom: widget.myResp[97],
                      ),
                      child: Text(
                        widget.model.allDrawerCount['newproblems'].toString(),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: widget.myResp[98],
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ) : Container()
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: widget.myResp[99],
                bottom: widget.myResp[100],
                right: widget.myResp[101],
                left: widget.myResp[102],
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return DifferentProblemsPage('hasproblem', widget.model, Translations.of(context).allProblemsDrawerHasProblemsTitle, widget.myResp);
                  }));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.report_problem,
                          color: Colors.white,
                          size: widget.myResp[103],
                        ),
                        SizedBox(
                          width: widget.myResp[104],
                        ),
                        Text(
                          Translations.of(context).allProblemsDrawerHasProblems,
                          style: TextStyle(
                              fontSize: widget.myResp[105],
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    widget.model.allDrawerCount['hasproblems'] != 0 ? Container(
                      decoration: BoxDecoration(
                          color: Colors.pink,
                          borderRadius: BorderRadius.circular(8.0)),
                      padding: EdgeInsets.only(
                        right: widget.myResp[107],
                        left: widget.myResp[108],
                        top: widget.myResp[109],
                        bottom: widget.myResp[110],
                      ),
                      child: Text(
                        widget.model.allDrawerCount['hasproblems'].toString(),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: widget.myResp[111],
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ) : Container()
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: widget.myResp[112],
                bottom: widget.myResp[113],
                right: widget.myResp[114],
                left: widget.myResp[115],
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return DifferentProblemsPage('solved', widget.model, Translations.of(context).allProblemsDrawerSolveProblemsTitle, widget.myResp);
                  }));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.done_all,
                          color: Colors.white,
                          size: widget.myResp[116],
                        ),
                        SizedBox(
                          width: widget.myResp[117],
                        ),
                        Text(
                          Translations.of(context).allProblemsDrawerSolveProblems,
                          style: TextStyle(
                              fontSize: widget.myResp[118],
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    widget.model.allDrawerCount['solveproblems'] != 0 ? Container(
                      decoration: BoxDecoration(
                          color: Colors.pink,
                          borderRadius: BorderRadius.circular(widget.myResp[119])),
                      padding: EdgeInsets.only(
                        right: widget.myResp[120],
                        left: widget.myResp[121],
                        top: widget.myResp[122],
                        bottom: widget.myResp[123],
                      ),
                      child: Text(
                        widget.model.allDrawerCount['solveproblems'].toString(),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: widget.myResp[124],
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ) : Container()
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }
    return _content;
  }
}
