import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:yoho/screens/SearchScreen.dart';
import './shared/dimensions.dart';
import './shared/colors.dart';
import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;

import 'screens/LoginScreen.dart';
import 'screens/SearchScreen.dart';
import 'widgets/HostelCards.dart';
import 'widgets/Location.dart';
Future<String> loadAsset() async {
  return await rootBundle.loadString('assets/config.json');
}


void main()=>runApp(Yoho());

class Yoho extends StatelessWidget{
@override

Widget build (BuildContext context)
{
  return  MaterialApp(   
  debugShowCheckedModeBanner: false,
  // theme: ThemeData (primarySwatch:Primary),  
   
  home:HomePage(),

    
  );

}
}

class HomePage extends StatelessWidget { 
  @override
Widget build(BuildContext context)
{

  return   Scaffold( 
    appBar :  AppBar(  
      centerTitle: true,
      title: Text('YoHo',textAlign:TextAlign.center),
      backgroundColor: Primary,

    elevation:defaultTargetPlatform == TargetPlatform.android ? 5.0:0.0, 
    actions: <Widget>[
      IconButton(icon: Icon(Icons.person,color: Colors.white,),onPressed: ()
      {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
      })
    ],
    ),
    
//Bottom NavigationBar starts here

    bottomNavigationBar:BottomNavigationBar( 
       type: BottomNavigationBarType.fixed,
       currentIndex: 0, 
       backgroundColor: Primary,
       selectedItemColor: Colors.white,
       unselectedItemColor: Colors.white70,



      items:[  
        BottomNavigationBarItem(  
          icon:Icon(Icons.message),
          title:Text('Message')
        ),

        BottomNavigationBarItem(  
          icon:Icon(Icons.home),
          title:Text('Home')
        ),
        BottomNavigationBarItem(  
          icon:Icon(Icons.call),
          title:Text('Contact')
        ),
      ]
    ),

   //Drawer codes starts here 
    drawer: Drawer( 
      child: ListView(  
        children:<Widget> [  
           UserAccountsDrawerHeader( 
            accountName:  Text(' Masum Ahmed '),
            accountEmail:  Text('radians86@yahoo.in'),
            decoration: BoxDecoration(
              color:Primary,
            ),
            currentAccountPicture: CircleAvatar( 

            backgroundColor:Colors.white,
            child: Text('P'),
            ),
          ),
      
           ListTile(  
           leading:IconButton(icon: Icon(Icons.account_circle,color:Primary,size:30.0), onPressed: null) ,
           title: Text("My profile",style: TextStyle(color:Primary,fontSize: 20.0),),

            //Page routing            
            onTap:(){
                 Navigator.of(context).pop();
                 Navigator.of(context).push( MaterialPageRoute( builder:(BuildContext context) =>  Page ()));

                }
          ),
           ListTile(  
           leading:IconButton(icon: Icon(Icons.info,color:Primary,size:30.0), onPressed: null) ,
           title: Text("About us",style: TextStyle(color:Primary,fontSize: 20.0),),

            onTap:(){
                 Navigator.of(context).pop();
                 Navigator.of(context).push( MaterialPageRoute( builder:(BuildContext context) =>  Page ()));

                }
   
          ),

           ListTile(  
            leading:IconButton(icon: Icon(Icons.call,color:Primary,size:30.0), onPressed: null) ,
           title: Text("Contact us",style: TextStyle(color:Primary,fontSize: 20.0),),

            onTap:(){
                 Navigator.of(context).pop();
                 Navigator.of(context).push( MaterialPageRoute( builder:(BuildContext context) =>  Page ()));

                }
   

          ),

           ListTile(  
            leading:IconButton(icon: Icon(Icons.share,color:Primary,size:30.0), onPressed: null) ,
           title: Text("Share",style: TextStyle(color:Primary,fontSize: 20.0),),
          ),
        
          ListTile(  
            leading:IconButton(icon: Icon(Icons.exit_to_app,color:Primary,size:30.0), onPressed: null) ,
           title: Text("Sign out",style: TextStyle(color:Primary,fontSize: 20.0),
          ),
         ),




        ],
      )
    ),

    body: SingleChildScrollView(
          child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
       mainAxisAlignment: MainAxisAlignment.center,
       children:<Widget>[ 
         SizedBox(height:20.0),
        
          
          // Image.asset('assets/images/yoho_pg.jpg' ,width: 400.0, height: 100.0),
      
         
        
      SizedBox(height:20.0),
        Hero(
          tag:'search',
                  child: Container(
              alignment: Alignment.center,
              width:double.infinity,
              margin:const EdgeInsets.symmetric(horizontal:20.0) ,
              padding: EdgeInsets.symmetric(horizontal:20.0,vertical:5.0),
            
              //Search box codes!
              decoration: BoxDecoration(
                
                color: Accent,
                borderRadius: BorderRadius.circular(100.0)
              ),
              child: TextField(
                onTap:()
                { Navigator.push(context, MaterialPageRoute(builder: (context)=>SearchScreen()));
                },
                autofocus: false,
                style:  TextStyle(color: Primary),
                
                decoration: InputDecoration(
                
                prefixIcon: Icon(Icons.search,color: Primary,),
                // suffixIcon: IconButton(onPressed: null, icon:Icon(Icons.close),color: Primary,),
                border: InputBorder.none,
           
                filled: false,
                fillColor: Primary,
                
                hintText:"Search PG/Hostel",
                hintStyle:TextStyle(color: Primary)
                ),
                
              ),

            ),
        ),
        SizedBox(height:10),
    Container(
      // height: h(context)/5,

      width: double.infinity,
      // padding: EdgeInsets.symmetric(horizontal:25),
      height: 100,
      child: ListView(

        shrinkWrap: false,
        scrollDirection: Axis.horizontal,
        children: <Widget>[  Location(city:'Nearby',icon:Icons.my_location,isIcon: true,),
 Location(city:'Silchar',icon:Icons.my_location,isIcon: true,),
   Location(city:'Karimganj',icon:Icons.my_location,isIcon: true,),
   Location(city:'Guwahati',icon:Icons.my_location,isIcon: true,),
 Location(city:'Hailakandi',icon:Icons.my_location,isIcon: true,),
          
 ],
      ),
    ),
  SizedBox(height:0),
Column(



    crossAxisAlignment: CrossAxisAlignment.center,

    mainAxisAlignment: MainAxisAlignment.center,

    children: <Widget>[


 Padding(
   padding: const EdgeInsets.only(bottom:10.0),
   child: Text("CATEGORIES",style: TextStyle(color:Primary,fontSize: 25,fontWeight: FontWeight.bold),),
 ),
 // codes for cards(Boys PG,girls PG,Family PG and One time)  
Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: <Widget>[
    HostelCards(title: "BOYS",imgUrl: 'fam.png',),
HostelCards(title: "GIRLS",imgUrl: 'fam.png',),
],),
Row(mainAxisAlignment: MainAxisAlignment.center,
  children: <Widget>[
    HostelCards(title: "FAMILY",imgUrl: 'fam.png',),
HostelCards(title: "ONE DAY",imgUrl: 'fam.png',),
],),


],
)
],
),
    )
);  
}
}

// page starts here
class Page extends StatelessWidget 
{
  final String title='';
  @override 
  Widget build (BuildContext context){ 
    return  Scaffold(  
      appBar: AppBar(  
        title: Text(" Page"),
      ),
      body: Center(  
        child: Text(" Page"),
        
      )
    );
  }
}
