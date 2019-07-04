import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../widgets/ui_element/adapativ_progress_indicator.dart';
import '../translation/translation_strings.dart';

class ContactDeveloper extends StatefulWidget {
  final Function myRespFunc;
  ContactDeveloper(this.myRespFunc);
  @override
  _ContactDeveloperState createState() => _ContactDeveloperState();
}

class _ContactDeveloperState extends State<ContactDeveloper> {
  @override
  Widget build(BuildContext context) {
    List<dynamic> myResp = widget.myRespFunc(context: context);
    return Scaffold(
      appBar: AppBar(
        title: Text(Translations.of(context).contactdeveloperAppBarTitle,
        style: TextStyle(fontSize: myResp[466]),),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: Center(
                      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                top: myResp[467],
                right: myResp[468],
                left: myResp[469],
                bottom: myResp[470],
              ),
              child: CachedNetworkImage(
                imageUrl:
                    "https://real-es.000webhostapp.com/real-estate-servicing/public/images/ahmedtaha.png",
                placeholder: (context, url) => AdapativProgressIndicator(),
                errorWidget: (context, url, error) => new Icon(
                      Icons.error,
                      color: Colors.red,
                      size: myResp[471],
                    ),
              ),
            ),
            Text(
              Translations.of(context).contactdeveloperName,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: myResp[472],
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: myResp[473],),
            Text(
              '01141751527',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: myResp[474],
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: myResp[475],),
            Text(
              'ahmedtaha200079@gmail.com',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: myResp[476],
                fontWeight: FontWeight.w600,
              ),
            )
        ],
      ),
          )),
    );
  }
}
