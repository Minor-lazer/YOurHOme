import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yoho/shared/colors.dart';
import 'package:yoho/shared/dimensions.dart';
import 'package:yoho/widgets/CardSearch.dart';
import 'package:flutter_range_slider/flutter_range_slider.dart' as frs;
import 'package:yoho/widgets/FilterForm.dart';
class SearchScreen extends StatefulWidget {
  SearchScreen({Key key,this.value}) : super(key: key);

  String value;

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  String category,city;
  String fromDate,toDate; 
  String search;

  TextEditingController _controller = TextEditingController();
   double _lowerValue = 3000.0;
  // double _lowerValueFormatter = 20.0;
  double _upperValue = 10000.0;
  // double _upperValueFormatter = 20.0;
// RangeValues _values = RangeValues(0, 1);

@override
  void initState() {
    // TODO: implement initState
    super.initState();
_controller.text = widget.value;
search = widget.value;
  //  fromDate=dateFormat(DateTime.now().toString());
    // toDate = dateFormat(DateTime.now().toString());


    
    // city='SELECT CITY';
    // category='SELECT CATEGORY';
  }

  // @override
  // void initState() {
  //   super.initState();
  //   // rangeSliders = _rangeSliderDefinitions();
  // }


//Filter Bottom SeeetFunction
void _filterBSheet(BuildContext context){
    showModalBottomSheet(
      context: context,
      builder: (BuildContext bc){
          return Container(
            color: Accent,
            padding: EdgeInsets.symmetric(vertical:20,horizontal:0),
                 child: FilterForm(),
          );
      }
    );
}

  @override
  Widget build(BuildContext context) {
         
        // print(widget.value);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     
      home:  Scaffold(
        backgroundColor: Colors.white,
body:SingleChildScrollView(

  child: Container(
    child: Column(
mainAxisAlignment: MainAxisAlignment.start,
crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top:30.0,left:10),
          child: IconButton(icon: Icon(Icons.arrow_back,color: Primary,),onPressed: ()
          {
            Navigator.pop(context);
          },),
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
                
                color: Accent,
                borderRadius: BorderRadius.circular(100.0)
              ),
              child: Material(
                color: Accent,
                              child: TextField(
                        controller: _controller,        
                  autofocus: false,
                  style:  TextStyle(color: Primary),
                  onChanged: (e)
                  {
search=e;
                  },
                  decoration: InputDecoration(
                  
                  prefixIcon: Icon(Icons.search,color: Primary,),
                  suffixIcon: search.isNotEmpty?IconButton(onPressed: ()
                  {
                    search='';
                    _controller.clear();
                  }, icon:Icon(Icons.clear),color: Primary,):null,
                  border: InputBorder.none,
         
                  filled: false,
                  fillColor: Colors.white,
                  
                  hintText:"Search PG/HOSTEL",
                  hintStyle:TextStyle(color: Primary)
                  ),
                
                ),
              ),

            ),
          ),
          
          SizedBox(height:15),
       
SizedBox(height:10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            children: <Widget>[
                  Text('3 PGs Found',style:TextStyle(color: Primary,fontSize: 20)),
              Row(children: <Widget>[
            
IconButton(icon: Icon(Icons.sort,color:Primary), onPressed: null),
Text('Sort',style:TextStyle(color: Primary,fontSize: 15)),
              ],),
Row(children: <Widget>[
IconButton(icon: FaIcon(FontAwesomeIcons.filter,color: Primary,size: 15,), onPressed: (){
  _filterBSheet(context);
}),

Text('Filter',style:TextStyle(color: Primary,fontSize: 15)),
],),


            ],
          ),

CardSearch(image: 'boys_pg.jpg',name: 'RADIANT PG',address: 'Station Road, Silchar',disc: 10,mprice: 7000,),
CardSearch(image: 'girls_hostel.jpg',name: 'SUNSHINE PG',address: 'Station Road, Silchar',disc: 5,mprice: 6000,),
CardSearch(image: 'girls_pg_1.jpg',name: 'BIPASHA PG',address: 'Station Road, Silchar',disc:15,mprice: 5000,)
        
      ],
    ),
  ),
) ,
      ),
    );
  }
}


