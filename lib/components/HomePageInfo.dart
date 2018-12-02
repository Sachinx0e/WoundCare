import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:woundcare/misc/Colors.dart';

class HomePageInfo extends StatelessWidget {
  String image_name;
  String label;
  String count;

  HomePageInfo({String image_name="", String label="", String count = "0"}){
    this.image_name = image_name;
    this.label = label;
    this.count = count;
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          margin: EdgeInsets.only(left: 5.0,right: 5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Expanded(
                  flex: 3,
                  child: Center(
                    child: SizedBox(
                        width: 25.0,
                        height: 40.0,
                        child: SvgPicture.asset(
                          this.image_name,
                          color: AppColors.hexToColor("#3ACFD5"),
                        )
                    ),
                  )
              ),

              Expanded (
                flex: 5,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(this.count,
                          style: TextStyle(
                              fontSize: 14.0
                          )
                      ),
                      Text(this.label,
                        style: TextStyle(
                            fontSize: 13.0
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
      ),
    );
  }

}
