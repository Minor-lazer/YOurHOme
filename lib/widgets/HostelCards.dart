import 'package:flutter/material.dart';
import 'package:yoho/shared/dimensions.dart';
class HostelCards extends StatelessWidget
{
 String title,imgUrl;
 double fontSize;
  HostelCards({this.title,this.imgUrl,this.fontSize:30.0});

 @override
  Widget build(BuildContext context) {
     return Card(
       margin: EdgeInsets.only(bottom:10,left:10),
  semanticContainer: true,
  elevation: 3.0,
  child: Container(

  alignment: Alignment.center,
  decoration: BoxDecoration(color: Colors.white),
  width: card_size,
      child:Stack(
 alignment: Alignment.center,
      children: <Widget>[
        ShaderMask(
          blendMode: BlendMode.multiply,
      shaderCallback: (Rect bounds) {
        return LinearGradient(
         
          colors: [Colors.indigoAccent.withOpacity(.8), Colors.indigo.withOpacity(.9)],
        ).createShader(bounds);
      },
          child: Image.asset("assets/images/$imgUrl",height: card_size,width:card_size,fit:BoxFit.cover)),
        Align(
          alignment: Alignment.center,
          child: Text("$title",style: TextStyle(color:Colors.white,fontSize: fontSize,fontWeight: FontWeight.w800),)),
        ],       
      ),
    ),
  );
  }
}