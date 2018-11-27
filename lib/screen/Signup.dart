import 'package:flutter/material.dart';
import 'package:woundcare/misc/Colors.dart';

class Welcome extends StatefulWidget {
  Welcome({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _WelcomeState createState() => new _WelcomeState();
}

class _WelcomeState extends State<Welcome> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/signup_background.png"),
                fit: BoxFit.fill
            )
          ),
          constraints: BoxConstraints.expand(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Container (
                margin: EdgeInsets.only(top: 80.0, bottom: 10.0),
                constraints: BoxConstraints(
                    minWidth: 100.0,
                    minHeight: 100.0,
                    maxWidth: 100.0,
                    maxHeight: 100.0
                ),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/ud_logo.png"),
                        fit: BoxFit.fill
                    )
                ),
              ),

              Text(
                "Dare to be first",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0
                ),
              ),

              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[


                      Container(
                        margin: EdgeInsets.only(bottom: 10.0),
                        child: Text(
                          "WoundCare",
                          style: TextStyle(
                              fontSize: 30.0,
                              color: Colors.white
                          ),
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.only(bottom: 25.0),
                        child: Text(
                          "Analyze the wound in seconds",
                          style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.white
                          ),
                        ),
                      ),

                      //Login button
                      RaisedButton(
                        color: AppColors.SIGNUP_BUTTON_COLOR(),
                        child: SizedBox(
                          width: double.infinity,
                          child: Text(
                            "Signup",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white
                            ),
                          ),
                        ),
                        onPressed: () {},
                      ),

                      //Connect button
                      RaisedButton(
                        color: AppColors.SIGNUP_FACEBOOK_BUTTON_COLOR(),
                        child: SizedBox(
                          width: double.infinity,
                          child: Text(
                            "Connect with facebook",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white
                            ),
                          ),
                        ),
                        onPressed: () {},
                      ),

                      //Register
                      Container(
                        margin: EdgeInsets.only(bottom: 50.0),
                        child: Text(
                          "Already have an account? Login now.",
                          style: TextStyle(
                              color: Colors.white
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),

                      //Terms and conditions
                      Container(
                          margin: EdgeInsets.only(bottom: 30.0),
                          child: SizedBox(
                            width: 200.0,
                            child: Text(
                              "By continuing, you agree to our Terms & Conditions.",
                              style: TextStyle(
                                  color: Colors.white
                              ),
                              textAlign: TextAlign.center,
                            ),
                          )
                      )

                    ],
                  ),
                )

              )

            ],
          ),
        )
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}