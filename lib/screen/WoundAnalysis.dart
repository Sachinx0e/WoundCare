import 'dart:math';

import 'package:flutter/material.dart';
import 'package:woundcare/components/PageHeader.dart';
import 'package:woundcare/misc/Colors.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class WoundAnalysis extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return WoundAnalysisState();
  }

  static int get_random_value() {
    return (Random().nextInt(100));
  }

  static List<charts.Series<GaugeSegment, String>> _createSampleData() {
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

}

enum AnalysisState {
  NO_IMAGE_SELECTED,
  IN_PROGRESS,
  ANALYSIS_COMPLETE
}

/// Sample data type.
class GaugeSegment {
  final String segment;
  final int size;
  final charts.Color color;

  GaugeSegment(this.segment, this.size, this.color);
}


class WoundAnalysisState extends State<WoundAnalysis> {

  AnalysisState analysisState = AnalysisState.ANALYSIS_COMPLETE;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.hexToColor("#F9F9F9"),
      body: Column(
        children: <Widget>[
          PageHeader(title:"Wound analysis", showBack: false,),

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
              child: Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20.0, top:10.0, bottom: 10.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Text(
                      "Wound analysis",
                      style: TextStyle(
                          fontSize: 16.0
                      ),
                    ),

                    Expanded(
                      child: Container()
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

          Expanded(
            flex: 2,
            child: (){
              if(analysisState == AnalysisState.NO_IMAGE_SELECTED){
                return Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[

                      Padding(
                        padding: EdgeInsets.only(bottom: 20.0),
                        child: Icon(Icons.photo,color: Colors.grey,size: 90.0,),
                      ),


                      Text(
                          "Please select an image to analyse",
                        style: TextStyle(
                          color: Colors.grey
                        ),
                      ),
                    ],
                  )
                );
              }else if(analysisState == AnalysisState.IN_PROGRESS) {
                return Container();
              }else if(analysisState == AnalysisState.ANALYSIS_COMPLETE) {
                return Container(
                  margin: EdgeInsets.only(top: 50.0),
                  child: charts.PieChart(WoundAnalysis._createSampleData(),
                      animate: true,
                      // Configure the width of the pie slices to 30px. The remaining space in
                      // the chart will be left as a hole in the center. Adjust the start
                      // angle and the arc length of the pie so it resembles a gauge.
                      defaultRenderer: new charts.ArcRendererConfig(
                          arcWidth: 30,
                          startAngle: 4 / 5 * pi,
                          arcLength: 7 / 5 * pi,
                          arcRendererDecorators : [new charts.ArcLabelDecorator()]
                      ),

                  ) ,
                );
              }else{
                return Container();
              }
            }(),
          ),

          (){
            if(analysisState == AnalysisState.NO_IMAGE_SELECTED || analysisState == AnalysisState.IN_PROGRESS){
                return Container(
                  margin: EdgeInsets.only(top: 10.0, bottom: 20.0, left: 20.0, right: 20.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Center(
                          child: RaisedButton(
                            color: AppColors.hexToColor("#148FB4"),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[

                                Padding(
                                  padding: EdgeInsets.only(right: 10.0),
                                  child: Icon(Icons.camera, color: Colors.white,),
                                ),

                                Text(
                                  "Take photo",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white
                                  ),
                                ),

                              ],
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ),

                      Expanded(
                        child: Center(
                          child: RaisedButton(
                            color: AppColors.hexToColor("#148FB4"),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[

                                Padding(
                                  padding: EdgeInsets.only(right: 10.0),
                                  child: Icon(Icons.photo_album, color: Colors.white,),
                                ),

                                Text(
                                  "Select photo",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white
                                  ),
                                ),

                              ],
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ),

                    ],
                  ),
                );
            }else{
                return  Container(
                  margin: EdgeInsets.only(top: 10.0, bottom: 20.0, left: 20.0, right: 20.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Center(
                          child: RaisedButton(
                            color: AppColors.hexToColor("#148FB4"),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[

                                Padding(
                                  padding: EdgeInsets.only(right: 10.0),
                                  child: Icon(Icons.save_alt, color: Colors.white,),
                                ),

                                Text(
                                  "Save analysis",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white
                                  ),
                                ),

                              ],
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ),

                      Expanded(
                        child: Center(
                          child: RaisedButton(
                            color: AppColors.hexToColor("#148FB4"),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[

                                Padding(
                                  padding: EdgeInsets.only(right: 10.0),
                                  child: Icon(Icons.cancel, color: Colors.white,),
                                ),

                                Text(
                                  "Clear analysis",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white
                                  ),
                                ),

                              ],
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ),

                    ],
                  ),
                );
            }
          }(),

        ],
      ),
    );
  }

}