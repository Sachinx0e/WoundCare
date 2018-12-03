import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:woundcare/dialogs/ConfirmationDialog.dart';
import 'package:woundcare/misc/Colors.dart';
class AppointmentDialog extends StatefulWidget {
  DateTime date;

  AppointmentDialog(DateTime date){
    this.date = date;
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return AppointmentDialogState(date);
  }

}

class AppointmentDialogState extends State<AppointmentDialog> {

  DateTime date;

  AppointmentDialogState(DateTime date){
    this.date = date;
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
                      "Your appointment is scheduled at",
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
                Navigator.of(context).pop();
              },
              child: new Text("Reschedule")
          ),

          new FlatButton(
              onPressed: (){
                _showDialog(context);
              },
              child: new Text("Delete")
          ),

          new FlatButton(
              onPressed: (){
                Navigator.of(context).pop();
              },
              child: new Text("Close")
          )
        ]
    );
  }

  static _showDialog(BuildContext context){
    showDialog(
        context: context,
        builder: (BuildContext context){
          return ConfirmationDialog();
        }
    );
  }

}