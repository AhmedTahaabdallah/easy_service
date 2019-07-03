import 'package:flutter/material.dart';
import '../../scoped-models/main.dart';
import '../../pages/usertype.dart';
import '../../translation/translation_strings.dart';


class ThirdSection extends StatefulWidget {
  final MainModel model;
  final List<dynamic> myResp;
  ThirdSection(this.model, this.myResp);
  @override
  _ThirdSectionState createState() => _ThirdSectionState();
}

class _ThirdSectionState extends State<ThirdSection> {
  @override
  Widget build(BuildContext context) {
    Widget _content = Container();
    if (widget.model.user.userstypeId <= 2) {
      _content = Padding(
        padding: EdgeInsets.only(
          top: widget.myResp[125],
          left: widget.myResp[126],
          right: widget.myResp[127],
          bottom: widget.myResp[128],
        ),
        child: Column(
          children: <Widget>[
            widget.model.user.userstypeId == 2
                ? Container()
                : Padding(
                    padding: EdgeInsets.only(
                      top: widget.myResp[129],
                      bottom: widget.myResp[132],
                      right: widget.myResp[131],
                      left: widget.myResp[130],
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return UserTypePage(
                                'admins', widget.model, Translations.of(context).allProblemsDrawerAdminsTitle,
                                widget.myResp);
                          },
                        ));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.brightness_7,
                                color: Colors.white,
                                size: widget.myResp[133],
                              ),
                              SizedBox(
                                width: widget.myResp[134],
                              ),
                              Text(
                                Translations.of(context).allProblemsDrawerAdmins,
                                style: TextStyle(
                                    fontSize: widget.myResp[135],
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                          widget.model.allDrawerCount['admin'] != 0
                              ? Container(
                                  decoration: BoxDecoration(
                                      color: Colors.lightBlue,
                                      borderRadius: BorderRadius.circular(widget.myResp[136])),
                                  padding: EdgeInsets.only(
                                    right: widget.myResp[137],
                                    left: widget.myResp[138],
                                    top: widget.myResp[139],
                                    bottom: widget.myResp[140],
                                  ),
                                  child: Text(
                                    widget.model.allDrawerCount['admin']
                                        .toString(),
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: widget.myResp[141],
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                )
                              : Container()
                        ],
                      ),
                    ),
                  ),
            Padding(
              padding: EdgeInsets.only(
                top: widget.myResp[142],
                bottom: widget.myResp[145],
                right: widget.myResp[144],
                left: widget.myResp[143],
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return UserTypePage(
                                'users', widget.model, Translations.of(context).allProblemsDrawerUsersTitle,
                                widget.myResp);
                          },
                        ));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.brightness_6,
                          color: Colors.white,
                          size: widget.myResp[146],
                        ),
                        SizedBox(
                          width: widget.myResp[147],
                        ),
                        Text(
                          Translations.of(context).allProblemsDrawerUsers,
                          style: TextStyle(
                              fontSize: widget.myResp[148],
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    widget.model.allDrawerCount['user'] != 0
                        ? Container(
                            decoration: BoxDecoration(
                                color: Colors.lightBlue,
                                borderRadius: BorderRadius.circular(widget.myResp[149])),
                            padding: EdgeInsets.only(
                              right: widget.myResp[150],
                              left: widget.myResp[151],
                              top: widget.myResp[152],
                              bottom: widget.myResp[153],
                            ),
                            child: Text(
                              widget.model.allDrawerCount['user'].toString(),
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: widget.myResp[154],
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          )
                        : Container()
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: widget.myResp[155],
                bottom: widget.myResp[158],
                right: widget.myResp[157],
                left: widget.myResp[156],
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return UserTypePage(
                                'clients', widget.model, Translations.of(context).allProblemsDrawerClientsTitle,
                                widget.myResp);
                          },
                        ));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.brightness_5,
                          color: Colors.white,
                          size: widget.myResp[159],
                        ),
                        SizedBox(
                          width: widget.myResp[160],
                        ),
                        Text(
                          Translations.of(context).allProblemsDrawerClients,
                          style: TextStyle(
                              fontSize: widget.myResp[161],
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    widget.model.allDrawerCount['client'] != 0
                        ? Container(
                            decoration: BoxDecoration(
                                color: Colors.lightBlue,
                                borderRadius: BorderRadius.circular(widget.myResp[162])),
                            padding: EdgeInsets.only(
                              right: widget.myResp[163],
                              left: widget.myResp[164],
                              top: widget.myResp[165],
                              bottom: widget.myResp[166],
                            ),
                            child: Text(
                              widget.model.allDrawerCount['client'].toString(),
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: widget.myResp[167],
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          )
                        : Container()
                  ],
                ),
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(
                top: widget.myResp[168],
                bottom: widget.myResp[171],
                right: widget.myResp[170],
                left: widget.myResp[169],
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return UserTypePage(
                                'new', widget.model, Translations.of(context).allProblemsDrawerNewTitle,
                                widget.myResp);
                          },
                        ));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.brightness_2,
                          color: Colors.white,
                          size: widget.myResp[172],
                        ),
                        SizedBox(
                          width: widget.myResp[173],
                        ),
                        Text(
                          Translations.of(context).allProblemsDrawerNew,
                          style: TextStyle(
                              fontSize: widget.myResp[174],
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    widget.model.allDrawerCount['new'] != 0
                        ? Container(
                            decoration: BoxDecoration(
                                color: Colors.lightBlue,
                                borderRadius: BorderRadius.circular(widget.myResp[175])),
                            padding: EdgeInsets.only(
                              right: widget.myResp[176],
                              left: widget.myResp[177],
                              top: widget.myResp[178],
                              bottom: widget.myResp[179],
                            ),
                            child: Text(
                              widget.model.allDrawerCount['new'].toString(),
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: widget.myResp[180],
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          )
                        : Container()
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
