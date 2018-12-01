import 'package:flutter/material.dart';

class InputField extends StatelessWidget{
  String label;
  String hintText;
  var onChanged;


  InputField({String label="", String hintText="", var onChanged=null}){
    this.label = label;
    this.hintText = hintText;
    this.onChanged = onChanged;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(left: 20.0,right: 20.0, top: 10.0, bottom: 10.0),
      decoration: BoxDecoration(
        color: Color.fromARGB(40,0,0,0),
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
      ),
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
                this.label,
                style: TextStyle(
                    color: Colors.white
                )
            ),
            TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: this.hintText,
                  hintStyle: TextStyle(
                      color: Color.fromARGB(70, 255, 255, 255)
                  )
              ),
              style: TextStyle(
                  color: Colors.white
              ),
              onChanged: (value){
                if(this.onChanged != null) {
                  this.onChanged(value);
                }
              },
            )
          ],
        ),
      ),
    );
  }

}