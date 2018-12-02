import 'package:flutter/material.dart';
import 'package:woundcare/misc/Colors.dart';

class PageHeader extends StatelessWidget{
  String title;
  bool showBack;
  var backPressed;

  PageHeader({String title="", bool showBack=true, var backPressed}){
    this.title = title;
    this.showBack = showBack;
    this.backPressed = backPressed;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter, // 10% of the width, so there are ten blinds.
            // ignore: undefined_identifier
            colors: [AppColors.hexToColor("#3867B4"), AppColors.hexToColor("#148FB4")], // whitish to gray
            tileMode: TileMode.mirror, // repeats the gradient over the canvas
          ),
        ),
        child: SafeArea(
            bottom: false,
            child: Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        (){
                          if(showBack){
                            return IconButton(
                              icon: Icon(Icons.arrow_back),
                              color: Colors.white,
                              onPressed: (){
                                if(this.backPressed != null){
                                  this.backPressed();
                                }
                              },
                            );
                          }else{
                            return SizedBox(
                              height: 48,
                              width: 0,
                            );
                          }
                        }(),
                        Padding(
                          padding: EdgeInsets.only(
                              left: 10.0
                          ),
                          child: Text(
                              this.title,
                              style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.white
                              )
                          ),
                        )
                      ],
                    ),
                  ],
                )
            )
        )
    );
  }

}