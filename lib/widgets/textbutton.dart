import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../core/colors.dart';

class MyButton extends StatefulWidget {
  @override
  _MyButtonState createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
        decoration: BoxDecoration(
          color: _isHovered ? Colors.transparent.withOpacity(0.5) : Colorses.text,

        ),
        child: Text(
          'Explore Service ',
          style: TextStyle(
            color:  _isHovered ? Colorses.text:  Colors.transparent.withOpacity(0.5),
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}