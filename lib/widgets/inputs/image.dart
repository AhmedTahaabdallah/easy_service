import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import '../../scoped-models/main.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../../translation/translation_strings.dart';
class ImageInput extends StatefulWidget {
  final Function setImage;
  final MainModel model;
  final List<dynamic> myResp;
  ImageInput(this.setImage, this.model, this.myResp);
  @override
  State<StatefulWidget> createState() {
    return _ImageInputState();
  }
}

class _ImageInputState extends State<ImageInput> {
  File _imageFile;

  void _getImage(BuildContext context, ImageSource source) {
    ImagePicker.pickImage(source: source, maxWidth: 400.0).then((File image) {
      setState(() {
        _imageFile = image;
      });
      widget.setImage(image);
      Navigator.pop(context);
    });
  }
  
  void _openImagePicer(BuildContext context) {
    final screenHight = MediaQuery.of(context).size.height;
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(widget.myResp[574]),
                topRight: Radius.circular(widget.myResp[575])),
            child: GestureDetector(
              onTap: () {},
              child: Container(
                color: Colors.white,
                height: MediaQuery.of(context).orientation ==
                        Orientation.landscape
                    ? screenHight * widget.myResp[576]
                    : screenHight * widget.myResp[577],
                padding: EdgeInsets.all(widget.myResp[578]),
                child: ListView(
                  
                  children: <Widget>[
                    SizedBox(
                      height: widget.myResp[579],
                    ),
                    Center(
                                          child: Text(
                        Translations.of(context).imagePickAnImage,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: widget.myResp[580]),
                      ),
                    ),
                    SizedBox(
                      height: widget.myResp[581],
                    ),
                    Center(
                      child: FlatButton(
                          textColor: Theme.of(context).primaryColor,
                          onPressed: () {
                            _getImage(context, ImageSource.camera);

                          },
                          child: Text(Translations.of(context).imageUseCamera,
                              style: TextStyle(fontSize: widget.myResp[582]))),
                    ),
                    Center(
                                          child: FlatButton(
                          textColor: Theme.of(context).primaryColor,
                          onPressed: () {
                            _getImage(context, ImageSource.gallery);

                          },
                          child: Text(Translations.of(context).imageUseGallery,
                              style: TextStyle(fontSize: widget.myResp[583]))),
                    ),

                            
                  ],
                ),
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    final buttonColor = Theme.of(context).primaryColor;
    Widget preveiwImage = Text(
      Translations.of(context).imagePleasePickAnImage,
      style: TextStyle(fontSize: widget.myResp[584]),
    );
    if (_imageFile != null) {
      preveiwImage = Image.file(
        _imageFile,
        fit: BoxFit.cover,
        height: MediaQuery.of(context).size.width * widget.myResp[585],
        width: MediaQuery.of(context).size.width * widget.myResp[586],
        //alignment: Alignment.center,
      );
    } else if (widget.model.user.avater != null) {
      /*preveiwImage = Image.network(widget.product.image,
        fit: BoxFit.cover,
        height: 300.0,
        width: MediaQuery.of(context).size.width * .95,
        alignment: Alignment.topCenter,);*/
      preveiwImage = CachedNetworkImage(
          imageUrl: widget.model.user.avater,
          placeholder: (context, url) => Center(
                child: CircularProgressIndicator(),
              ),
          errorWidget: (context, url, error) => Text(
                Translations.of(context).imageCanNotloadProductImage,
                style: TextStyle(fontSize: widget.myResp[584]),
                textAlign: TextAlign.center,
              ),
          fit: BoxFit.cover,
          height: MediaQuery.of(context).size.height * widget.myResp[585],
          width: MediaQuery.of(context).size.width * widget.myResp[586],
          //alignment: Alignment.topCenter,
          );
    }
    return Column(
      children: <Widget>[
        OutlineButton(
          borderSide: BorderSide(color: buttonColor, width: widget.myResp[587]),
          onPressed: () => _openImagePicer(context),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.camera_alt,
                color: buttonColor,
                size: widget.myResp[591],
              ),
              SizedBox(
                width: widget.myResp[588],
              ),
              Text(
                Translations.of(context).imageAddImage,
                style: TextStyle(color: buttonColor, fontSize: widget.myResp[589]),
              )
            ],
          ),
        ),
        SizedBox(
          height: widget.myResp[590],
        ),
        preveiwImage
      ],
    );
  }
}
