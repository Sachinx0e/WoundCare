import 'package:flutter/material.dart';
import 'package:woundcare/components/PageHeader.dart';
import 'package:woundcare/misc/Colors.dart';

class WoundAnalysis extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        children: <Widget>[
          PageHeader(title:"Wound analysis result"),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 10.0, top: 10.0, bottom: 10.0),
              child: Text("Today",
                style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0
                ),
              ),
            )
          ),

          Container(
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0, top:10.0, bottom: 10.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Text(
                    "Recovery analysis",
                    style: TextStyle(
                        fontSize: 16.0
                    ),
                  ),

                  Expanded(
                    child: Container(),
                  ),

                  Text(
                    "Oct 29, 2018 17:10 PM",
                    style: TextStyle(
                        color: AppColors.hexToColor("#5B5B5B")
                    ),
                  ),

                ],
              ),
            )
          ),

          Container(
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20.0, top:10.0, bottom: 10.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Text(
                      "Recovery analysis",
                      style: TextStyle(
                          fontSize: 16.0
                      ),
                    ),

                    Expanded(
                      child: Container(),
                    ),

                    Text(
                      "Oct 29, 2018 17:10 PM",
                      style: TextStyle(
                          color: AppColors.hexToColor("#5B5B5B")
                      ),
                    ),

                  ],
                ),
              )
          ),

          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 10.0, top: 10.0, bottom: 10.0),
                child: Text("Color analysis",
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0
                  ),
                ),
              )
          ),

          Expanded(
              flex: 2,
              child: Container(),
          ),

          Expanded(
            flex: 1,
            child: Container(
              color: AppColors.hexToColor("#d0d0979e"),
              child: Padding(
                  padding: EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0, bottom: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Add another lab result record",
                            style: TextStyle(
                                fontSize: 18.0,
                                fontStyle: FontStyle.italic,
                                color: AppColors.hexToColor("#5B5B5B")
                            ),
                          )
                      ),

                      Padding(
                        padding: EdgeInsets.only(top: 15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Expanded(
                              flex: 5,
                              child: RaisedButton(
                                child: Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Icon(Icons.camera, size: 40.0,)
                                ),
                                onPressed: (){},
                              ),
                            ),

                            Expanded(
                              flex: 1,
                              child: Container(

                              ),
                            ),

                            Expanded(
                              flex: 5,
                              child: RaisedButton(
                                child: Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: Icon(Icons.photo_album, size: 40.0,)
                                ),
                                onPressed: (){},
                              ),
                            ),

                          ],
                        )
                      )
                    ],
                  ),
              )
            )
          )

        ],
      ),
    );
  }

}