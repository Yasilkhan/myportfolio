import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/core/colors.dart';
import 'package:portfolio/core/costant.dart';
import 'package:portfolio/core/utiles/responsiveLayout.dart';


class MenuDrawer extends StatelessWidget {
  const MenuDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget.isSmallScreen(context)?Drawer(
      
      backgroundColor: Colorses.white,
      child: Container(
        color: Colorses.primary,
        child: Padding(
          padding: const EdgeInsets.all(13.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
            SizedBox(height: h*0.03,),
              
              Text(
                "Home",
                style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colorses.white)),
              ),
              SizedBox(height: h*0.03,),
              Divider(color: Colorses.white,),
              SizedBox(height: h*0.03,),
              Text(
                "About Us",
                style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colorses.white)),
              ),
              SizedBox(height: h*0.03,),
              Divider(color: Colorses.white,),
              SizedBox(height: h*0.03,),
              Text(
                "Gallery",
                style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colorses.white)),
              ),
              SizedBox(height: h*0.03,),
              Divider(color: Colorses.white,),
              SizedBox(height: h*0.03,),
              Text(
                "Contact",
                style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colorses.white)),
              ),
                Divider(color: Colorses.white,),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    'Copyright © 2021 | DBestech',
                    style: TextStyle(
                      color: Colors.blueGrey.shade300,
                      fontSize: 14,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ):SizedBox();
  }
}
