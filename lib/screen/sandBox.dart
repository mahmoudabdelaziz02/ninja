import 'package:flutter/material.dart';

class SandBox extends StatefulWidget {
  const SandBox({super.key});

  @override
  State<SandBox> createState() => _SandBoxState();
}

class _SandBoxState extends State<SandBox> {
  double width = 200;
    double height = 200;
    double _margin = 0;
    Color color = Colors.blueAccent;
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Center(
        child: AnimatedContainer(
            duration: Duration(seconds: 1),
            margin: EdgeInsets.all(_margin),
            height: height,
            width: width,
            color: color,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: ElevatedButton(
                      onPressed: () =>
                        setState(() {
                          color = Colors.grey;
                        })
                      ,
                      child: Text("color")),
                ), Flexible(
                  child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _margin=10;
                        });
                      },
                      child: Text("margin")),
                ), Flexible(
                  child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          height=500;
                        });
                      },
                      child: Text("height")),
                ), Flexible(
                  child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          width=500;
                        });
                      },
                      child: Text("width")),
                )
              ],
            )),
      ),
    );
  }
}
