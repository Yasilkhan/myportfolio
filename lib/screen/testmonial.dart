import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/core/utiles/responsiveLayout.dart';

import '../core/colors.dart';
import '../core/costant.dart';

class Testimonial extends StatelessWidget {
  const Testimonial({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget.isSmallScreen(context)? SizedBox(): Container(
      height: h * 1,
      width: w * 1,
      color: Colors.red,
      child: Row(
        children: [
          SizedBox(
            height: h * 1,
            width: w * 0.5,
          ),
          SizedBox(
            height: h * 1,
            width: w * 0.5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: h * 0.085),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Testimonial",
                      style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                              fontSize: w * 0.018, color: Colorses.text2)),
                    ),
                  ],
                ),
                SizedBox(height: h * 0.03),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "What",
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                  fontSize: w * 0.03, color: Colorses.text2),
                            )),
                        TextSpan(
                            text: "Client",
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                  fontSize: w * 0.03, color: Colorses.text),
                            )),
                        TextSpan(
                            text: "Says",
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                  fontSize: w * 0.03, color: Colorses.text2),
                            )),
                      ]),
                    ),
                  ],
                ),
                SizedBox(height: h*0.03,),

                CarouselSlider.builder(
                    itemCount: 5, itemBuilder: (context, index, realIndex) {
                  return  Column(
                    children: [
                      CircleAvatar(
                        radius: w*0.02,
                        backgroundImage:
                        AssetImage("assets/successful-handsome-business-man-office.jpg"),
                      ),
                      SizedBox(height: h*0.03,),
                      RatingBar.builder(
                        initialRating: 3,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {

                        },
                      ),
                      SizedBox(height: h*0.03,),
                      Text(
                        "name",
                        style: GoogleFonts.montserrat(
                            textStyle: TextStyle(fontSize: w * 0.014, color: Colorses.white)),
                      ),
                      SizedBox(height: h*0.02,),
                      Text(
                        "name",
                        style: GoogleFonts.montserrat(
                            textStyle: TextStyle(fontSize: w * 0.01, color: Colorses.text2)),
                      ),
                      SizedBox(height: h*0.03,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: w*0.3,
                            child: Padding(
                              padding:  EdgeInsets.only(left: w*0.03),
                              child: Text(
                                "I have a meeting with them tomorrow. A good digital marketing strategy needs to be presented. \n Make a good presentation for it",
                                style: GoogleFonts.montserrat(
                                    textStyle: TextStyle(fontSize: w * 0.01, color: Colorses.text2)),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  );
                }, options: CarouselOptions(
                  height: 400,
                  aspectRatio: 16/9,
                  viewportFraction: 0.8,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.3,

                  scrollDirection: Axis.horizontal,
                ))

              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget testimonial() {
  return
    Column(
    children: [
      CircleAvatar(
        radius: w*0.02,
        backgroundImage:
            AssetImage("assets/successful-handsome-business-man-office.jpg"),
      ),
      SizedBox(height: h*0.03,),
      RatingBar.builder(
        initialRating: 3,
        minRating: 1,
        direction: Axis.horizontal,
        allowHalfRating: true,
        itemCount: 5,
        itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
        itemBuilder: (context, _) => Icon(
          Icons.star,
          color: Colors.amber,
        ),
        onRatingUpdate: (rating) {

        },
      ),
      SizedBox(height: h*0.03,),
      Text(
        "name",
        style: GoogleFonts.montserrat(
            textStyle: TextStyle(fontSize: w * 0.014, color: Colorses.white)),
      ),
      SizedBox(height: h*0.02,),
      Text(
        "name",
        style: GoogleFonts.montserrat(
            textStyle: TextStyle(fontSize: w * 0.01, color: Colorses.text2)),
      ),
      SizedBox(height: h*0.03,),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: w*0.3,
            child: Padding(
              padding:  EdgeInsets.only(left: w*0.03),
              child: Text(
                "I have a meeting with them tomorrow. A good digital marketing strategy needs to be presented. \n Make a good presentation for it",
                style: GoogleFonts.montserrat(
                    textStyle: TextStyle(fontSize: w * 0.01, color: Colorses.text2)),
              ),
            ),
          ),
        ],
      )
    ],
  );
}
