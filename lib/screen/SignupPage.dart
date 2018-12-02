import 'dart:async';

import 'package:flutter/material.dart';
import 'package:woundcare/components/InputField.dart';
import 'package:woundcare/core/State.dart';
import 'package:woundcare/misc/Colors.dart';

class SignupPage extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SignupPageState();
  }

}

enum RequestState{
  NOT_SENT,
  IN_PROGRESS,
  OK,
  Error
}

class SignupPageState extends State<SignupPage> {

  String email = "" ;
  String password = "";
  String confirm_password = "";
  RequestState request_state = RequestState.NOT_SENT;
  String message;

  @override
  Widget build(BuildContext context) {
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
          child: SingleChildScrollView(
            child: Container(
                margin: EdgeInsets.only(top: 20.0, bottom: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[

                    InputField(label: "EMAIL", hintText: "Enter email address", onChanged: (value){
                        setState(() {
                          email = value;
                        });
                    }),
                    InputField(label: "CREATE PASSWORD", hintText: "password", onChanged: (value){
                      setState(() {
                        password = value;
                      });
                    }),
                    InputField(label: "CONFIRM PASSWORD", hintText: "password",onChanged: (value){
                      setState(() {
                        confirm_password = value;
                      });
                    }),


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
                        onPressed: () {
                          if(email.isEmpty || password.isEmpty || confirm_password.isEmpty){
                              this.setState((){
                                  request_state = RequestState.Error;
                                  message = "Input cannot be empty";
                              });
                          }else if(password != confirm_password){
                            this.setState((){
                              request_state = RequestState.Error;
                              message = "Passwords should match";
                            });
                          }else{
                            this.setState((){
                              request_state = RequestState.IN_PROGRESS;
                              new Timer(new Duration(seconds: 6),(){
                                AppState.getInstance().setIsLoggedIn(true);
                                Navigator.pushNamed(context, "/app_page");
                              });
                            });
                          }
                        },
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.only(top: 20.0),
                      child: (){
                        if(this.request_state == RequestState.NOT_SENT){
                          return Container();
                        }else if(this.request_state == RequestState.IN_PROGRESS){
                          return CircularProgressIndicator(
                            valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                          );
                        }else if(this.request_state == RequestState.OK){
                          return Container();
                        }
                        else{
                          return Text(
                            this.message,
                            style: TextStyle(
                              color: Colors.white
                            ),
                          );
                        }
                      }(),
                    )

                  ],
                )
            ),
          ),
        ),
      ),
    );
  }

}