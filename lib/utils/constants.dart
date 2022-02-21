import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';


const kActiveCardColour = Colors.deepOrangeAccent;
const kInactiveCardColour = Colors.grey;


final symbolInfoAlertBox  = AlertStyle(
  animationType: AnimationType.fromTop,
  isCloseButton: true,
  isOverlayTapDismiss: false,
  descStyle: TextStyle(fontSize: 12.0, fontWeight: FontWeight.normal),
  descTextAlign: TextAlign.start,
  animationDuration: Duration(milliseconds: 400),
  alertBorder: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(0.0),
    side: BorderSide(
      color: Colors.grey,
    ),
  ),
  titleStyle: TextStyle(
    color: Colors.red,
    fontSize: 24.0,
  ),
  alertAlignment: Alignment.center,
);


final creditsTextStyle = TextStyle(
  fontSize: 20,
  color: Colors.grey.shade600,
);

