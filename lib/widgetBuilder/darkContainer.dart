import 'package:flutter/material.dart';

class DarkContainer extends StatelessWidget {
  DarkContainer({@required this.color, this.cardChild, this.onPress});
  final Color color;
  final cardChild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(height * .01),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: color,
        ),
      ),
    );
  }
}
