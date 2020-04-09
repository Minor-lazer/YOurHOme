import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:yoho/shared/colors.dart';
import 'package:yoho/shared/dimensions.dart';
import 'package:yoho/widgets/CardSearch.dart';

class SearchScreen extends StatefulWidget {
  SearchScreen({Key key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  String category;
  String fromDate,toDate; 

@override
  void initState() {
    // TODO: implement initState
    super.initState();
     
//    fromDate=dateFormat(DateTime.now().toString());
//     toDate = dateFormat(DateTime.now().toString());


    
//     category='BOYS';
  }

// String dateFormat(cdate)
// {
//   var date = DateTime.parse(cdate);
//   var formate2 = "${date.year}-${date.month}-${date.day}";
//  return formate2;
// }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     
      home:  Scaffold(
        backgroundColor: Primary,
body:SingleChildScrollView(

  child: Container(
    child: Column(
mainAxisAlignment: MainAxisAlignment.start,
crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top:30.0,left:10),
          child: IconButton(icon: Icon(Icons.arrow_back,color: Colors.white,),onPressed: null,),
        ),

        SizedBox(height:0.0),
          Hero(
            tag:'search',
                      child: Container(
              alignment: Alignment.center,
              width:double.infinity,
              margin:const EdgeInsets.symmetric(horizontal:20.0) ,
              padding: EdgeInsets.symmetric(horizontal:20.0,vertical:5.0),
            
              //Search box codes!
              decoration: BoxDecoration(
                
                color: Colors.white,
                borderRadius: BorderRadius.circular(100.0)
              ),
              child: TextField(
                autofocus: false,
                style:  TextStyle(color: Primary),
                
                decoration: InputDecoration(
                
                prefixIcon: Icon(Icons.search,color: Primary,),
                suffixIcon: IconButton(onPressed: null, icon:Icon(Icons.close),color: Primary,),
                border: InputBorder.none,
         
                filled: false,
                fillColor: Colors.white,
                
                hintText:"Silchar",
                hintStyle:TextStyle(color: Primary)
                ),
                
              ),

            ),
          ),
          SizedBox(height:15),
//         Container(
//           margin: EdgeInsets.symmetric(horizontal: 5),
//           child: Row(
//             mainAxisSize: MainAxisSize.max,
              
//             children: <Widget>[
//               Expanded(
//                 child: Container(
//                   padding: EdgeInsets.symmetric(vertical:10.0),
                   
//                   decoration: BoxDecoration(
//                    color: Primary,
//                    boxShadow: [
//                      BoxShadow(
//                        blurRadius: 12.0,
//                        color: Colors.black87.withOpacity(.3),
//                        offset: Offset(2,-2),
//                       //  spreadRadius: 10,
//                      ),]),
// child: Column(
//   crossAxisAlignment: CrossAxisAlignment.start,
//   children: <Widget>[
//     Padding(
//       padding: const EdgeInsets.only(left:14.0),
//       child: Text('From',style: TextStyle(color:Colors.white,fontSize: 20),),
//     ),
//     FlatButton(
//     onPressed: () {
//           DatePicker.showDatePicker(context,
//                                 showTitleActions: true,
//                                 minTime: DateTime.now(),
//                                 maxTime: DateTime(2099, 12, 30), onChanged: (date) {
//                                   setState(() {
//                                     // fromDate=dateFormat(date.toString());
//                                   });
//                               print('change $date');
//                             }, onConfirm: (date) {
//                               setState(() {
//                                     fromDate=dateFormat(date.toString());
//                                   });
//                               print('confirm $date');
//                             }, currentTime: DateTime.now(), );
//     },
//     child: Text('$fromDate',
//           style: TextStyle(color: Colors.white),
//     )),
//   ],
// ),
//                 ),
//               ),
//                 Expanded(
//                 child: Container(
//                   padding: EdgeInsets.symmetric(vertical:10.0),
                   
//                  decoration: BoxDecoration(
//                    color: Primary,
//                    boxShadow: [
//                      BoxShadow(
//                        blurRadius: 12.0,
//                        color: Colors.black87.withOpacity(.3),
//                        offset: Offset(2,-2),
//                       //  spreadRadius: 10,
//                      ),]),
// child: Column(
//   crossAxisAlignment: CrossAxisAlignment.start,
//   children: <Widget>[
//     Padding(
//       padding: const EdgeInsets.only(left:14.0),
//       child: Text('To',style: TextStyle(color:Colors.white,fontSize: 20),),
//     ),
//     FlatButton(
//     onPressed: () {
//           DatePicker.showDatePicker(context,
//                                 showTitleActions: true,
//                                 minTime: DateTime.now(),
//                                 maxTime: DateTime(2099, 12, 30), onChanged: (date) {
//                                   setState(() {
//                                     // toDate=dateFormat(date.toString());
                                      
//                                   });
//                               print('change $date');
//                             }, onConfirm: (date) {
//                               setState(() {
//                                     toDate=dateFormat(date.toString());
//                                   });
//                               print('confirm $date');
//                             }, currentTime: DateTime.now(), );
//     },
//     child: Text('$toDate',
//           style: TextStyle(color: Colors.white),
//     )),
//   ],
// ),
//                 ),              
//               ),
//               Expanded(
//                 child: Container(
                   
//                   padding: EdgeInsets.symmetric(vertical:20.0,horizontal: 5),
//                  decoration: BoxDecoration(
//                    color: Colors.white,
//                    boxShadow: [
//                      BoxShadow(
//                        blurRadius: 12.0,
//                        color: Colors.black87.withOpacity(.3),
//                        offset: Offset(2,-2),
//                       //  spreadRadius: 10,
//                      )
//                    ]
//                  ),
                    
// child: Column(
//   crossAxisAlignment: CrossAxisAlignment.start,
//   children: <Widget>[
     
      
        
//      DropdownButton<String>(
//           value:category,
//           underline: SizedBox(),
// focusColor: Primary,
// style: TextStyle(color:Primary,fontSize: 20),
//   items: <String>['BOYS', 'GIRLS', 'FAMILY', 'ONE DAY'].map((String value) {
//       return new DropdownMenuItem<String>(
//           value: value,
//           child: new Text(value,style: TextStyle(color:Primary,fontSize: 18),),
//       );
//   }).toList(),
//   elevation: 0,
 
//   onChanged: (value) {
// setState(() {
//   category = value;
// }

// );

//   },
// ),
    
//   ],
// ),
//                 ),
//               )
//             ],
//           ),
//         ),
SizedBox(height:10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            children: <Widget>[
                  Text('3 PGs Found',style:TextStyle(color: Colors.white,fontSize: 20)),
              Row(children: <Widget>[
            
IconButton(icon: Icon(Icons.sort,color:Colors.white), onPressed: null),
Text('Sort',style:TextStyle(color: Colors.white,fontSize: 15)),
              ],),
Row(children: <Widget>[
IconButton(icon: Icon(Icons.filter_list,color:Colors.white), onPressed: null),
Text('Filter',style:TextStyle(color: Colors.white,fontSize: 15)),
],),


            ],
          ),

CardSearch(image: 'assets/images/boys_pg.jpg',name: 'RADIANT PG',address: 'Station Road, Silchar',disc: 10,mprice: 7000,),
CardSearch(image: 'assets/images/girls_hostel.jpg',name: 'SUNSHINE PG',address: 'Station Road, Silchar',disc: 5,mprice: 6000,),
CardSearch(image: 'assets/images/girls_pg_1.jpg',name: 'BIPASHA PG',address: 'Station Road, Silchar',disc:15,mprice: 5000,)
        
      ],
    ),
  ),
) ,
      ),
    );
  }
}