import 'package:flutter/material.dart';
import 'package:real_estate_servicing/models/user.dart';
import 'package:scoped_model/scoped_model.dart';
import '../../models/user.dart';
import '../../scoped-models/main.dart';
//import 'package:cached_network_image/cached_network_image.dart';
import '../../widgets/ui_element/adapativ_progress_indicator.dart';
import '../../widgets/circle_avatar/customcircleavatar.dart';
import './users_card_oprateors/deleteuser.dart';
import './users_card_oprateors/changeusertype.dart';
import '../../translation/translation_strings.dart';


class UserCard extends StatefulWidget {
  final User users;
  final bool isLast;
  final MainModel model;
  final int index;
  final BuildContext context;
  final String typeUsersName;
  final List<dynamic> myResp;
  //final GlobalKey<ScaffoldState> scaffoldKey;
  UserCard(this.users, this.model, this.index,this.context,
      this.typeUsersName, this.myResp,{this.isLast = false});

  @override
  State<StatefulWidget> createState() {
    return _UserCardState();
  }
}

class _UserCardState extends State<UserCard>
    with TickerProviderStateMixin {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    User myUser = widget.model.user;

    Widget _myCard = GestureDetector(
      onTap: () {
        
      },
      child: Card(
        color: Color(0xff5066F3),
        margin: EdgeInsets.only(
          bottom: widget.isLast ? widget.myResp[359] : 
          widget.myResp[360],
          right: widget.myResp[362],
          left: widget.myResp[361],
          top: widget.index == 0 ? widget.myResp[363] : widget.myResp[364],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                top: widget.myResp[365],
                bottom: widget.myResp[368],
                right: widget.myResp[367],
                left: widget.myResp[366],
              ),
              child: Container(
                padding: EdgeInsets.all(widget.myResp[369]),
                decoration: BoxDecoration(
                    color: Color(0xffD9E9BC),
                    borderRadius: BorderRadius.circular(widget.myResp[370])),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Flexible(
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(right: widget.myResp[371], left: widget.myResp[372]),
                            child: CustomCircleAvatar(
                              imagePath: widget.users.avater != null ?  widget.users.avater: 
                              'https://real-es.000webhostapp.com/real-estate-servicing/public/images/users/normal-user.png',
                              animationDuration: 100,
                              radius: widget.myResp[373],
                              mySize: widget.myResp[374],
                            ),
                          ),
                          Flexible(
                            fit: FlexFit.tight,
                            flex: widget.myResp[375] ,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  widget.users.userName,
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: widget.myResp[376],
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  widget.users.userTypeName,
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: widget.myResp[377],
                                    fontWeight: FontWeight.w600,
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      fit: FlexFit.tight,
                      flex: widget.myResp[378],
                    ),
                    Flexible(
                      child: ScopedModelDescendant<MainModel>(
                          builder: (context, child, model) {
                        return Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            model.isLoadinProgressAllUsers &&
                                    model.selAllUserId == widget.users.id
                                    && model.userTypeProcessor == 'changetype'
                                ? AdapativProgressIndicator()
                                : ChangeUserType(model, widget.users, context, widget.typeUsersName, widget.myResp),
                            model.isLoadinProgressAllUsers &&
                                    model.selAllUserId == widget.users.id
                                    && model.userTypeProcessor == 'deleteuser'
                                ? AdapativProgressIndicator()
                                : myUser.userstypeId == 1 && myUser.userstypeId != null
                                    //? _buildDeleteProblem()
                                    ? DeleteUserCard(
                                        model, widget.users, context, widget.myResp)
                                    : Container()
                          ],
                        );
                      }),
                      fit: FlexFit.tight,
                      flex: widget.myResp[379],
                    )
                  ],
                ),
              ),
            ),            
          ],
        ),
      ),
    );
    return widget.isLast
        ? Column(
            children: <Widget>[
              _myCard,
              widget.model.currentPageAllUsers < widget.model.totalPageAllUsers
                  ? Padding(
                      padding: EdgeInsets.only(top: widget.myResp[380], bottom: widget.myResp[381]),
                      child: widget.model.isLoadingFetchAllUsersMore
                          ? AdapativProgressIndicator()
                          : FlatButton(
                              highlightColor: Colors.red,
                              splashColor: Theme.of(context).primaryColor,
                              child: Text(
                                Translations.of(context).allProblemsMore,
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: widget.myResp[382],
                                ),
                              ),
                              onPressed: () {
                                
                                widget.model.fetchMoreAllUsersType();
                                                                
                              },
                            ),
                    )
                  : Container()
            ],
          )
        : _myCard;
  }
}
