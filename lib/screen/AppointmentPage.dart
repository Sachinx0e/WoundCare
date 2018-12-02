import 'package:flutter/material.dart';
import 'package:woundcare/components/PageHeader.dart';
import 'package:woundcare/misc/Colors.dart';

class AppointmentPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return AppointmentPageState();
  }

}

class AppointmentPageState extends State<AppointmentPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.hexToColor("#F9F9F9"),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, "new_appointment");
          },
          tooltip: 'Increment',
          child: Icon(Icons.add),
          elevation: 2.0,
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              PageHeader(title: "Appointments",showBack: false,),
              Expanded(
                child: SafeArea(
                    top: false,
                    child: Container(
                      margin: EdgeInsets.only(top: 5.0,left: 5.0, right: 5.0, bottom: 10.0),
                      child: MediaQuery.removePadding(
                          context: context,
                          removeTop: true,
                          child: GridView.builder(
                              gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount:  2,
                                  childAspectRatio: 1.2,
                                  mainAxisSpacing: 5.0,
                                  crossAxisSpacing: 5.0
                              ),
                              itemBuilder: (BuildContext context, int index){
                                return Card(
                                    child: InkWell(
                                      onTap: (){},
                                      child: Padding(
                                        padding: EdgeInsets.only(left: 00.0, right: 0.0, top: 10.0, bottom: 0.0 ),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: <Widget>[

                                            Expanded(
                                                flex: 4,
                                                child: Center(
                                                  child: Column(
                                                    mainAxisSize: MainAxisSize.min,
                                                    children: <Widget>[
                                                      Padding(
                                                        padding: EdgeInsets.only(bottom: 5.0),
                                                        child: Text(
                                                          "24",
                                                          style: TextStyle(
                                                              fontSize: 40.0
                                                          ),
                                                        ),
                                                      ),

                                                      Text(
                                                        "Dec",
                                                        style: TextStyle(
                                                            color: AppColors.hexToColor("#6a6a6aff"),
                                                            fontSize: 16.0
                                                        ),
                                                      ),

                                                    ],
                                                  ) ,
                                                )
                                            ),


                                            Container(
                                              margin: EdgeInsets.only(top: 0.0, bottom: 0.0),
                                              child: SizedBox(
                                                  width: double.infinity,
                                                  height: 0.5,
                                                  child: Container(
                                                    color: AppColors.hexToColor("#ccccccff"),
                                                  )
                                              ),
                                            ),

                                            Expanded(
                                              flex: 2,
                                              child: Center(
                                                child: Text(
                                                  "9:15 AM",
                                                  style: TextStyle(
                                                      fontSize: 14.0
                                                  ),
                                                ),
                                              ),
                                            )

                                          ],
                                        ),
                                      )
                                    )
                                );
                              }
                          )
                      ),
                    ),
                ),
              )
            ],
          ),
        )
    );
  }

}