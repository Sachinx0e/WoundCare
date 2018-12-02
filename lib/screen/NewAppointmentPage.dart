import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart' show CalendarCarousel;
import 'package:intl/intl.dart';
import 'package:woundcare/components/PageHeader.dart';
import 'package:woundcare/misc/Colors.dart';

class NewAppointmentPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return NewAppointmentPageState();
  }

}

class NewAppointmentPageState extends State<NewAppointmentPage> {

  DateTime selectedDate;

  NewAppointmentPageState(){
    this.selectedDate = DateTime.now();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        child: SafeArea(
            top: false,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                PageHeader(title: "New appointment",backPressed: (){
                  Navigator.pop(context);
                },),

                Card(
                  margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0, bottom: 5.0),
                  child: CalendarCarousel(
                    headerMargin: EdgeInsets.all(0.0),
                    childAspectRatio: 1.8,
                    selectedDateTime: selectedDate,
                    onDayPressed: (DateTime date) {
                        this.setState((){
                          selectedDate = date;
                        });
                    },
                    todayButtonColor: Colors.lightBlueAccent,
                    thisMonthDayBorderColor: Colors.grey,
                    daysHaveCircularBorder: null,
                    height: 280,
                    daysTextStyle: TextStyle(
                      fontSize: 12.0
                    ),
                    selectedDayTextStyle: TextStyle(
                      color: Colors.white
                    ),
                    weekendTextStyle: TextStyle(
                      color: Colors.grey
                    ),
                    weekdayTextStyle: TextStyle(
                      color: Colors.grey
                    ),
                    weekends: [],
                  ),
                ),


                Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 20.0, top: 10.0, bottom: 10.0),
                      child: Text(DateFormat.yMMMMd("en_US").format(this.selectedDate),
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0
                        ),
                      ),
                    )
                ),


                Expanded(
                  flex: 5,
                  child: Container(
                    color: AppColors.hexToColor("#F9F9F9"),
                    margin: EdgeInsets.only(left: 5.0, right: 5.0, bottom: 10.0),
                    child: MediaQuery.removePadding(
                        context: context,
                        removeTop: true,
                        child: GridView.builder(
                            gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount:  2,
                                childAspectRatio: 2.5,
                                mainAxisSpacing: 5.0,
                                crossAxisSpacing: 5.0
                            ),
                            itemBuilder: (BuildContext context, int index){
                              return Card(
                                child: InkWell(
                                    onTap: (){
                                    },
                                    child: Container(
                                        child: Padding(
                                          padding: EdgeInsets.only(left: 10.0, right: 10.0 ),
                                          child: Center(
                                            child: Text(
                                              "9:15 PM ",
                                              style: TextStyle(
                                                  fontSize: 16.0
                                              ),
                                            ),
                                          ),
                                        )
                                    )
                                ),
                              );
                            }
                        )
                    ),
                  ),
                ),

              ],
            )
        ),
      ),
    );
  }

}