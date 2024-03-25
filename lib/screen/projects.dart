import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/core/utiles/responsiveLayout.dart';
import 'package:portfolio/widgets/viewMore.dart';

import '../core/colors.dart';
import '../core/costant.dart';
import '../widgets/btn_Controller.dart';

class Projects extends StatefulWidget {
  const Projects({super.key});

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget.isSmallScreen(context) ?
        SizedBox()

    :SizedBox(
      key: projectsSection,
      height: h * 1.3,
      width: w * 1,
      child: Column(
        children: [
          SizedBox(
            height: h * 0.09,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Best Project",
                style: GoogleFonts.montserrat(
                    textStyle: TextStyle(fontSize: w * 0.03)),
              )

            ],
          ),
          SizedBox(height: h*0.06,),
          Row(
            children: [
              Padding(
                padding:  EdgeInsets.only(left: w*0.1),
                child: SizedBox(
                  height: h * 0.84,
                  width: w * 0.23,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Ramona Valentine",
                        style: GoogleFonts.montserrat(
                            textStyle: TextStyle(fontSize: h * 0.02, color: Colorses.text,fontWeight: FontWeight.bold)),
                      ),
                      SizedBox(height: h*0.03,),
                      Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorpe",
                        style: GoogleFonts.montserrat(
                            textStyle: TextStyle(fontSize: w * 0.013, color: Colorses.text2)),
                      ),
                      SizedBox(height: h*0.03,),
                      Expanded(
                        child: Container(
                          height: h*0.61,
                          width: w*0.28,
                          color: Colors.red,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(left: w*0.03),
                child: SizedBox(
                  height: h * 0.84,
                  width: w * 0.28,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Expanded(
                        child: Container(
                          height: h*0.61,
                          width: w*0.28,
                          color: Colors.red,
                        ),
                      ),
                      SizedBox(height: h*0.04,),
                      ViewMore()
                    ],
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(left: w*0.03),
                child: SizedBox(
                  height: h * 0.84,
                  width: w * 0.23,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [

                      SizedBox(height: h*0.02,),
                      Container(
                        height: h*0.63,
                        width: w*0.2,
                        color: Colors.red,
                      ),
                      SizedBox(height: h*0.02,),
                      Text(
                        "Ramona Valentine",
                        style: GoogleFonts.montserrat(
                            textStyle: TextStyle(fontSize: h * 0.02, color: Colorses.text,fontWeight: FontWeight.bold)),
                      ),
                      SizedBox(height: h*0.03,),
                      Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorpe",
                        style: GoogleFonts.montserrat(
                            textStyle: TextStyle(fontSize: w * 0.01, color: Colorses.text2)),
                      ),
                    ],
                  ),
                ),
              ),

              
            ],
          )
        ],
      ),
    );
  }
}
