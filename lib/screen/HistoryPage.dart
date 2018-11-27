import 'package:flutter/material.dart';
import 'package:woundcare/components/PageHeader.dart';
import 'package:woundcare/misc/Colors.dart';

class HistoryPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HistoryPageState();
  }

}

class HistoryPageState extends State<HistoryPage> {

  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            PageHeader(title: "History"),
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
                            padding: EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                Text(
                                    "Date : 11-28-2018",
                                    style: TextStyle(
                                        fontSize: 20.0
                                    )
                                ),

                                Padding(
                                    padding: EdgeInsets.only(top: 5.0),
                                    child: Row(
                                      children: <Widget>[
                                        Expanded(
                                            child: Container(
                                              height: 30.0,
                                              color: Colors.red,
                                            )
                                        ),
                                        Expanded(
                                            child: Container(
                                              height: 30.0,
                                              color: Colors.brown,
                                            )
                                        ),
                                        Expanded(
                                            child: Container(
                                              height: 30.0,
                                              color: Colors.yellow,
                                            )
                                        ),
                                        Expanded(
                                            child: Container(
                                              height: 30.0,
                                              color: Colors.green,
                                            )
                                        ),
                                        Expanded(
                                            child: Container(
                                              height: 30.0,
                                              color: Colors.black,
                                            )
                                        )
                                      ],
                                    )
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