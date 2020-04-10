import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yoho/shared/colors.dart';
import 'package:flutter_range_slider/flutter_range_slider.dart' as frs;
import 'package:yoho/shared/dimensions.dart';
class FilterForm extends StatefulWidget {
  FilterForm({Key key}) : super(key: key);

  @override
  _FilterFormState createState() => _FilterFormState();
}

class _FilterFormState extends State<FilterForm> {
    String category,city;
  String fromDate,toDate; 
  String search;

  TextEditingController _controller = TextEditingController();
   double _lowerValue = 3000.0;
  // double _lowerValueFormatter = 20.0;
  double _upperValue = 10000.0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();


   fromDate=dateFormat(DateTime.now().toString());
    // toDate = dateFormat(DateTime.now().toString());


    
    city='SELECT CITY';
    category='SELECT CATEGORY';
  }
String dateFormat(cdate)
{
  var date = DateTime.parse(cdate);
  var formate2 = "${date.year}-${date.month}-${date.day}";
 return formate2;
}
  @override
  Widget build(BuildContext context) {
    return Form(
       child:  Column(
            
              // mainAxisAlignment: MainAxisAlignment.start,
            
              crossAxisAlignment: CrossAxisAlignment.center,
            
              children: <Widget>[
            
              Padding(
            
                padding: const EdgeInsets.symmetric(vertical:5.0,horizontal: 10),
            
                child: Text('Price',style: GoogleFonts.roboto(color: Primary,fontSize: 20,fontWeight: FontWeight.w500),),
            
              ),
            
            //  RangeValues _values = RangeValues(0.3, 0.7);
            
            
            
            Padding(
            
              padding: const EdgeInsets.symmetric(vertical:5.0,horizontal: 10),
            
              child:   frs.RangeSlider(
            
              
            
                
            
              
            
                                min:3000,
            
              
            
                                max: 10000.0,
            
              
            
                                lowerValue: _lowerValue,
            
              
            
                                upperValue: _upperValue,
            
              
            
                                divisions: 140,
            
              
            
              
            
              
            
                                showValueIndicator: true,
            
              
            
                                valueIndicatorMaxDecimals: 0,
            
              
            
                                onChanged: (double newLowerValue, double newUpperValue) {
            
              
            
                                  setState(() {
            
              
            
                                    _lowerValue = newLowerValue;
            
              
            
                                    _upperValue = newUpperValue;
            
              
            
                                  });
            
              
            
                                },
            
              
            
                                onChangeStart:
            
              
            
                                    (double startLowerValue, double startUpperValue) {
            
              
            
                                  print(
            
              
            
                                      'Started with values: $startLowerValue and $startUpperValue');
            
              
            
                                },
            
              
            
                                onChangeEnd: (double newLowerValue, double newUpperValue) {
            
              
            
                                  print(
            
              
            
                                      'Ended with values: $newLowerValue and $newUpperValue');
            
              
            
                                },
            
              
            
                              ),
            
            ),
            
                         
            
                     SizedBox(height:20),
            
                          Container(
            
                            padding: EdgeInsets.symmetric(vertical:10.0),
            
            
            
                             width: w(context),
            
                            decoration: BoxDecoration(
            
                              border: Border(top:BorderSide(color: Accent)),
            
                             color: Colors.white,
            
                           
            
                            ),
            
            child: Row(
            
              
            
            mainAxisAlignment: MainAxisAlignment.center,
            
              children: <Widget>[
            
                Padding(
            
                  padding: const EdgeInsets.only(left:14.0),
            
                  child: Text('CHOOSE DATE',style: GoogleFonts.roboto(color: Primary,fontSize: 20,fontWeight: FontWeight.w300),),
            
                ),
            
                FlatButton(
            
                onPressed: () {
            
                      DatePicker.showDatePicker(context,
            
                                          showTitleActions: true,
            
                                          minTime: DateTime.now(),
            
                                          maxTime: DateTime(2099, 12, 30), onChanged: (date) {
            
                                            setState(() {
            
                                              // fromDate=dateFormat(date.toString());
            
                                            });
            
                                        print('change $date');
            
                                      }, onConfirm: (date) {
            
                                        setState(() {
            
                                              fromDate=dateFormat(date.toString());
            
                                            });
            
                                        print('confirm $date');
            
                                      }, currentTime: DateTime.now(), );
            
                },
            
                child: Text('$fromDate',
            
                      style: GoogleFonts.roboto(color: Primary,fontSize: 20,fontWeight: FontWeight.w500),
            
                )),
            
              ],
            
            ),
            
                          ),
            
                            
            
                          Container(
            
                             
            
                             padding: EdgeInsets.symmetric(vertical:10.0),
            
            
            
                             width: w(context),
            
                            decoration: BoxDecoration(
            
                              border: Border(bottom:BorderSide(color: Accent) ,top:BorderSide(color: Accent)),
            
                             color: Colors.white,
            
                           
            
                            ),
            
                              
            
            child: Row(
            
            mainAxisAlignment: MainAxisAlignment.center,
            
              children: <Widget>[
            
                 
            
                  
            
                    
            
                 DropdownButton<String>(
            
                      value:city,
            
                      underline: SizedBox(),
            
            focusColor: Primary,
            
            style: TextStyle(color:Primary,fontSize: 20),
            
            
            
              items: <String>['SELECT CITY', 'SILCHAR', 'KARIMGANJ', 'HAILAKANDI'].map((String value) {
            
                  return new DropdownMenuItem<String>(
            
                      value: value,
            
            
            
                      child: new Text(value,style: GoogleFonts.roboto(color: Primary,fontSize: 20,fontWeight: FontWeight.w300),),
            
                  );
            
              }).toList(),
            
              elevation: 0,
            
             
            
              onChanged: (value) {
            
            setState(() {
            
              city = value;
            
            }
            
            
            
            );
            
            
            
              },
            
            ),
            
                
            
              ],
            
            ),
            
                          ),
            
                           Container(
            
                             
            
                             padding: EdgeInsets.symmetric(vertical:10.0),
            
            
            
                             width: w(context),
            
                            decoration: BoxDecoration(
            
                              border: Border(),
            
                             color: Colors.white,
            
                           
            
                            ),
            
                              
            
            child: Row(
            
            mainAxisAlignment: MainAxisAlignment.center,
            
              children: <Widget>[
            
                 
            
                  
            
                    
            
                 DropdownButton<String>(
            
                   
            
              onChanged: (value) {
            
            setState(() {
            
              category = value;
            
            }
            
            
            
            );
            
            
            
              },
            
            
            
                      value:category,
            
                      // value: 'SELECT CATEGORY',
            
                      underline: SizedBox(),
            
            focusColor: Primary,
            
            style: TextStyle(color:Primary,fontSize: 20),
            
              items: <String>['SELECT CATEGORY', 'BOYS', 'GIRLS', 'FAMILY','ONE DAY'].map((String value) {
            
                  return new DropdownMenuItem<String>(
            
                      value: value,
            
                      child: new Text(value,style: GoogleFonts.roboto(color: Primary,fontSize: 20,fontWeight: FontWeight.w300),),
            
                  );
            
              }).toList(),
            
              elevation: 0,
            
             ),
            
                
            
              ],
            
            ),
            
                          )
            
                        
            
                    
            
                  
            
                          
            
            ],),
    );
  }
}