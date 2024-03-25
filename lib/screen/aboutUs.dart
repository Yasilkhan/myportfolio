import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:portfolio/core/colors.dart';
import 'package:portfolio/core/costant.dart';
import 'package:portfolio/core/utiles/responsiveLayout.dart';
import 'package:portfolio/screen/home_page.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget.isSmallScreen(context)
        ? SizedBox(
      key: aboutSection,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: w * 0.5,
                  height: h * 0.8,
                  color: Colors.white,
                ),
                Container(
                  width: w * 0.5,
                  height: h * 0.8,
                  color: Colors.red,
                )
              ],
            ),
          )
        : SizedBox(
      key: aboutSection,
            child: Column(

              children: [

                Column(
                  children: [
                    Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [

                      Expanded(
                        child: Container(
                          width: w * 0.5,
                          height: h * 0.8,
                          color: Colorses.secondary,
                          child: Stack(
                            children: [
                              Positioned(
                                left: w*0.1,
                                child: Text(
                                  "About Us",
                                  style: GoogleFonts.montserrat(
                                      textStyle: TextStyle(fontSize: w * 0.03)),
                                ),
                              ),
                              Positioned(
                                  top: w * 0.08,
                                  left: w * 0.05,
                                  child: Container(
                                    height: h * 0.5,
                                    width: w * 0.3,
                                    color: Colors.red,
                                  )),
                              Positioned(
                                  top: w * 0.1,
                                  left: w * 0.08,
                                  child: Container(
                                    height: h * 0.5,
                                    width: w * 0.3,
                                    color: Colors.blue,
                                  )),
                              Positioned(
                                  top: w * 0.12,
                                  left: w * 0.1,
                                  child: Container(
                                    height: h * 0.5,
                                    width: w * 0.3,
                                    decoration: BoxDecoration(image: DecorationImage(image: AssetImage(secondPhoto),fit: BoxFit.fill)),
                                  ),
                        
                              ),
                        
                        
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: w * 0.5,
                        height: h * 1,
                        color: Colorses.white,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: h * 0.23,
                              ),
                              Expanded(
                                child: Padding(
                                  padding:  EdgeInsets.only(left: w*0.03,right: w*0.03),
                                  child: Consumer(
                                    builder: (context, ref, child) {
                                      var aboutself = ref.read(self);
                                      return Text(
                                        aboutself,
                                        style: GoogleFonts.montserrat(
                                            textStyle: TextStyle(
                                                fontSize: 22, color: Colorses.text)),
                                      );
                                    },
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                    ),
                  ],
                ),
              ],
            ),
          );
  }
}
