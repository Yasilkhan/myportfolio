import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:portfolio/core/colors.dart';
import 'package:portfolio/core/costant.dart';
import 'package:portfolio/core/utiles/responsiveLayout.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget.isSmallScreen(context)
        ? SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: w * 0.5,
                  height: h * 1,
                  color: Colors.white,
                ),
                Container(
                  width: w * 0.5,
                  height: h * 1,
                  color: Colors.red,
                )
              ],
            ),
          )
        : SizedBox(
            child: Column(

              children: [
                SizedBox(height: h*0.05,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                  Text(
                    "About Us",
                    style: GoogleFonts.montserrat(
                        textStyle: TextStyle(fontSize: w * 0.03)),
                  ),
                ],),
                Column(
                  children: [
                    Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [

                      Container(
                        width: w * 0.5,
                        height: h * 1,
                        color: Colors.white,
                        child: Stack(
                          children: [

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
                                  color: Colors.black,
                                ),

                            ),


                          ],
                        ),
                      ),
                      Container(
                        width: w * 0.5,
                        height: h * 1,
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: h * 0.1,
                              ),
                              Consumer(
                                builder: (context, ref, child) {
                                  var aboutself = ref.read(self);
                                  return Text(
                                    aboutself,
                                    style: GoogleFonts.montserrat(
                                        textStyle: TextStyle(
                                            fontSize: 22, color: Colorses.text)),
                                  );
                                },
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
