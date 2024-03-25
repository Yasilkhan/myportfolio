import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

double h = 0.0;
double w = 0.0;

const AssetImage logo = AssetImage('assets/2359094.jpg');
const AssetImage profileImage = AssetImage('assets/mainphoto.png');
String frondImage = "assets/mainphoto.png";
String secondPhoto ="assets/successful-handsome-business-man-office.jpg";
// const String aboutContent = 
//     "As an enthusiastic and self-motivated professional, I thrive in challenging situations, showcasing "
//    "adaptability and maturity as a team player. \n       With a proven track record of reliability and responsibility',"
//    "I bring a proactive approach to all tasks, whether collaborating with others or taking the initiative independently."
//    "Known for excelling under pressure, I consistently adhere to strict deadlines, ensuring the successful completion of "
//    "projects.\n   My dedication to delivering results makes me a valuable asset in any team environment.'";

StateProvider self =StateProvider((ref) => "As an enthusiastic and self-motivated professional, I thrive in challenging situations, showcasing "
   "adaptability and maturity as a team player. \n       With a proven track record of reliability and responsibility',"
   "I bring a proactive approach to all tasks, whether collaborating with others or taking the initiative independently."
   "Known for excelling under pressure, I consistently adhere to strict deadlines, ensuring the successful completion of "
   "projects.\n   My dedication to delivering results makes me a valuable asset in any team environment.'");
