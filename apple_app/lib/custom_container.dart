import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  double? width;
  double? height;
  VoidCallback? onPressed;
  final Widget child;
  MyContainer({Key? key,
    this.width = 80,
    this.height = 80,
    this.onPressed,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin:  EdgeInsets.all(10.0),
        alignment: Alignment.center,
        width: width,
        height: height,
        child: child,
        decoration: BoxDecoration(
            color: Colors.blue[100],
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                  offset: Offset(0, 2),
                  blurRadius: 10,
                  spreadRadius: 2,
                  color: Colors.grey)
            ],
            gradient: LinearGradient(
                colors: [Colors.blueGrey.shade200, Colors.blue],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter
            )
        ),
      ),
    );
  }
}
