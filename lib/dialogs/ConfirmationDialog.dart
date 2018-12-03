import 'package:flutter/material.dart';
import 'package:woundcare/misc/Colors.dart';
class ConfirmationDialog extends StatefulWidget {


  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ConfirmationDialogState();
  }

}

class ConfirmationDialogState extends State<ConfirmationDialog> {
  String name;
  String icon;
  String color;

  ConfirmationDialogState({this.name = "", this.icon = "", this.color=""}){}

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
                    margin: EdgeInsets.only(top: 30.0,bottom: 0.0),
                    child: Text(
                      "Do you really want to delete this appointment?",
                      style: TextStyle(
                          fontSize: 18.0,
                          color: AppColors.hexToColor("#2C2C2C")
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
              child: new Text("Yes")
          ),

          new FlatButton(
              onPressed: (){
                Navigator.of(context).pop();
              },
              child: new Text("No")
          ),
        ]
    );
  }

}