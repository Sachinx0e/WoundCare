import 'package:flutter/material.dart';

class HomePageIconButton extends StatelessWidget {
  IconData _icon;
  String label;
  double iconSize;
  double spacing;

  HomePageIconButton(IconData icon, String label, {double iconSize = 24.0,double spacing = 5.0} ){
    this._icon = icon;
    this.label = label;
    this.iconSize = iconSize;
    this.spacing = spacing;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SizedBox(
      width: double.infinity,
      height: 50.0,
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(_icon,size: iconSize),
            SizedBox(
              width: double.infinity,
              height: this.spacing,
            ),
            Text(label,
              style: TextStyle(
                  fontSize: 10.0
              ),
            )
          ],
        ),
      ),
    );
  }

}