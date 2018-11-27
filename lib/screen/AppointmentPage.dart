import 'package:flutter/material.dart';
import 'package:woundcare/components/PageHeader.dart';

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
        body: Container(
          color: Colors.white,
          child: Column(
            children: <Widget>[
              PageHeader(title: "Appointments"),
              Expanded(
                child: SafeArea(
                    top: false,
                    child: ListView.builder(
                      itemCount: 30,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          color: Colors.white,
                          child: Container(
                            child: Padding(
                              padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0, bottom: 20.0),
                              child: Row(
                                children: <Widget>[
                                  Expanded(
                                    child: Text(
                                        "Appointment Time : ",
                                        style: TextStyle(
                                          fontSize: 20.0
                                        ),
                                    ),
                                  ),

                                  Expanded(
                                    child: Text(
                                      " ",
                                      style: TextStyle(
                                          fontSize: 20.0
                                      ),
                                    ),
                                  )

                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    )
                ),
              )
            ],
          ),
        )
    );
  }

}