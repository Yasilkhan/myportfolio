// import 'package:flutter/material.dart';
//
// import '../core/utiles/responsiveLayout.dart';
//
//
// class NavBar extends StatelessWidget {
//   final navLinks = ["Home", "Products", "Features", "Contact"];
//
//   List<Widget> navItem() {
//     return navLinks.map((text) {
//       return Padding(
//         padding: EdgeInsets.only(left: 18),
//         child: Text(text, style: TextStyle(fontFamily: "Montserrat-Bold")),
//       );
//     }).toList();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.symmetric(horizontal: 45, vertical: 38),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: <Widget>[
//           Row(
//             children: <Widget>[
//               Container(
//                 width: 60,
//                 height: 60,
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(18),
//                     gradient: LinearGradient(colors: [
//                       Color(0xFFC86DD7),
//                       Color(0xFF3023AE),
//                     ], begin: Alignment.bottomRight, end: Alignment.topLeft)),
//                 child: Center(
//                   child: Text("B",
//                       style: TextStyle(fontSize: 30, color: Colors.white)),
//                 ),
//               ),
//               SizedBox(
//                 width: 16,
//               ),
//               Text("Britu", style: TextStyle(fontSize: 26))
//             ],
//           ),
//           if (!ResponsiveLayout.isSmallScreen(context))
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: <Widget>[...navItem()]..add(InkWell(
//                   child: Container(
//                     margin: EdgeInsets.only(left: 20),
//                     width: 120,
//                     height: 40,
//                     decoration: BoxDecoration(
//                         gradient: LinearGradient(
//                             colors: [Color(0xFFC86DD7), Color(0xFF3023AE)],
//                             begin: Alignment.bottomRight,
//                             end: Alignment.topLeft),
//                         borderRadius: BorderRadius.circular(20),
//                         boxShadow: [
//                           BoxShadow(
//                               color: Color(0xFF6078ea).withOpacity(.3),
//                               offset: Offset(0, 8),
//                               blurRadius: 8)
//                         ]),
//                     child: Material(
//                       color: Colors.transparent,
//                       child: Center(
//                         child: Text("Login",
//                             style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 18,
//                                 letterSpacing: 1,
//                                 fontFamily: "Montserrat-Bold")),
//                       ),
//                     ),
//                   ))),
//             )
//           else
//             Image.network("assets/menu.png", width: 26, height: 26)
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/core/colors.dart';
import 'package:portfolio/core/costant.dart';
import 'package:portfolio/screen/aboutUs.dart';
import 'package:portfolio/screen/projects.dart';




class TopBarContents extends StatefulWidget {

  const TopBarContents({super.key});

  @override
  _TopBarContentsState createState() => _TopBarContentsState();
}
final homeSection = GlobalKey();
final aboutSection = GlobalKey();
final servicesSection = GlobalKey();
final projectsSection = GlobalKey();
class _TopBarContentsState extends State<TopBarContents> {
  final List _isHovering = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];

  void scrollToSection (GlobalKey key){
    Scrollable.ensureVisible(
      key.currentContext!,
      duration:  Duration(microseconds: 10),
      curve: Curves.easeInOut
    );
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      color: Colors.transparent,
      child: Padding(
        padding: EdgeInsets.all(20),
        child:
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [


            SizedBox(width: screenSize.width / 15),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    scrollToSection(homeSection);
                  },
                  child: Text(
                    'Home',
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colorses.white))
                  ),
                ),
                SizedBox(width: screenSize.width / 15),
                InkWell(
                  onTap: () {
                   scrollToSection(aboutSection);
                  },
                  child: Text(
                    'About us',
                   style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colorses.white)
                    ),
                  ),
                ),
                SizedBox(width: screenSize.width / 15),
                InkWell(
                  onTap: () {
                    scrollToSection(servicesSection);
                  },
                  child: Text(
                    'Gallery',
                    style:  GoogleFonts.montserrat(
                      textStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colorses.white)
                    ),
                  ),
                ),
                SizedBox(width: screenSize.width / 15),
                Text(
                  'Contact',
                  style:  GoogleFonts.montserrat(
                    textStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colorses.white)
                  ),
                ),
                SizedBox(width: screenSize.width / 15),


              ],
            ),

          ],
        ),

      ),

    );
    //);
  }
}