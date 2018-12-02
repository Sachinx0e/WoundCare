import 'package:flutter/material.dart';
import 'package:woundcare/misc/Colors.dart';

class CustomIconButton extends StatelessWidget {
  IconData _icon;
  String label;
  double iconSize;
  double spacing;
  bool isSelected;
  var onPress;

  CustomIconButton(IconData icon, String label, {double iconSize = 24.0,double spacing = 5.0,bool isSelected = false,var onPress} ){
    this._icon = icon;
    this.label = label;
    this.iconSize = iconSize;
    this.spacing = spacing;
    this.isSelected = isSelected;
    this.onPress = onPress;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SizedBox(
      width: double.infinity,
      height: 60.0,
      child: InkWell(
        onTap: (){
          if(onPress != null){
            onPress();
          }
        },
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                  _icon,size: iconSize,
                  color: (){
                    if(isSelected){
                      return AppColors.hexToColor("#429CEA");
                    }else{
                      return AppColors.hexToColor("#95989A");
                    }
                  }()
              ),
              SizedBox(
                width: double.infinity,
                height: this.spacing,
              ),
              Text(label,
                style: TextStyle(
                    fontSize: 11.0,
                    color: (){
                      if(isSelected){
                        return AppColors.hexToColor("#429CEA");
                      }else{
                        return AppColors.hexToColor("#95989A");
                      }
                    }(),
                    fontWeight: (){
                      if(isSelected){
                        return FontWeight.bold;
                      }else{
                        return FontWeight.normal;
                      }
                    }()
                ),
              )
            ],
          ),
        )
      ),
    );
  }

}