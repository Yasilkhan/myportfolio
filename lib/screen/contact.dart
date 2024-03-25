import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../core/colors.dart';
import '../core/costant.dart';

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: h * 1.2,
      child: Column(
        children: [
          Row(
            children: [
              Container(
                color: Colors.red,
                width: w * 0.5,
                height: h * 1,
                child: Padding(
                  padding: EdgeInsets.only(left: w * 0.1),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: h * 0.16,
                      ),
                      Text(
                        'Contact',
                        style: GoogleFonts.montserrat(
                            textStyle: TextStyle(fontSize: h * 0.03)),
                      ),
                      SizedBox(
                        height: h * 0.03,
                      ),
                      RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "Get in ",
                              style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                    fontSize: w * 0.025,
                                    color: Colorses.text2,
                                    fontWeight: FontWeight.bold),
                              )),
                          TextSpan(
                              text: "Touch",
                              style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                    fontSize: w * 0.025,
                                    color: Colorses.text,
                                    fontWeight: FontWeight.bold),
                              )),
                          TextSpan(
                              text: "With Us",
                              style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                    fontSize: w * 0.025,
                                    color: Colorses.text2,
                                    fontWeight: FontWeight.bold),
                              )),
                        ]),
                      ),
                      SizedBox(
                        height: h * 0.05,
                      ),
                      SizedBox(
                        width: w * 0.32,
                        child: Text(
                          "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. "
                              "Aenean massa. Cum sociis natoque penatibus.",
                          style: GoogleFonts.montserrat(
                              textStyle: TextStyle(fontSize: w * 0.012)),
                        ),
                      ),
                      SizedBox(height: h*0.08,),
                      iconText(icon: Icons.call, data: '+91 9847547991'),
                      SizedBox(height: h*0.012,),
                      iconText(icon: Icons.mail, data: 'yasilkhan124@gmail.com'),
                      SizedBox(height: h*0.012,),
                      iconText(icon: Icons.access_time_filled, data: '+91 9847547991'),
                      SizedBox(height: h*0.012,),
                      iconText(icon: Icons.location_pin, data: 'Kakkand, Kochi ,Kerala, 678583'),

                    ],
                  ),
                ),
              ),
              SizedBox(
                height: h*1,
                width: w*0.5,
                  child: Padding(
                    padding:  EdgeInsets.only(left: w*0.03,right: w*0.03),
                    child: Column
                      (
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Name",style: GoogleFonts.montserrat(textStyle: TextStyle(fontSize: w*0.015)),),
                        SizedBox(height: h*0.03,),
                        Container(
                          height: h*0.07,
                          width: w*0.4,
                          color: Colors.grey,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(

                              decoration:InputDecoration(
                                hintText: "Name",hintStyle: GoogleFonts.montserrat(textStyle: TextStyle(fontSize: w*0.015)),
                                fillColor: Colorses.text2,
                                disabledBorder: UnderlineInputBorder(),
                                border: OutlineInputBorder(


                                  borderSide: BorderSide(color: Colors.black)
                                )
                              ) ,
                            ),
                          ),
                        ),
                        SizedBox(height: h*0.05,),
                      ],
                    ),
                  )
              )
            ],
          ),
        ],
      ),
    );
  }
}
Widget iconText({required IconData icon, required String data}){
  return Row(
    children: [
     Icon(icon,color: Colorses.text,) ,
      SizedBox(width: w*0.015,),
      Text(data,style: GoogleFonts.montserrat(textStyle: TextStyle(fontSize:w*0.012,fontWeight: FontWeight.bold,color: Colorses.text2)),)
    ],
  );
}