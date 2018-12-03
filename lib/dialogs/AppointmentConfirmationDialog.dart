import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:woundcare/misc/Colors.dart';

class AppointmentConfirmationDialog extends StatefulWidget {
  int index;
  var callback;
  DateTime date;

  AppointmentConfirmationDialog(DateTime date,int index, callback){
    this.date = date;
    this.index = index;
    this.callback = callback;
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return AppointmentConfirmationDialogState(this.date,this.index, this.callback);
  }

}

class AppointmentConfirmationDialogState extends State<AppointmentConfirmationDialog> {
  String name;
  String icon;
  String color;
  int index;
  var callback;
  DateTime date;

  AppointmentConfirmationDialogState(DateTime date,int index, var callback){
    this.date = date;
    this.index = index;
    this.callback = callback;
  }

  @override
  Widget build(BuildContext context) {
    return new AlertDialog(
        content: SingleChildScrollView(
          child: Center(
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 30.0,bottom: 5.0),
                    child: Text(
                      "Appointment",
                      style: TextStyle(
                          fontSize: 18.0,
                          color: AppColors.hexToColor("#3768B4")
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 10.0),
                    child: Text(
                      "Your appointment will begin on",
                      style: TextStyle(
                          fontSize: 14.0,
                          color: AppColors.hexToColor("#707070")
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5.0, bottom: 20.0),
                    width: double.infinity,
                    height: 1.0,
                    color: AppColors.hexToColor("#D1D1D1") ,
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 5.0),
                    child: Text(
                      DateFormat.yMMMMd("en_US").format(date),
                      style: TextStyle(
                          fontSize: 18.0,
                          color: AppColors.hexToColor("#2C2C2C")
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 0.0),
                    child: Text(
                      DateFormat.jm("en_US").format(date),
                      style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          color: AppColors.hexToColor("#000000")
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ),
        ) ,

        actions: <Widget>[
          new FlatButton(
              onPressed: (){
                callback(index);
                Navigator.of(context).pop();
              },
              child: new Text("Confirm")
          ),

          new FlatButton(
              onPressed: (){
                Navigator.of(context).pop();
              },
              child: new Text("Cancel")
          )
        ]
    );
  }

}