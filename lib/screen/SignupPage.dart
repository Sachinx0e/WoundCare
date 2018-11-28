import 'package:flutter/material.dart';
import 'package:woundcare/components/InputField.dart';
import 'package:woundcare/misc/Colors.dart';

class SignupPage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter, // 10% of the width, so there are ten blinds.
            // ignore: undefined_identifier
            colors: [AppColors.hexToColor("#3867B4"), AppColors.hexToColor("#148FB4")], // whitish to gray
            tileMode: TileMode.mirror, // repeats the gradient over the canvas
          ),
        ),
        constraints: BoxConstraints.expand(),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[

              InputField(label: "MOBILE NUMBER", hintText: "Enter mobile number"),
              InputField(label: "EMAIL", hintText: "Enter email address"),
              InputField(label: "CREATE PASSWORD", hintText: "password"),
              InputField(label: "CONFIRM PASSWORD", hintText: "password"),


              Container(
                margin: EdgeInsets.only(top: 50.0,left: 20.0, right: 20.0),
                child: RaisedButton(
                  color: Colors.white,
                  shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(50.0)),
                  child: Padding(
                    padding: EdgeInsets.only(top: 15.0, bottom: 15.0,left: 50.0, right: 50.0),
                    child: Text(
                      "SIGNUP",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: AppColors.SIGNUP_FACEBOOK_BUTTON_COLOR()
                      ),
                    ),
                  ),
                  onPressed: () {},
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }

}