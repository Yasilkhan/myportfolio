import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/core/colors.dart';
import 'package:portfolio/screen/home_page.dart';


import '../core/costant.dart';
import '../core/utiles/responsiveLayout.dart';

class Home1Page extends StatelessWidget {
  const Home1Page({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget.isSmallScreen(context)
        ? Padding(

            padding: const EdgeInsets.all(8.0),
            child: Container(

                height: w * 2.2,
                width: w * 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                        height: h * 0.5,
                        width: w * 1,
                        child: Image.asset(
                     
                          "assets/mainphoto.png",
                          fit: BoxFit.contain,
                        )),
                    SizedBox(
                      height: h * 0.06,
                    ),
                    Text(
                      "HELLO I'AM",
                      style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                              color: Colorses.text,
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(width: w*0.06,),
                    Text(
                      "MUHAMMED YASIL",
                      style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                              color: Colorses.text,
                              fontSize: 26,
                              fontWeight: FontWeight.bold)),
                    ),
                    Text(
                      "FLUTTER FULL STACK DEVELOPER",
                      style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                              color: Colorses.text,
                              fontSize: 26,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(height: h*0.06,),
                    AnimatedTextKit(
                      animatedTexts: [
                        TypewriterAnimatedText(
                        
                          'Application Development',
                          textStyle:  TextStyle(
                            color: Colorses.text,
                          
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                          speed: const Duration(milliseconds: 70),
                        ),
                      ],
                      totalRepeatCount: 4,
                      pause: const Duration(milliseconds: 50),
                      displayFullTextOnTap: true,
                      stopPauseOnTap: true,
                    )
                  ],
                )),
          )
        : Container(
      key: homeSection,
            height: h * 1,
            width: w * 1,
            decoration: BoxDecoration(
                image: DecorationImage(
                  alignment: Alignment(0.5, 0),
                  image: AssetImage("assets/mainphoto.png"),fit: BoxFit.contain)
                ),
                child: Padding(
                  padding:  EdgeInsets.only(left: w*0.1),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: h*0.55,),
                      Text(
                      "HELLO I'AM",
                      style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                              color: Colorses.text,
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(width: w*0.06,),
                      Text(
                        "MUHAMMED YASIL",
                        style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                                color: Colorses.text,
                                fontSize: 30,
                                fontWeight: FontWeight.bold)),
                      ), 
                      Text(
                      "FLUTTER FULL STACK DEVELOPER",
                      style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                              color: Colorses.text,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ), 
                    SizedBox(height: h*0.03,),
                    AnimatedTextKit(
                      animatedTexts: [
                        TypewriterAnimatedText(
                        
                          'Application Development',
                          textStyle:  TextStyle(
                            color: Colorses.text,
                          
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                          ),
                          speed: const Duration(milliseconds: 70),
                        ),
                      ],
                      totalRepeatCount: 10,
                      pause: const Duration(milliseconds: 50),
                      displayFullTextOnTap: true,
                      stopPauseOnTap: true,
                    )
                    ],
                  ),
                ),
          );
  }
}
