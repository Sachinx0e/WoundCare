import 'package:flutter/material.dart';
import 'package:woundcare/components/HomePageIconButton.dart';
import 'package:woundcare/components/HomePageInfo.dart';
import 'package:woundcare/components/HomePageOption.dart';
import 'package:woundcare/misc/Colors.dart';

class HomePage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomePageState();
  }

}

class HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                width: double.infinity,
                height: 180.0,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter, // 10% of the width, so there are ten blinds.
                      colors: [AppColors.hexToColor("#3867B4"), AppColors.hexToColor("#148FB4")], // whitish to gray
                      tileMode: TileMode.mirror, // repeats the gradient over the canvas
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(top: 50.0,left: 20.0, right: 20.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                          width: 80.0,
                          height: 80.0,
                          child: Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white
                            ),
                          ),
                        ),

                        Container(
                          margin: EdgeInsets.only(left: 10.0, right: 20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                  "Tiffany Doe",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0
                                  )
                              ),
                              Text(
                                  "25 years",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14.0
                                  )
                              ),
                              Text(
                                  "Newark, DE",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14.0
                                  )
                              )
                            ],
                          ),
                        ),

                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              RaisedButton(
                                color: AppColors.hexToColor("#ACFAC7"),
                                child: SizedBox(
                                  child: Text(
                                    "My Account",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: AppColors.hexToColor("#356AB4")
                                    ),
                                  ),
                                ),
                                onPressed: () {},
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ),
              ),

              //sections
              Expanded(
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    HomePageInfo(),
                    HomePageInfo()
                  ]
                )
              ),

              Expanded(
                  child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        HomePageInfo(),
                        HomePageInfo()
                      ]
                  )
              ),

              Expanded(
                  child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        HomePageInfo(),
                        HomePageInfo()
                      ]
                  )
              ),

              Expanded(
                  flex: 3,
                  child: Container(
                    color: AppColors.hexToColor("#DDDDDD"),
                    child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          children: <Widget>[
                            Expanded(
                                child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: <Widget>[
                                      HomePageOption(),
                                      HomePageOption(),
                                    ]
                                )
                            ),
                            Expanded(
                                child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: <Widget>[
                                      HomePageOption(),
                                      HomePageOption(),
                                    ]
                                )
                            ),
                          ],
                        ),
                    )
                  ),
              ),

              Container(
                child: Row(
                  children: <Widget>[
                    Expanded(
                        child: HomePageIconButton(Icons.home, "Home",iconSize: 26.0,)
                    ),
                    Expanded(
                        child: HomePageIconButton(Icons.local_hospital, "My Health", iconSize: 25.0,)
                    ),
                    Expanded(
                        child: HomePageIconButton(Icons.calendar_today, "Appointments", iconSize: 25.0,)
                    ),
                    Expanded(
                        child: HomePageIconButton(Icons.receipt, "History", iconSize: 25.0,)
                    ),
                    Expanded(
                        child: HomePageIconButton(Icons.person, "Profile")
                    ),
                  ],
                ),
              )

            ],
          ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

}