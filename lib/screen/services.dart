import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/core/utiles/responsiveLayout.dart';
import 'package:portfolio/screen/home_page.dart';
import 'package:portfolio/widgets/textbutton.dart';
import 'package:portfolio/widgets/viewMore.dart';

import '../core/colors.dart';
import '../core/costant.dart';

class Services extends StatefulWidget {
  const Services({super.key});

  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget.isSmallScreen(context)
        ? SizedBox(
            child: Container(),
          )
        : SizedBox(
      key: servicesSection,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: h * 1,
                      width: w * 0.5,
                      color: CupertinoColors.white,
                      child: Padding(
                        padding: EdgeInsets.only(left: w * 0.125, top: h * 0.3),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Services",
                              style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                      fontSize: h * 0.032,
                                      color: Colorses.primary)),
                            ),
                            SizedBox(
                              height: h * 0.03,
                            ),
                            Text(
                              'We Provide Best Services',
                              style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                      fontSize: h * 0.06,
                                      fontWeight: FontWeight.bold)),
                            ),
                            SizedBox(
                              height: h * 0.02,
                            ),
                            Text(
                              "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. "
                              "\n Aenean commodo ligula eget dolor aenean massa.",
                              style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                fontSize: h * 0.02,
                              )),
                            ),
                            SizedBox(height: h * 0.06),
                            MyButton()
                          ],
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ViewMoreItem(
                              images: "assets/successful-handsome-business-man-office.jpg ",
                              headerText: 'Web ',
                              subText: 'Responsive Web site ',
                            ),
                            ViewMoreItem(
                              images: " assets/successful-handsome-business-man-office.jpg",
                              headerText: 'Web ',
                              subText: 'Responsive Web site ',
                            ),
                            // Padding(
                            //   padding: EdgeInsets.only(
                            //       top: h * 0.15,
                            //       left: w * 0.03,
                            //       right: w * 0.03),
                            //   child: SizedBox(
                            //     height: h * 0.7,
                            //     width: w * 0.18,
                            //     child:
                            //     Column(
                            //       children: [
                            //
                            //         Container(
                            //           height: h * 0.5,
                            //           width: w * 0.18,
                            //           color: Colors.white,
                            //         ),
                            //         Container(
                            //           height: h * 0.2,
                            //           width: w * 0.18,
                            //           color: Colors.black12,
                            //           child: Column(
                            //             crossAxisAlignment:
                            //             CrossAxisAlignment.center,
                            //             mainAxisAlignment:
                            //             MainAxisAlignment.center,
                            //             children: [
                            //               Text(
                            //                 'Web Development',
                            //                 style: GoogleFonts.montserrat(
                            //                     textStyle: TextStyle(
                            //                         fontSize: h * 0.03,
                            //                         fontWeight:
                            //                         FontWeight.bold)),
                            //               ),
                            //               SizedBox(height: h*0.015,),
                            //               Padding(
                            //                 padding:  EdgeInsets.only(left: w*0.01),
                            //                 child: Text(
                            //                   'Responsive Web site ',
                            //                   style: GoogleFonts.montserrat(
                            //                       textStyle: TextStyle(
                            //                         fontSize: h * 0.018,
                            //                       )),
                            //                 ),
                            //               ),
                            //               SizedBox(height: h*0.02,),
                            //               ViewMore()
                            //             ],
                            //           ),
                            //         ),
                            //       ],
                            //     ),
                            //   ),
                            // ),
                          ],
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
          );
  }
}

// class ViewMoreItem extends StatefulWidget {
//
//   const ViewMoreItem({super.key});
//
//
//
//   @override
//   State<ViewMoreItem> createState() => _ViewMoreItemState();
// }
//
// class _ViewMoreItemState extends State<ViewMoreItem> {
//   @override
//   Widget build(BuildContext context) {
//     // Build method returns the UI for your custom widget
//     return Container(
//       // Your widget's UI components and layout
//       child:
//
//     );
//   }
// }
Widget ViewMoreItem(
    {required String images,
    required String headerText,
    required String subText}) {
  return Padding(
    padding: EdgeInsets.only(top: h * 0.15, left: w * 0.03, right: w * 0.03),
    child: SizedBox(
      height: h * 0.7,
      width: w * 0.18,
      child: Column(
        children: [
          Container(
            height: h * 0.5,
            width: w * 0.18,
            // decoration: BoxDecoration(image: DecorationImage(image: AssetImage(images))),
          ),
          Container(
            height: h * 0.2,
            width: w * 0.18,
            color: Colors.black12,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  headerText,
                  style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                          fontSize: h * 0.03, fontWeight: FontWeight.bold)),
                ),
                SizedBox(
                  height: h * 0.015,
                ),
                Padding(
                  padding: EdgeInsets.only(left: w * 0.01),
                  child: Text(
                    subText,
                    style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                      fontSize: h * 0.018,
                    )),
                  ),
                ),
                SizedBox(
                  height: h * 0.02,
                ),
                ViewMore()
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
