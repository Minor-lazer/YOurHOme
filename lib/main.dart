import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './shared/dimensions.dart';
import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;

import 'widgets/HostelCards.dart';
Future<String> loadAsset() async {
  return await rootBundle.loadString('assets/config.json');
}


void main()=>runApp(Yoho());

class Yoho extends StatelessWidget{
@override

Widget build (BuildContext context)
{
  return new MaterialApp(   
  debugShowCheckedModeBanner: false,
  theme:new ThemeData (primarySwatch:Colors.indigo),  
   
  home:HomePage(),

    
  );

}
}

class HomePage extends StatelessWidget { 
  @override
Widget build(BuildContext context)
{

  return new  Scaffold( 
    appBar : new AppBar(  
      centerTitle: true,
      title:new Text('YoHo',textAlign:TextAlign.center),
      

    elevation:defaultTargetPlatform == TargetPlatform.android ? 5.0:0.0, 
    actions: <Widget>[
      IconButton(icon: Icon(Icons.person,color: Colors.white,),onPressed: null)
    ],
    ),
    
//Bottom NavigationBar starts here

    bottomNavigationBar:BottomNavigationBar( 
       type: BottomNavigationBarType.fixed,
       currentIndex: 0, 
       backgroundColor: Colors.indigo,
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
    drawer:new Drawer( 
      child:new ListView(  
        children:<Widget> [  
          new UserAccountsDrawerHeader( 
            accountName: new Text(' Masum Ahmed '),
            accountEmail: new Text('radians86@yahoo.in'),
            currentAccountPicture:new CircleAvatar( 

            backgroundColor:Colors.white,
            child:new Text('P'),
            ),
          ),
      
          new ListTile(  
           leading:IconButton(icon: Icon(Icons.account_circle,color:Colors.indigo,size:30.0), onPressed: null) ,
           title: Text("My profile",style: TextStyle(color:Colors.indigo,fontSize: 20.0),),

            //Page routing            
            onTap:(){
                 Navigator.of(context).pop();
                 Navigator.of(context).push(new MaterialPageRoute( builder:(BuildContext context) => new NewPage ()));

                }
          ),
          new ListTile(  
           leading:IconButton(icon: Icon(Icons.info,color:Colors.indigo,size:30.0), onPressed: null) ,
           title: Text("About us",style: TextStyle(color:Colors.indigo,fontSize: 20.0),),

            onTap:(){
                 Navigator.of(context).pop();
                 Navigator.of(context).push(new MaterialPageRoute( builder:(BuildContext context) => new NewPage ()));

                }
   
          ),

          new ListTile(  
            leading:IconButton(icon: Icon(Icons.call,color:Colors.indigo,size:30.0), onPressed: null) ,
           title: Text("Contact us",style: TextStyle(color:Colors.indigo,fontSize: 20.0),),

            onTap:(){
                 Navigator.of(context).pop();
                 Navigator.of(context).push(new MaterialPageRoute( builder:(BuildContext context) => new NewPage ()));

                }
   

          ),

          new ListTile(  
            leading:IconButton(icon: Icon(Icons.share,color:Colors.indigo,size:30.0), onPressed: null) ,
           title: Text("Share",style: TextStyle(color:Colors.indigo,fontSize: 20.0),),
          ),
        
         new ListTile(  
            leading:IconButton(icon: Icon(Icons.exit_to_app,color:Colors.indigo,size:30.0), onPressed: null) ,
           title: Text("Sign out",style: TextStyle(color:Colors.indigo,fontSize: 20.0),
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
        
          
          Image.asset('assets/images/yoho_pg.jpg' ,width: 400.0, height: 100.0),
      
         
        
      SizedBox(height:20.0),
        Container(
          // margin:const EdgeInsets.only(left:50.0) ,
          padding: EdgeInsets.symmetric(horizontal:20.0,vertical:0.0),
        width:300.0,
  
          //Search box codes!
          decoration: BoxDecoration(
            
            color: Colors.indigo.withOpacity(.9),
            borderRadius: BorderRadius.circular(100.0)
          ),
          child: TextField(
            autofocus: false,
            style:  TextStyle(color: Colors.white),
            
            decoration: InputDecoration(
            
            suffixIcon: Icon(Icons.search,color: Colors.white,),
            border: InputBorder.none,
       
            filled: false,
            fillColor: Colors.white,
            
            hintText:"Search by name/location",
            hintStyle:TextStyle(color: Colors.white)
            ),
            
          ),

        ),
Padding(
  padding: const EdgeInsets.all(30.0),
  child:   Column(
  
  
  
      crossAxisAlignment: CrossAxisAlignment.center,
  
      mainAxisAlignment: MainAxisAlignment.center,
  
      children: <Widget>[
  

 
   // codes for cards(Boys PG,girls PG,Family PG and One time)  
Row(children: <Widget>[
      HostelCards(title: "Boys",imgUrl: 'boys_pg.jpg',),
  HostelCards(title: "Girls",imgUrl: 'girls_hostel.jpg',),
],),
Row(children: <Widget>[
      HostelCards(title: "Family",imgUrl: 'pg_family.jpg',),
  HostelCards(title: "One Day",imgUrl: 'one_day.jpg',),
],),

  
],
),
)
],
),
    )
);  
}
}

//New page starts here
class NewPage extends StatelessWidget 
{
  final String title='new';
  @override 
  Widget build (BuildContext context){ 
    return new Scaffold(  
      appBar:new AppBar(  
        title:new Text("New Page"),
      ),
      body:new Center(  
        child:new Text("New Page"),
        
      )
    );
  }
}
