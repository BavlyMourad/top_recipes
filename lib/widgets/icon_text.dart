import 'package:flutter/material.dart';

class IconText extends StatelessWidget {
  final IconData icon;
  final String text;

  IconText({
    @required this.icon,
    @required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: 15.0,
          color: Colors.orange,
        ),
        SizedBox(
          width: 5.0,
        ),
        Text(
          text,
          style: TextStyle(
            color: Colors.black54,
          ),
        ),
      ],
    );
  }
}
