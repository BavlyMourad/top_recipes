import 'package:flutter/material.dart';

class CustomBackButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pop(context),
      child: Container(
        height: 30.0,
        width: 30.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.0),
          color: Colors.orange,
          boxShadow: [
            BoxShadow(
              color: Colors.black54,
              blurRadius: 4,
            ),
          ],
        ),
        child: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
      ),
    );
  }
}
