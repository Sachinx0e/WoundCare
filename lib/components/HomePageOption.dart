import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:woundcare/misc/Colors.dart';

class HomePageOption extends StatelessWidget {
  String image;
  String label;
  var onClick;

  HomePageOption({String image="", String label="", var onClick}){
    this.image = image;
    this.label = label;
    this.onClick = onClick;
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          margin: EdgeInsets.all(2.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(5.0))
          ),
          child: InkWell(
              onTap: (){
                if(onClick != null){
                  onClick();
                }
              },
              child: Column (
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[

                  SizedBox(
                      width: 30.0,
                      height: 50.0,
                      child: SvgPicture.asset(
                        this.image,
                        color: AppColors.hexToColor("#4CD5B0"),
                      )
                  ),

                  Container(
                      child: Text(this.label,
                        style: TextStyle(
                            fontSize: 16.0
                        ),
                      )
                  )
                ],
              ),
          )
      ),
    );
  }

}