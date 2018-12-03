import 'package:flutter/material.dart';
import 'package:woundcare/components/HomePageIconButton.dart';
import 'package:woundcare/components/HomePageInfo.dart';
import 'package:woundcare/components/HomePageOption.dart';
import 'package:woundcare/misc/Colors.dart';

class HomePage extends StatefulWidget {
  var woundAnalysClick;

  HomePage({var woundAnalysisClick}){
    this.woundAnalysClick = woundAnalysisClick;
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomePageState(this.woundAnalysClick);
  }

}

class HomePageState extends State<HomePage> {
  int selectedOption;
  var woundAnalysClick;


  HomePageState(var woundAnalysisClick){
    this.woundAnalysClick = (){
      woundAnalysisClick();
      this.setState((){
        selectedOption = 1;
      });
    };
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
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
                                image: DecorationImage(
                                    image: AssetImage("assets/patient.png"),
                                    fit: BoxFit.fill
                                )
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
                child: Padding(
                  padding: EdgeInsets.only(left: 20.0,right: 20.0),
                  child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        HomePageInfo(image_name: "assets/heart.svg",label: "Heart Rate", count: "56"),
                        HomePageInfo(image_name: "assets/pulse.svg",label: "Blood Pressure",count: "120/80"),
                      ]
                  )
                )
              ),

              Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.0, right: 20.0),
                    child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          HomePageInfo(image_name: "assets/height.svg",label: "Height",count: "5’7’’ft"),
                          HomePageInfo(image_name: "assets/weight.svg",label: "Weight",count: "135 lb"),
                        ]
                    )
                  ),
              ),

              Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.0,right: 20.0),
                    child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          HomePageInfo(image_name: "assets/pulse.svg",label: "Pulse Rate",count: "72"),
                          HomePageInfo(image_name: "assets/kcal.svg",label: "Calories",count: "1800"),
                        ]
                    )
                  ),
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
                                      HomePageOption(image: "assets/message.svg", label: "Message"),
                                      HomePageOption(image: "assets/notification.svg", label: "Notification"),
                                    ]
                                )
                            ),
                            Expanded(
                                child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: <Widget>[
                                      HomePageOption(image: "assets/camera.svg", label: "Wound analysis",onClick:woundAnalysClick),
                                      HomePageOption(image: "assets/blog.svg", label: "Blog"),
                                    ]
                                )
                            ),
                          ],
                        ),
                    )
                  ),
              ),



            ],
          ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

}