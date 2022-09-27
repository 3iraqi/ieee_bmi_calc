import 'dart:math';
import 'BMIResult.dart';
import 'package:flutter/material.dart';
class BmiScreen extends StatefulWidget {
  const BmiScreen({Key? key}) : super(key: key);
  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  ///---------------------------[Variables]:--------------------
   bool isMale = true;

   double height=120.0;
   int weight =40;
   int age =15;
   int indexx=1;
  ///----------------------------------------------------------
  @override
  Widget build(BuildContext context) =>Scaffold(
    backgroundColor: const Color(0xff102136),
    appBar: AppBar(
      elevation: 8,
      centerTitle: true,
      title: const Text(
        "BMI CALCULATOR",
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      backgroundColor: const Color(0xff102136),
    ),
    body: SafeArea(
      child: Column(
        children: [
          ///----------------------------------------------1st Row
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  ///---------------------------------------------------------male
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = true;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: isMale ? Colors.blue : const Color(0xff323244),
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: Center(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: const [
                              Icon(
                                Icons.male,
                                size: 60,
                                color: Colors.white,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                'Male',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),

                  ///-------------------------------------------------------------male

                  const SizedBox(
                    width: 20,
                  ),

                  ///----------------------------female
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = false;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: !isMale ? Colors.blue : const Color(0xff323244),
                            borderRadius: BorderRadius.circular(15)),
                        child: Center(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: const [
                              Icon(
                                Icons.female,
                                size: 60,
                                color: Colors.white,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                'Female',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),

                  ///----------------------------female
                ],
              ),
            ),
          ),

          ///----------------------------------------------1st Row

          ///----------------------------------------------2nd Row
          Expanded(
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(color: const Color(0xff323244), borderRadius: BorderRadius.circular(15)),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Height'.toUpperCase(),
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children:  [
                            Text(
                              '${height.round()}',
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text(
                              'cm',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),

                        Slider(
                            value: height,
                            max: 220,
                            min: 80,
                            onChanged: (value) {
                              setState((){
                                height=value;});

                            })
                      ],
                    ),
                  ),
                ),
              )
          ),

          ///----------------------------------------------2nd Row

          ///----------------------------------------------3rd Row
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  ///----------------------------Left Section
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(color: const Color(0xff323244), borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'age'.toUpperCase(),
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            '$age',
                            style:const  TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed: () {
                                  setState((){
                                    age--;
                                  });
                                },
                                heroTag: "age--",
                                elevation: 0,
                                mini: true,
                                child: const Icon(Icons.remove),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              FloatingActionButton(
                                onPressed: () {
                                  setState((){
                                    age++;
                                  });
                                },
                                heroTag: "age++",
                                elevation: 0,
                                mini: true,
                                child: const Icon(Icons.add),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),

                  ///----------------------------Left Section

                  const SizedBox(
                    width: 20,
                  ),

                  ///----------------------------Right Section
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          color: const Color(0xff323244),
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'weight'.toUpperCase(),
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            '$weight',
                            style:const TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed: () {
                                  setState((){
                                    weight--;
                                  });
                                },
                                heroTag: "weight--",
                                elevation: 0,
                                mini: true,
                                child: const Icon(Icons.remove),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              FloatingActionButton(
                                onPressed: () {
                                  setState((){
                                    weight++;
                                  });
                                  },
                                heroTag:"weight++" ,
                                elevation: 0,
                                mini: true,
                                child: const Icon(Icons.add),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  ///----------------------------Right Section
                ],
              ),
            ),
          ),

          ///----------------------------------------------3rd Row

          ///--------------------------------------------------Button
          GestureDetector(
            onTap: () {

              double result=weight/pow(height/100, 2);
              if (result<15){
                indexx=0;
              }else if(result>15&&result<25){
                indexx=1;
              }else if(result>25&&result<40){
                indexx=2;
              }

              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context)=> BMIResult(
                        result: result.round(),
                        indexx: indexx,


                      )));
                },
            child: Container(
              color: const Color(0xffE83D66),
              height: 60,
              width: double.infinity,
              child: Center(
                child: Text(
                  'Calculate'.toUpperCase(),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),

          ///--------------------------------------------------Button
        ],
      ),

      /// Main Column
    ),
  );
// var result=weight/pow(height/100, 2);
}