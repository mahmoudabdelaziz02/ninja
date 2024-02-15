import 'package:flutter/material.dart';

class ScreenTitle extends StatelessWidget {
  final String text;

  const ScreenTitle({required this.text});

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
        child: Text(
          text,
          style: TextStyle(
              fontSize: 36, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        duration: Duration(milliseconds: 500),
        curve:Curves.easeIn,
        tween: Tween<double>(begin: 0, end: 1),
        builder: (BuildContext context, double lo, mo) {
          return Opacity(
            opacity: lo,
            child: Padding(
              padding: EdgeInsets.only(top:lo*20),
              child: mo,
            ),
          );
        });
  }
}
