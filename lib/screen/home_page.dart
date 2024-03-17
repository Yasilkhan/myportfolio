import 'package:flutter/material.dart';
import 'package:portfolio/core/colors.dart';
import 'package:portfolio/core/utiles/responsiveLayout.dart';
import 'package:portfolio/screen/aboutUs.dart';
import 'package:responsive_ui_builder/widget_builders.dart';


import '../core/costant.dart';
import '../widgets/btn_Controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/drwer_menu.dart';
import 'home1_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
      backgroundColor: Colorses.primeryColor,
      appBar: ResponsiveWidget.isSmallScreen(context)
          ? AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              leading: Builder(builder: (context) {
                return IconButton(
                onPressed: () => Scaffold.of(context).openDrawer(),
                icon:  Icon(Icons.menu,color: Colorses.secondery,));
              },) 
              
            )
          : PreferredSize(
              preferredSize: Size(screenSize.width, 70),
              child: TopBarContents()),
      drawer: MenuDrawer(),
      body: SingleChildScrollView(
        controller: _scrollController,
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Home1Page(),
          AboutUs()],
        ),
      ),
    );
  }
}
