import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yoho/shared/dimensions.dart';
import '../shared/colors.dart';
class Location extends StatelessWidget
{
 String city,imgUrl;
 IconData icon;
 bool isIcon;
  Location({this.city,this.imgUrl,this.icon,this.isIcon=false});

 @override
  Widget build(BuildContext context) {
    
   return Column(
     crossAxisAlignment: CrossAxisAlignment.center,
     children: <Widget>[
       Container(
         margin: EdgeInsets.symmetric(vertical:10,horizontal: 20),
         width: 50,
         height: 50,
         decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(40),
          
           color:Primary,
         ),
         child: this.isIcon?Icon(icon,color: Colors.white,):Image.asset(this.imgUrl),
       ),
       Text('${this.city}',style: GoogleFonts.montserrat(color:Primary,fontSize: 15,)),
     ],
   );
  }
}