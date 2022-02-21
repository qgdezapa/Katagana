import 'package:flutter/material.dart';

class HelpBlock extends StatelessWidget {
  HelpBlock(this.title, this.items);

  final String title;
  final List<String> items;

  @override
  Widget build(BuildContext context) {
    List<Widget> children = [];
    for (var item in items) {
      children.add(
        ListTile(
          title: Text(item),
          leading: Container(
            width: 12.5,
            height: 12.5,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Theme.of(context).primaryColor,
            ),
          ),
        ),
      );
    }
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        Column(
          children: children,
        ),
      ],
    );
  }
}
