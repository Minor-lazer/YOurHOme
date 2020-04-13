import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yoho/shared/dimensions.dart';
import '../shared/colors.dart';
class HostelCards extends StatelessWidget
{
 String title,imgUrl;
 double fontSize;
  HostelCards({this.title,this.imgUrl,this.fontSize:23.0});

 @override
  Widget build(BuildContext context) {
     return Card(
      //  margin: EdgeInsets.only(bottom:5,left:5),
  // semanticContainer: true,
  margin:EdgeInsets.all(5),
  elevation: 3.0,
  child: Container(

  decoration: BoxDecoration(color: Primary),
  width: w(context)/2-30,
  height: h(context)/5.5,
      child:Column(
mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        
          Image.asset("assets/icons/$imgUrl",width:w(context)/6,fit:BoxFit.cover),
          SizedBox(height:10),
       Text("$title",style: GoogleFonts.montserrat(color:Colors.white,fontSize: fontSize,fontWeight: FontWeight.w500),),
        ],       
      ),
    ),
  );
  }
}