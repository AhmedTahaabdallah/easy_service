import 'package:flutter/material.dart';
import '../../scoped-models/main.dart';
import '../../pages/editprofile.dart';
import '../../pages/auth.dart';
import '../../translation/translation_strings.dart';
import '../../funcations/responsevefuncation.dart';


class FourthSection extends StatelessWidget {
  final MainModel model;
  final BuildContext contexttt;
  final List<dynamic> myResp;
  FourthSection(this.model, this.contexttt,this.myResp);
  @override
  Widget build(BuildContext context) {
    Widget _content = Container();

    _content = Padding(
      padding: EdgeInsets.only(
        top: myResp[181],
        left: myResp[182],
        right: myResp[183],
        bottom: myResp[184],
      ),
      child: Column(
        children: <Widget>[
          Padding(
              padding: EdgeInsets.only(
                top: myResp[185],
                bottom: myResp[188],
                right: myResp[187],
                left: myResp[186],
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return EditProfile( model, myResp);
                    }));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.edit,
                          color: Colors.white,
                          size: myResp[189],
                        ),
                        SizedBox(
                          width: myResp[190],
                        ),
                        Text(
                          Translations.of(context).allProblemsDrawerEditProfile,
                          style: TextStyle(
                              fontSize: myResp[191],
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    model.user.userstypeId == 5 ? Container(
                      decoration: BoxDecoration(
                          color: Colors.pink,
                          borderRadius: BorderRadius.circular(myResp[192])),
                      padding: EdgeInsets.only(
                        right: myResp[193],
                        left: myResp[194],
                        top: myResp[195],
                        bottom: myResp[196],
                      ),
                      child: Text(
                        Translations.of(context).allProblemsDrawerEditProfileImportant,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: myResp[197],
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
              top: myResp[198],
              bottom: myResp[201],
              right: myResp[200],
              left: myResp[199],
            ),
            child: GestureDetector(
              onTap: () {
                if(model.isLoadingFetchProblems || model.isLoadingFetchProblemsMore
                || model.isLoadinProgress){
                  Scaffold.of(contexttt).showSnackBar(SnackBar(
                    backgroundColor: Theme.of(context).primaryColor,
                    content: Text(Translations.of(context).allProblemsScaffoldMessageTwo,textAlign: TextAlign.center, style: TextStyle(fontSize: myResp[202], color: Colors.white),),
                  ));
                  return;
                }
                model.logout().then((value){
                  if(value){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                      return AuthPage(getResponseve);
                    }));
                  }
                });
              },
              child: Row(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.exit_to_app,
                        color: Colors.white,
                        size: myResp[203],
                      ),
                      SizedBox(
                        width: myResp[204],
                      ),
                      Text(
                        Translations.of(context).allProblemsDrawerLogout,
                        style: TextStyle(
                            fontSize: myResp[205],
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );

    return _content;
  }
}
