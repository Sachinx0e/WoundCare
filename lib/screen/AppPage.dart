import 'package:flutter/material.dart';
import 'package:woundcare/components/HomePageIconButton.dart';
import 'package:woundcare/components/HomePageInfo.dart';
import 'package:woundcare/components/HomePageOption.dart';
import 'package:woundcare/misc/Colors.dart';
import 'package:woundcare/screen/AppointmentPage.dart';
import 'package:woundcare/screen/HistoryPage.dart';
import 'package:woundcare/screen/HomePage.dart';
import 'package:woundcare/screen/WoundAnalysis.dart';

class AppPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return AppPageState();
  }

}

class AppPageState extends State<AppPage> {

  int selectedOption;
  PageController pageController;


  AppPageState(){
    this.pageController = PageController(
      keepPage: true
    );
    this.selectedOption = 0;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
          child: Column(
            children: <Widget>[

              Expanded(
                child: PageView(
                  controller: pageController,
                  onPageChanged: (page){
                    this.setState((){
                      selectedOption = page;
                    });
                  },
                  children: <Widget>[
                    HomePage(woundAnalysisClick: (){setState(() {
                      selectedOption = 1;
                      this.pageController.jumpToPage(selectedOption);
                    });}),
                    WoundAnalysis(),
                    AppointmentPage(),
                    HistoryPage(),
                  ],
                ),
              ),

              Container(
                color: Colors.white,
                child: SafeArea(
                  top: false,
                  child: Padding(
                    padding: EdgeInsets.only(top: 0.0),
                    child: Center(
                        child: Row(
                          children: <Widget>[
                            Expanded(
                                child: CustomIconButton(
                                    Icons.home,
                                    "Home",
                                    iconSize: 26.0,
                                    isSelected: (){return (selectedOption == 0);}(),
                                    onPress: (){
                                      this.setState((){
                                        selectedOption = 0;
                                        this.pageController.jumpToPage(selectedOption);
                                      });
                                    }
                                )
                            ),
                            Expanded(
                                child: CustomIconButton(
                                    Icons.local_hospital,
                                    "My Health",
                                    iconSize: 25.0,
                                    isSelected: (){return (selectedOption == 1);}(),
                                    onPress: (){
                                      this.setState((){
                                        selectedOption = 1;
                                        this.pageController.jumpToPage(selectedOption);
                                      });
                                    }
                                )
                            ),
                            Expanded(
                                child: CustomIconButton(
                                    Icons.calendar_today,
                                    "Appointments",
                                    iconSize: 24.0,
                                    isSelected: (){return (selectedOption == 2);}(),
                                    onPress: (){
                                      this.setState((){
                                        selectedOption = 2;
                                        this.pageController.jumpToPage(selectedOption);
                                      });
                                    }
                                )
                            ),
                            Expanded(
                                child: CustomIconButton(
                                    Icons.receipt,
                                    "History",
                                    iconSize: 25.0,
                                    isSelected: (){return (selectedOption == 3);}(),
                                    onPress: (){
                                      this.setState((){
                                        selectedOption = 3;
                                        this.pageController.jumpToPage(selectedOption);
                                      });
                                    }
                                )
                            ),
                            /**
                                Expanded(
                                child: HomePageIconButton(
                                Icons.person,
                                "Profile",
                                isSelected: (){return (selectedOption == 4);}(),
                                onPress: (){
                                this.setState((){
                                selectedOption = 4;
                                this.pageController.jumpToPage(selectedOption);
                                });
                                }
                                )
                                ),
                             **/
                          ],
                        )
                    ),
                  ),
                ),
              )


            ],
          ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

}