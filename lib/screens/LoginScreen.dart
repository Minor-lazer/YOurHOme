import 'package:flutter/material.dart';
import 'package:yoho/shared/colors.dart';
import 'package:yoho/shared/dimensions.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       home:Scaffold(
         body:
         SingleChildScrollView(
                    child: Container(
             width: double.infinity,
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.center,
           
               children: <Widget>[
                 SizedBox(height:h(context)/10),
                 Image.asset('assets/images/yoho.png',width: w(context)/3,),
                     SizedBox(height:h(context)/24),
                 Container(
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
                { 
                },
                autofocus: false,
                style:  TextStyle(color: Primary),
                
                decoration: InputDecoration(
                
                prefixIcon: Icon(Icons.person,color: Primary,),
                // suffixIcon: IconButton(onPressed: null, icon:Icon(Icons.close),color: Primary,),
                border: InputBorder.none,
           
                filled: false,
                fillColor: Primary,
                
                hintText:"Username",
                hintStyle:TextStyle(color: Primary)
                ),
                
              ),

            ),
           SizedBox(height:h(context)/45),
             Container(
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
                { 
                },
                autofocus: false,
                style:  TextStyle(color: Primary),
                obscureText: true,
                decoration: InputDecoration(
                
                prefixIcon: Icon(Icons.lock,color: Primary,),
                suffixIcon: IconButton(icon: Icon(Icons.visibility_off,color: Primary), onPressed: null),
                // suffixIcon: IconButton(onPressed: null, icon:Icon(Icons.close),color: Primary,),
                border: InputBorder.none,
           
                filled: false,
                fillColor: Primary,
                
                hintText:"Password",
                hintStyle:TextStyle(color: Primary)
                ),
                
              ),

            ),
 SizedBox(height:h(context)/45),
            FlatButton(
              color: Primary,
              padding: EdgeInsets.symmetric(horizontal: 25,vertical:15),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(60)),
              onPressed: ()
                {

                }, child: Text('LOGIN',style: TextStyle(color:Colors.white,fontSize: 20,fontWeight: FontWeight.w800),)),
                 SizedBox(height:30),
                 Container(
                   width:w(context),
                  //  height: h(context),
                   decoration: BoxDecoration(
                     color:Primary,
                     borderRadius: BorderRadius.only(topLeft:Radius.circular(60) ,topRight:Radius.circular(60)  )
                   ),
                   child: Column(
                    
                     children: <Widget>[
                       SizedBox(height:30),
                       Container(
                         margin: EdgeInsets.symmetric(horizontal:25,vertical:0),
                         child: FlatButton(
                           color: Colors.white,
                           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(60)),
                           
                           padding: EdgeInsets.symmetric(horizontal: 25,vertical:15),
                           onPressed: ()
                         {

                         }, child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceAround,
                           children: <Widget>[
                             Text('SIGN IN WITH',style: TextStyle(color:Primary,fontSize: 17,fontWeight: FontWeight.w600),),
                             InkWell(
                               onTap: ()
                               {
                                 
                               },
                               child: Image.asset('assets/icons/google.png',width: w(context)/12,)),
                             InkWell(
                                 onTap: ()
                               {
                                 
                               },
                               child: Image.asset('assets/icons/facebook.png',width: w(context)/12))
                           ],

                         )),

                       ),
                      //  SizedBox(height:5),
                      //   Container(
                      //    margin: EdgeInsets.symmetric(horizontal:25,vertical:0),
                      //    child: FlatButton(
                      //      color: Colors.white,
                      //      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(60)),
                           
                      //      padding: EdgeInsets.symmetric(horizontal: 25,vertical:15),
                      //      onPressed: ()
                      //    {

                      //    }, child: Row(
                      //      children: <Widget>[
                      //        Text('SIGN IN WITH',style: TextStyle(color:Primary,fontSize: 20,fontWeight: FontWeight.w800),)
                      //      ],
                      //    )),
                      //  ),
                        SizedBox(height:10),
                        Text('Dont\'t have an account ?',style: TextStyle(color:Colors.white,fontSize: 17,fontWeight: FontWeight.w600),),
                        SizedBox(height:0),
                        OutlineButton(
                          onPressed: ()
                          {

                          },
                          color: Colors.white,
                          borderSide: BorderSide(color: Colors.white,width: 1),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(60)),
                           
                           padding: EdgeInsets.symmetric(horizontal: 10,vertical:5),
                          child: Text('SIGN UP',style: TextStyle(color:Colors.white,fontSize: 17,fontWeight: FontWeight.w600),)),
SizedBox(height:20),
                     ],
                   ),
                 )
               ],
             ),
           ),
         )
       )
    );
  }
}