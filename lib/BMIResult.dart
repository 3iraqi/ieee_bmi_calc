import 'package:flutter/material.dart';
import 'package:ieee_bmi_calc/BMIScreen.dart';
class BMIResult extends StatelessWidget {
BMIResult({@required this.result ,required this.indexx});

final int? result;
final int indexx;

List<Stringss>comments=[
  Stringss(statee: "Bad",comment: "You Need to See A Doctor"),
  Stringss(statee: "Normal",comment: "Good Job !"),
  Stringss(statee: "Perfect",comment: "You Are A Hero"),

];



  @override
  Widget build(BuildContext context)=>Scaffold(
    backgroundColor: Color(0xff102136),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff102136),
        title: const Text(
          'Your Result',
          style: TextStyle(
            fontSize: 40,
          ),
        ),
      ),
    body: Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              color: Color(0xff323244),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(

                  mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(height: 100,),
                     Expanded(
                       child: Text(
                          '${comments[indexx].statee}',
                         style:const  TextStyle(
                           color: Colors.green,
                           fontSize: 20,
                         ),
                        ),
                     ),//Gender
                     Expanded(
                       child: Text(
                          '$result',
                         style:const  TextStyle(
                           color: Colors.white,
                           fontSize: 70,
                         ),
                        ),
                     ),//Gender
                     Expanded(
                       child: Text(
                          'You Have A ${comments[indexx].statee} body weight,\n ${comments[indexx].comment}!',
                         style:const  TextStyle(
                           color: Colors.white70,
                           fontSize: 20                         ,
                         ),
                        ),
                     ),//Gender

                    ],
                ),
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {


            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context)=> BmiScreen()));
          },
          child: Container(
            color: const Color(0xffE83D66),
            height: 60,
            width: double.infinity,
            child: Center(
              child: Text(
                'Re-Calculate'.toUpperCase(),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ),
      ],
    ),
    );

}
class Stringss{
  Stringss({this.statee,this.comment});
  String? statee="";
  String? comment="";
}
