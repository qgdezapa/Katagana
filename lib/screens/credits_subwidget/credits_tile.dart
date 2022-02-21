import 'package:flutter/material.dart';
import 'package:katagana/utils/constants.dart';

class CreditsTile extends StatelessWidget {
  // Default for leadingTextMargin determined by eyeballing
  // the resulting design
  CreditsTile(this.title, this.leadingText, {this.leadingTextMargin = 10});

  final String title;
  final String leadingText;
  final double leadingTextMargin;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: creditsTextStyle,
      ),
      enabled: true,
      leading: Container(
        width: 75,
        height: 75,
        alignment: Alignment.center,
        // This margin exists to offset
        // the circle, since some have 2 characters
        // while some have 3
        margin: EdgeInsets.only(
          left: leadingTextMargin,
          right: leadingTextMargin,
        ),
        padding: EdgeInsets.all(leadingTextMargin),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.red.shade400,
        ),
        child: Text(
          leadingText,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      tileColor: Colors.grey.shade300,
    );
  }
}
