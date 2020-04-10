import 'package:flutter/material.dart';
import '../shared/colors.dart';
import '../shared/dimensions.dart';
class CardSearch extends StatelessWidget {
  String image,name,address;
  int mprice,disc,price;
CardSearch({Key key,this.image,this.name,this.address,this.mprice,this.disc});

  @override
  Widget build(BuildContext context) {
      return Card(
          margin: EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
          elevation: 5,
          
          color:Primary,
          child: Column(children: <Widget>[

          Container(
          height: h(context)/5,
          width:w(context),
          padding: EdgeInsets.symmetric(vertical:10,horizontal:10),
          decoration: BoxDecoration(
            color: Accent,
            
          ),
          child: Image.asset('assets/images/${this.image}',width: w(context),fit: BoxFit.cover,),
          
          ),
          Container(

          padding: EdgeInsets.symmetric(vertical:10,horizontal:10),
          decoration: BoxDecoration(
            color:Colors.white,
           
            border: Border(bottom: BorderSide(color: Primary,width: 3.0),)
          ),
          // height:h(context)/10,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
children: <Widget>[
  
  Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
    Text('${this.name}',style:TextStyle(color:Primary,fontSize: 20,fontWeight: FontWeight.w500)),
    Text('${this.address}',style:TextStyle(color:Primary.withOpacity(.8),fontSize: 15,fontWeight: FontWeight.w400)),
    Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('₹${(this.mprice - (this.mprice/100)).floor()}',style:TextStyle(color:Primary,fontSize: 20,fontWeight: FontWeight.w500)),
        SizedBox(width:10),
    Text('₹${this.mprice}',style:TextStyle(color:Primary,fontSize: 15,fontWeight: FontWeight.w400,decoration: TextDecoration.lineThrough)),
    ],)
  ],),
  RaisedButton(onPressed: ()
  {

  },
  splashColor: Accent,

  padding: EdgeInsets.symmetric(vertical:10,horizontal:15),
  shape:RoundedRectangleBorder(borderRadius:BorderRadius.all(Radius.circular(20.0))),
  color:Primary,

  child: Text('${this.disc}% Off',style:TextStyle(color:Colors.white,fontSize: 20,fontWeight: FontWeight.w800)),
  )
],
          ),
          ),
        
        ],));
      
  }
 
}