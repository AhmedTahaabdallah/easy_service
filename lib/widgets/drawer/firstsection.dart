import 'package:flutter/material.dart';
import '../../widgets/circle_avatar/customcircleavatar.dart';
import '../../scoped-models/main.dart';

class FirstSection extends StatefulWidget {
  final MainModel model;
  final List<dynamic> myResp;
  FirstSection(this.model, this.myResp);
  @override
  _FirstSectionState createState() => _FirstSectionState();
}

class _FirstSectionState extends State<FirstSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.teal,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: widget.myResp[604],
            child: DrawerHeader(
              padding: EdgeInsets.only(right: widget.myResp[605],
               left: widget.myResp[606],),
              margin: EdgeInsets.all(widget.myResp[607]),
              decoration: BoxDecoration(color: Theme.of(context).primaryColor),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(
                      top: widget.myResp[608],
                      bottom: widget.myResp[77],
                      right: widget.myResp[75],
                      left: widget.myResp[76],
                    ),
                    child: CustomCircleAvatar(
                      imagePath: widget.model.user.avater != null
                          ? widget.model.user.avater
                          : 'https://real-es.000webhostapp.com/real-estate-servicing/public/images/users/normal-user.png',
                      animationDuration: 100,
                      radius: widget.myResp[78],
                      mySize: widget.myResp[79],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        widget.model.user.userName,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: widget.myResp[80],
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        widget.model.user.userTypeName,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: widget.myResp[81],
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
