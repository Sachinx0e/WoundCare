import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart' show CalendarCarousel;
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

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        child: SafeArea(
            top: false,
            child: Column(
              children: <Widget>[
                PageHeader(title: "New appointment"),
                Expanded(
                  flex: 6,
                  child: CalendarCarousel(
                    headerMargin: EdgeInsets.all(0.0),
                    childAspectRatio: 1.2,
                    onDayPressed: (DateTime date) {

                    },
                    thisMonthDayBorderColor: Colors.grey,
                    height: 420.0,
                    daysHaveCircularBorder: false,
                  ),
                ),

                Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 10.0, top: 0.0, bottom: 10.0),
                      child: Text("Today",
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
                                childAspectRatio: 3.5,
                                mainAxisSpacing: 5.0,
                                crossAxisSpacing: 5.0
                            ),
                            itemBuilder: (BuildContext context, int index){
                              return Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 10.0, right: 10.0 ),
                                    child: Center(
                                      child: Text(
                                        "9:15 PM ",
                                        style: TextStyle(
                                            color: Colors.blue,
                                            fontSize: 18.0
                                        ),
                                      ),
                                    ),
                                  )
                              );
                            }
                        )
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(left: 10.0, right: 10.0),
                  child: RaisedButton(
                    color: AppColors.SIGNUP_FACEBOOK_BUTTON_COLOR(),
                    shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(50.0)),
                    child: SizedBox(
                      width: double.infinity,
                      child: Padding(
                        padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
                        child: Text(
                          "Book appointment",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white
                          ),
                        ),
                      ),
                    ),
                    onPressed: () {},
                  ),
                )

              ],
            )
        ),
      ),
    );
  }

}