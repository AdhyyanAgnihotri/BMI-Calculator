import 'package:flutter/material.dart';
import 'package:bmi_app/main.dart';

class Result extends StatelessWidget{
  var res;
  var restext;

  Result({required this.res, required this.restext});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: const Color(0xFF24263B),
      ),
      body: Center(
        child: Container(
          width: double.maxFinite,
          color: const Color(0xFF1C2135),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Your Result', style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold,color: Colors.white),),
                Container(
                  height: 400,
                  width: 350,
                    child: Card(
                      elevation: 10,
                      color: Color(0xFF24263B),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(restext, style: TextStyle(color: Colors.green, fontSize: 40, fontWeight: FontWeight.bold),),
                          Text(res, style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),),
                        ],
                      )
                    ),
                ),
                ElevatedButton(onPressed: (){
                  Navigator.of(context).pop();
                },
                    child: Text('Re-Calculate',style: TextStyle(fontSize: 34,fontWeight: FontWeight.bold,color: Colors.white),),
                    style: ElevatedButton.styleFrom(
                     backgroundColor: const Color(0xFFE83D67),
                     fixedSize: const Size(350, 80),
                    ),
                ),
              ],
            ),
          ),
        ),
      )
    );
  }
}