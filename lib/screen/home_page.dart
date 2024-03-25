
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/core/colors.dart';
import 'package:portfolio/core/utiles/responsiveLayout.dart';
import 'package:portfolio/screen/aboutUs.dart';
import 'package:portfolio/screen/blog.dart';
import 'package:portfolio/screen/contact.dart';
import 'package:portfolio/screen/projects.dart';
import 'package:portfolio/screen/services.dart';
import 'package:portfolio/screen/testmonial.dart';



import '../core/costant.dart';
import '../widgets/btn_Controller.dart';
import 'package:flutter/cupertino.dart';


import '../widgets/drwer_menu.dart';
import 'home1_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
final homeSection = GlobalKey();
final aboutSection = GlobalKey();
final servicesSection = GlobalKey();
final projectsSection = GlobalKey();

class _HomePageState extends State<HomePage> {
  void scrollToSection (GlobalKey key){
    Scrollable.ensureVisible(
        key.currentContext!,
        duration:  Duration(microseconds: 10),
        curve: Curves.easeInOut
    );
  }
  final ScrollController _scrollController = ScrollController();
  double _scrollPosition = 0;
  double _opacity = 0;

  _scrollListener() {
    setState(() {
      _scrollPosition = _scrollController.position.pixels;
    });
  }

  @override
  void initState() {
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;

    return Scaffold(
      // extendBodyBehindAppBar: true,
      backgroundColor: Colorses.secondary
      ,
      appBar: ResponsiveWidget.isSmallScreen(context)
          ? AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              leading: Builder(builder: (context) {
                return IconButton(
                onPressed: () => Scaffold.of(context).openDrawer(),
                icon:  Icon(Icons.menu,color: Colorses.white,));
              },),


            )
          : AppBar(
        backgroundColor: Colors.transparent,

        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [


              SizedBox(width: screenSize.width / 15),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      scrollToSection(homeSection);
                    },
                    child: Text(
                        'Home',
                        style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colorses.text))
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
                              color: Colorses.text)
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
                              color: Colorses.text)
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
                            color: Colorses.text)
                    ),
                  ),
                  SizedBox(width: screenSize.width / 15),


                ],
              ),

            ],
          ),
        ],
      ),
      // : PreferredSize(
      //         preferredSize: Size(screenSize.width, 70),
      //         child: TopBarContents()),
      drawer: ResponsiveWidget.isSmallScreen(context)? const MenuDrawer() :  SizedBox(width: w*0.03,),
      body: SingleChildScrollView(
        controller: _scrollController,
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
         //   Home1Page() ,
         // AboutUs(),
         // Services(),
         //   Projects(),
         //    Testimonial(),
         //  BlogPage(),
            Contact()
          ],
        ),
      ),
    );
  }
}
