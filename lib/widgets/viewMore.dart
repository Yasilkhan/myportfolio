import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../core/colors.dart';

class ViewMore extends StatefulWidget {
  @override
  _ViewMoreState createState() => _ViewMoreState();
}

class _ViewMoreState extends State<ViewMore> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: Text(
        'View More > ',
        style: GoogleFonts.montserrat(textStyle: TextStyle(
          color:  _isHovered ? Colorses.text:  Colorses.white,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),)
      ),
    );
  }
}