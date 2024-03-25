import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/core/colors.dart';
import 'package:portfolio/core/utiles/responsiveLayout.dart';

import '../core/costant.dart';
import '../widgets/viewMore.dart';

class BlogPage extends StatefulWidget {
  const BlogPage({super.key});

  @override
  State<BlogPage> createState() => _BlogPageState();
}

class _BlogPageState extends State<BlogPage> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget.isSmallScreen(context)
        ? SizedBox()
        : SizedBox(
            height: h * 1.3,
            width: w * 1,
            child: Column(
              children: [
                SizedBox(
                  height: h * 0.08,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Blog",
                      style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                              fontSize: h * 0.035, color: Colorses.text2)),
                    ),
                  ],
                ),
                SizedBox(
                  height: h * 0.03,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "Latest ",
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                  fontSize: w * 0.03, color: Colorses.white),
                            )),
                        TextSpan(
                            text: "Blog ",
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                  fontSize: w * 0.03, color: Colorses.text),
                            )),
                        TextSpan(
                            text: "& Article",
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                  fontSize: w * 0.03, color: Colorses.white),
                            )),
                      ]),
                    ),
                  ],
                ),
                SizedBox(
                  height: h * 0.04,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: w * 0.045,
                  ),
                  child: Row(

                    children: [
                      SizedBox(
                        height: h * 1,
                        width: w * 0.35,
                        child: Column(

                          children: [
                            Container(
                              height: h * 0.5,
                              width: w * 0.35,
                              color: Colors.red,
                            ),
                            SizedBox(
                              height: h * 0.025,
                            ),
                            Text("Tips & Trick",
                                style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                      fontSize: w * 0.01, color: Colorses.text),
                                )),
                            SizedBox(
                              height: h * 0.025,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                      "Five think you should be know about Software development",
                                      style: GoogleFonts.montserrat(
                                        textStyle: TextStyle(
                                            fontSize: w * 0.02,
                                            color: Colorses.white,
                                            fontWeight: FontWeight.bold),
                                      )),
                                )
                              ],
                            ),
                            SizedBox(
                              height: h * 0.025,
                            ),
                            Row(
                              children: [
                                Icon(
                                  CupertinoIcons.time,
                                  color: Colorses.text2,
                                ),
                                Text(" March 31 2022",
                                    style: GoogleFonts.montserrat(
                                      textStyle: TextStyle(
                                          fontSize: w * 0.01,
                                          color: Colorses.text2),
                                    )),
                              ],
                            ),
                            SizedBox(
                              height: h * 0.025,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                      "Five think you should be know about Software development commodo ligula eget dolor. Aenean massa. Cum sociis natoque",
                                      style: GoogleFonts.montserrat(
                                        textStyle: TextStyle(
                                            fontSize: w * 0.01,
                                            color: Colorses.text2,
                                            fontWeight: FontWeight.bold),
                                      )),
                                )
                              ],
                            )
                          ],
                        ),
                      ),

                   Padding(
                     padding:  EdgeInsets.only(left: w*0.03),
                     child: SizedBox(
                       height: h*1,
                       width: w*0.5,
                       child: Column (
                         children: [
                           blogContiner(),
                           SizedBox(height: h*0.03,),
                           blogContiner(),



                         ],
                       ),
                     ),
                   )
                    ],
                  ),
                )
              ],
            ),
          );
  }
}

Widget blogContiner() {
  return SizedBox(
    height: h*0.4,
    width: w*0.5,
    child: Row(
      children: [
        Container(
          height: h * 0.6,
          width: w * 0.21,
          color: Colors.red,
        ),

        SizedBox(
          width: w*0.25,
          child: Padding(
            padding:  EdgeInsets.only(left :w*0.02,right: w*0.02),
            child: Column(
              children: [
                Row(
                  children: [
                    Text("HHeeee",
                      style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                      fontSize: w * 0.01,
                      color: Colorses.white,
                     ))),
                  ],
                ),
                SizedBox(
                  height: h * 0.025,
                ),
                Text(
                    "Five think you should be know ",
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                          fontSize: w * 0.015,
                          color: Colorses.white,
                          fontWeight: FontWeight.bold),
                    )),
                SizedBox(
                  height: h * 0.02,
                ),
                Row(
                  children: [
                    Icon(
                      CupertinoIcons.time,
                      color: Colorses.text2,
                    ),
                    Text(" March 31 2022",
                        style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                              fontSize: w * 0.01,
                              color: Colorses.text2),
                        )),

                  ],
                ),
                SizedBox(
                  height: h * 0.02,
                ),
                Text(
                    "Five think you should be know about Software development,Five think you should be know about Software development",
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                          fontSize: w * 0.01,
                          color: Colorses.white,
                          ),
                    )),
                SizedBox(
                  height: h * 0.03,
                ),
                Row(
                  children: [
                    ViewMore(),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    ),
  );
}
