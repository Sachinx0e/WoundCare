import 'dart:math';

import 'package:flutter/material.dart';
import 'package:woundcare/components/PageHeader.dart';
import 'package:woundcare/misc/Colors.dart';
import 'package:charts_flutter/flutter.dart' as charts;

/// Sample data type.
class GaugeSegment {
  final String segment;
  final int size;
  final charts.Color color;

  GaugeSegment(this.segment, this.size, this.color);
}

List<charts.Series<GaugeSegment, String>> _createSampleData() {
  final data = [
    new GaugeSegment('Red', get_random_value(),charts.Color.fromHex(code: "#ff5a5aff")),
    new GaugeSegment('Brown', get_random_value(),charts.Color.fromHex(code: "#8D6E63")),
    new GaugeSegment('Yellow', get_random_value(),charts.Color.fromHex(code: "#cbca009e")),
    new GaugeSegment('Green', get_random_value(),charts.Color.fromHex(code: "#59ba89ff")),
    new GaugeSegment('Black', get_random_value(),charts.Color.fromHex(code: "#4d4d4dff")),
  ];

  return [
    new charts.Series<GaugeSegment, String>(
      id: 'Segments',
      domainFn: (GaugeSegment segment, _) => segment.segment,
      measureFn: (GaugeSegment segment, _) => segment.size,
      colorFn: (GaugeSegment segment, _) => segment.color,
      labelAccessorFn: (GaugeSegment segment, _) => segment.size.toString(),
      insideLabelStyleAccessorFn: (GaugeSegment segment, _) => charts.TextStyleSpec(color: charts.Color.black,fontSize: 40),
      data: data,
    )
  ];
}


int get_random_value() {
  return (Random().nextInt(100));
}

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
      backgroundColor: AppColors.hexToColor("#F9F9F9"),
      body: Container(
        child: Column(
          children: <Widget>[
            PageHeader(title: "History", showBack: false,),
            Expanded(
              child: SafeArea(
                  top: false,
                  child: ListView.builder(
                    itemCount: 30,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        margin: EdgeInsets.only(bottom: 20.0,left: 10.0, right: 10.0),
                        child: InkWell(
                          onTap: (){},
                          child: Padding(
                            padding: EdgeInsets.only(left: 00.0, right: 0.0, top: 0.0, bottom: 0.0 ),
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  flex: 3,
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 0.0, bottom: 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[

                                        Padding(
                                          padding: EdgeInsets.only(bottom: 0.0),
                                          child: Text(
                                            "24",
                                            style: TextStyle(
                                                fontSize: 28.0
                                            ),
                                          ),
                                        ),

                                        Padding(
                                          padding: EdgeInsets.only(bottom: 2.0),
                                          child: Text(
                                            "Dec",
                                            style: TextStyle(
                                                color: AppColors.hexToColor("#6a6a6aff"),
                                                fontSize: 16.0
                                            ),
                                          ),
                                        ),

                                        Text(
                                          "9:15 AM",
                                          style: TextStyle(
                                              fontSize: 10.0
                                          ),
                                        ),
                                      ],
                                    )
                                  )
                                ),

                                Container(
                                  margin: EdgeInsets.only(top: 0.0, bottom: 0.0),
                                  child: SizedBox(
                                      width: 1.0,
                                      height: 150,
                                      child: Container(
                                        color: AppColors.hexToColor("#ccccccff"),
                                      )
                                  ),
                                ),

                                Expanded(
                                  flex: 8,
                                  child: SizedBox(
                                    width: 300,
                                    height: 180,
                                    child: Container(
                                        margin: EdgeInsets.only(top: 50.0),
                                        child: charts.PieChart(_createSampleData(),
                                          animate: false,
                                          // Configure the width of the pie slices to 30px. The remaining space in
                                          // the chart will be left as a hole in the center. Adjust the start
                                          // angle and the arc length of the pie so it resembles a gauge.
                                          defaultRenderer: new charts.ArcRendererConfig(
                                              arcWidth: 30,
                                              startAngle: 4 / 5 * pi,
                                              arcLength: 7 / 5 * pi,
                                              arcRendererDecorators : [new charts.ArcLabelDecorator()]
                                          ),
                                        )
                                    ),
                                  )
                                )
                              ],
                            ),
                          )
                        )
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