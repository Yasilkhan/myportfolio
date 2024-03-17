import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/core/colors.dart';
import 'package:portfolio/core/costant.dart';


class MenuDrawer extends StatelessWidget {
  const MenuDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      
      backgroundColor: Colorses.secondery,
      child: Container(
        color: Colorses.primeryColor,
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
                        color: Colorses.secondery)),
              ),
              SizedBox(height: h*0.03,),
              Divider(color: Colorses.secondery,),
              SizedBox(height: h*0.03,),
              Text(
                "About Us",
                style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colorses.secondery)),
              ),
              SizedBox(height: h*0.03,),
              Divider(color: Colorses.secondery,),
              SizedBox(height: h*0.03,),
              Text(
                "Gallery",
                style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colorses.secondery)),
              ),
              SizedBox(height: h*0.03,),
              Divider(color: Colorses.secondery,),
              SizedBox(height: h*0.03,),
              Text(
                "Contact",
                style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colorses.secondery)),
              ),
                Divider(color: Colorses.secondery,),
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
    );
  }
}
