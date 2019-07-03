import 'package:flutter/material.dart';
import 'package:real_estate_servicing/models/user.dart';
import 'package:scoped_model/scoped_model.dart';
import '../../models/problemm.dart';
import '../../scoped-models/main.dart';
//import 'package:cached_network_image/cached_network_image.dart';
import '../../widgets/ui_element/adapativ_progress_indicator.dart';
import '../../widgets/circle_avatar/customcircleavatar.dart';
import './problem_card_oprateors/deleteproblem.dart';
import './problem_card_oprateors/hasproblem.dart';
import './problem_card_oprateors/solveproblem.dart';
import './problem_card_oprateors/reserveproblem.dart';
import '../../translation/translation_strings.dart';


class ProblemCard extends StatefulWidget {
  final Problemm problems;
  final bool isLast;
  final MainModel model;
  final int index;
  final String typeProblems;
  final String typeProblemsName;
  final List<dynamic> myResp;
  //final GlobalKey<ScaffoldState> scaffoldKey;
  ProblemCard(this.problems, this.model, this.index,this.typeProblems,
      this.typeProblemsName, this.myResp,{this.isLast = false});

  @override
  State<StatefulWidget> createState() {
    return _ProblemCardState();
  }
}

class _ProblemCardState extends State<ProblemCard>
    with TickerProviderStateMixin {
  AnimationController _controller, _controllerSecond;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 3));
    _controllerSecond =
        AnimationController(vsync: this, duration: Duration(seconds: 3));
  }

  Widget _buildSolveProblemDone() {
    Widget solveProblemTrue = GestureDetector(
      child: Column(
        children: <Widget>[
          Icon(
            Icons.done,
            color: Colors.green.shade900,
            size: widget.myResp[275],
          ),
          Text(
            Translations.of(context).allProblemsSolvedButtonBefore,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: widget.myResp[276],
              color: Colors.green.shade900,
              fontWeight: FontWeight.w800,
            ),
          ),
        ],
      ),
    );
    return widget.problems.solved == 'true' ? solveProblemTrue : Container();
  }

  Widget _buildHasProblemDone() {
    Widget hasProblemTrue = GestureDetector(
      child: Column(
        children: <Widget>[
          Icon(
            Icons.done,
            color: Colors.red.shade900,
            size: widget.myResp[277],
          ),
          Text(
            Translations.of(context).allProblemsHasProblemButtonBefore,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: widget.myResp[278],
              color: Colors.red.shade900,
              fontWeight: FontWeight.w800,
            ),
          ),
        ],
      ),
    );
    return widget.problems.ishasproblems == 'true'
        ? hasProblemTrue
        : Container();
  }

  Widget _buildReserveProblemDone() {
    Widget reserveProblemTrue = GestureDetector(
      child: Column(
        children: <Widget>[
          Icon(
            Icons.done,
            color: Colors.blue.shade900,
            size: widget.myResp[279],
          ),
          Text(
            Translations.of(context).allProblemsReservedButtonBefore,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: widget.myResp[280],
              color: Colors.blue.shade900,
              fontWeight: FontWeight.w800,
            ),
          ),
        ],
      ),
    );
    return widget.problems.dateBook != null ? reserveProblemTrue : Container();
  }

  @override
  Widget build(BuildContext context) {
    User myUser = widget.model.user;
    String da = 's';
    if(widget.typeProblems == 'allproblems'){
      da = widget.model.returnDateAgo[widget.problems.id];
    }
    if(widget.typeProblems == 'differentproblems'){
      da = widget.model.returnDateAgoDiffrent[widget.problems.id];
    }
    Widget _normalDateText = da != null ? Text(
       da 
      ,
      textAlign: TextAlign.start,
      style: TextStyle(
        fontSize: widget.myResp[206],
        fontWeight: FontWeight.w600,
      ),
    ) : Container();
    Widget _animationDateTextFirst = FadeTransition(
      opacity: Tween(begin: .1, end: 1.0).animate(
          CurvedAnimation(parent: _controller, curve: Curves.easeInOut)),
      child: Text(
        widget.problems.dateWritten,
        textAlign: TextAlign.start,
        style: TextStyle(
          fontSize: widget.myResp[207],
          fontWeight: FontWeight.w600,
        ),
      ),
    );

    Widget _animationDateTextSecond = FadeTransition(
      opacity: Tween(begin: 1.0, end: .1).animate(
          CurvedAnimation(parent: _controllerSecond, curve: Curves.easeInOut)),
      child: Text(
        widget.problems.dateWritten,
        style: TextStyle(
          fontSize: widget.myResp[208],
          fontWeight: FontWeight.w600,
        ),
      ),
    );

    Widget _myCard = GestureDetector(
      onTap: () {
        if (widget.problems.requestusertypeid > 2) {
          if (widget.problems.userId != widget.model.user.id) {
            return;
          }
        }
        //_controller.stop();
        //_controllerSecond.stop();
        //_controller.dispose();
        //_controllerSecond.dispose();
        widget.model.setProblrmIdProblemPage(widget.index);
        Navigator.pushNamed(context, '/problempage');
      },
      child: Card(
        color: Color(0xff5066F3),
        margin: EdgeInsets.only(
          bottom: widget.isLast ? widget.myResp[209] : widget.myResp[210],
          right: widget.myResp[212],
          left: widget.myResp[211],
          top: widget.index == 0 ? widget.myResp[213] : widget.myResp[214],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                top: widget.myResp[215],
                bottom: widget.myResp[218],
                right: widget.myResp[217],
                left: widget.myResp[216],
              ),
              child: Container(
                padding: EdgeInsets.all(widget.myResp[219]),
                decoration: BoxDecoration(
                    color: Color(0xffD9E9BC),
                    borderRadius: BorderRadius.circular(widget.myResp[220])),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Flexible(
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(right: widget.myResp[221], left: widget.myResp[222]),
                            child: CustomCircleAvatar(
                              imagePath: widget.problems.authoravater,
                              animationDuration: 100,
                              radius: widget.myResp[223],
                              mySize: widget.myResp[224],
                            ),
                          ),
                          Flexible(
                            fit: FlexFit.tight,
                            flex:
                                widget.problems.requestusertypeid == widget.myResp[222] ?
                                 widget.myResp[226] : widget.myResp[227],
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  widget.problems.authorname,
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: widget.myResp[228],
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Row(
                                  children: <Widget>[
                                    Icon(Icons.timer,size: widget.myResp[229],),
                                    SizedBox(
                                      width: widget.myResp[230],
                                    ),
                                    Expanded(
                                      child: ScopedModelDescendant<MainModel>(
                                        builder: (context, child, model) {
                                          return GestureDetector(
                                            onTap: () {
                                              _controller = AnimationController(
                                                  vsync: this,
                                                  duration:
                                                      Duration(seconds: 3));
                                              _controllerSecond =
                                                  AnimationController(
                                                      vsync: this,
                                                      duration:
                                                          Duration(seconds: 3));
                                              _controller.forward().then((f) =>
                                                  _controllerSecond
                                                      .forward()
                                                      .then((f) {
                                                    _controller.dispose();
                                                    _controllerSecond.dispose();
                                                  }));

                                              model
                                                  .startProblemDateWrittenTimerChangeFirst(
                                                      widget.problems.id);
                                            },
                                            child: model.selProblemmIdDate ==
                                                    widget.problems.id
                                                ? model.selProblemmIdDateString ==
                                                        'first'
                                                    ? _animationDateTextFirst
                                                    : _animationDateTextSecond
                                                : _normalDateText,
                                          );
                                        },
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      fit: FlexFit.tight,
                      flex: widget.problems.requestusertypeid == widget.myResp[231] ?
                       widget.myResp[232] : widget.myResp[233],
                    ),
                    Flexible(
                      child: ScopedModelDescendant<MainModel>(
                          builder: (context, child, model) {
                        return Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            model.isLoadinProgress &&
                                    model.selProblemmIdSolveProblem ==
                                        widget.problems.id
                                ? AdapativProgressIndicator()
                                : widget.problems.userId == myUser.id && myUser.id != null
                                    ? Flexible(
                                        //child: _buildSolveProblem(),
                                        child: SolveProblemCard(
                                            model,
                                            widget.problems,
                                            context,
                                            widget.index,
                                            widget.myResp),
                                        flex: widget.myResp[234],
                                        fit: FlexFit.tight,
                                      )
                                    : Container(),
                            model.isLoadinProgress &&
                                    model.selProblemmIdHasProblem ==
                                        widget.problems.id
                                ? AdapativProgressIndicator()
                                : widget.problems.userId == myUser.id
                                    ? Flexible(
                                        //child: _buildHasProblem(),
                                        child: HasProblemCard(
                                            model,
                                            widget.problems,
                                            context,
                                            widget.index,
                                            widget.myResp),
                                        flex: widget.myResp[235],
                                        fit: FlexFit.tight,
                                      )
                                    : Container(),
                            //problems.user_id == myUser.id ?
                            model.isLoadinProgress &&
                                    model.selProblemmId == widget.problems.id
                                ? AdapativProgressIndicator()
                                : myUser.id == widget.problems.userId
                                    //? _buildDeleteProblem()
                                    ? DeleteProblemCard(
                                        model, widget.problems, context,
                                            widget.myResp)
                                    : Container(),
                            model.user.userstypeId <= 3
                                ? _buildSolveProblemDone()
                                : Container(),
                            model.user.userstypeId <= 3
                                ? _buildHasProblemDone()
                                : Container(),
                            SizedBox(
                              width: widget.myResp[236],
                            ),
                            model.user.userstypeId <= 2
                                ? _buildReserveProblemDone()
                                : Container(),
                            SizedBox(
                              width: widget.myResp[237],
                            ),
                            widget.problems.requestusertypeid == 3
                                ? model.selProblemmIdReserveProblem ==
                                        widget.problems.id
                                    ? AdapativProgressIndicator()
                                    : Flexible(
                                        //child: _buildReserveProblem(),
                                        child: ReserveProblemCard(
                                            model,
                                            widget.problems,
                                            context,
                                            widget.index,
                                            widget.myResp),
                                        flex: widget.myResp[238],
                                        fit: FlexFit.tight,
                                      )
                                : Container()
                          ],
                        );
                      }),
                      fit: FlexFit.tight,
                      flex: widget.problems.requestusertypeid == widget.myResp[239] ?
                       widget.myResp[240] : widget.myResp[241],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                right: widget.myResp[244],
                left: widget.myResp[243],
                top: widget.myResp[242],
                bottom: widget.myResp[245],
              ),
              child: widget.problems.requestusertypeid <= 3
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(widget.problems.authoraddress,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: widget.myResp[246],
                              fontWeight: FontWeight.w600,
                            )),
                        widget.problems.requestusertypeid <= 2
                            ? SizedBox(
                                height: widget.myResp[247],
                              )
                            : Container(),
                        widget.problems.requestusertypeid <= 2
                            ? Text(widget.problems.authormobilenumber,
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: widget.myResp[248],
                                  fontWeight: FontWeight.w600,
                                ))
                            : Container()
                      ],
                    )
                  : Container(),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: widget.myResp[249],
                right: widget.myResp[250],
                bottom: widget.myResp[251],
              ),
              child: Text(
                widget.problems.description,
                textAlign: TextAlign.start,
                style: TextStyle(
                  //color: Color(0xff000000),
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: widget.myResp[252],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: widget.myResp[253],
                right: widget.myResp[254],
                bottom: widget.myResp[255],
              ),
              child: Text(
                '${widget.problems.hasproblemcommentcount} ${Translations.of(context).allProblemsComments}',
                textAlign: TextAlign.start,
                style: TextStyle(
                  //color: Color(0xff000000),
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: widget.myResp[256],
                ),
              ),
            ),
            widget.problems.bookuserId == null
                ? Container()
                : Column(
                    children: <Widget>[
                      SizedBox(
                        height: widget.myResp[257],
                        width: double.infinity,
                        child: Container(
                          color: Color(0xffF31103),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: widget.myResp[258],
                          left: widget.myResp[259],
                          right: widget.myResp[260],
                          bottom: widget.myResp[261],
                        ),
                        child: Container(
                          padding: EdgeInsets.all(widget.myResp[262]),
                          decoration: BoxDecoration(
                              color: Colors.blue.shade200,
                              borderRadius: BorderRadius.circular(widget.myResp[263])),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Flexible(
                                fit: FlexFit.tight,
                                flex: widget.myResp[264],
                                child: Row(
                                  children: <Widget>[
                                    Padding(
                                      padding:
                                          EdgeInsets.only(right: widget.myResp[265],
                                           left: widget.myResp[266]),
                                      child: CustomCircleAvatar(
                                        imagePath:
                                            widget.problems.bookauthoravater,
                                        animationDuration: 100,
                                        radius: widget.myResp[267],
                                        mySize: widget.myResp[268],
                                      ),
                                    ),
                                    Flexible(
                                        child: Text(
                                      widget.problems.bookauthorname,
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        fontSize: widget.myResp[269],
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ))
                                  ],
                                ),
                              ),
                              Flexible(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Flexible(
                                      child: Text(
                                        widget.problems.dateBook,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: widget.myResp[270],
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                fit: FlexFit.tight,
                                flex: widget.myResp[271],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  )
          ],
        ),
      ),
    );
    return widget.isLast
        ? Column(
            children: <Widget>[
              _myCard,
              widget.model.getCurrentPage < widget.model.getTotalPage
                  ? Padding(
                      padding: EdgeInsets.only(top: widget.myResp[272], bottom: widget.myResp[273]),
                      child: widget.model.isLoadingFetchProblemsMore
                          ? AdapativProgressIndicator()
                          : FlatButton(
                              highlightColor: Colors.red,
                              splashColor: Theme.of(context).primaryColor,
                              child: Text(
                                Translations.of(context).allProblemsMore,
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: widget.myResp[274],
                                ),
                              ),
                              onPressed: () {
                                if(widget.typeProblems == 'differentproblems'){
                                  widget.model.fetchMoreDifferentProblems(widget.typeProblemsName);
                                } else {
                                  widget.model.fetchMoreProblems();
                                }
                                
                              },
                            ),
                    )
                  : Container()
            ],
          )
        : _myCard;
  }
}
