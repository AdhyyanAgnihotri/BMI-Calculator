import 'package:bmi_app/Result.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  double _currentSliderValue = 0;

  var wtController = TextEditingController();
  var ftController = TextEditingController();
  var inController = TextEditingController();

  var restext = "";

  var result ="";
  int _counterinft = 0;
  int _counterininch = 0;

  void _incrementheightinft(){
    setState(() {
      _counterinft++;
    });
  }

  void _decrementheightinft(){
    setState(() {
      _counterinft--;
    });
  }

  void _incrementheightininch(){
    setState(() {
      _counterininch++;
    });
  }

  void _decrementheightininch(){
    setState(() {
      _counterininch--;
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF24263B),
        title: Text('BMI Calculator', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          color: const Color(0xFF1C2135),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 170,
                    height: 200,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Card(
                        elevation: 10,
                        color: const Color(0xFF24263B),
                        child: Column(
                          children: [
                            Icon(Icons.male,size: 120,color: Colors.white,),
                            Text('Male',style: TextStyle(color: Colors.white54, fontSize: 34),)
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 170,
                    height: 200,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Card(
                        elevation: 10,
                        color: const Color(0xFF24263B),
                        child: Column(
                          children: [

                            Icon(Icons.female,size: 120,color: Colors.white,),
                            Text('Female',style: TextStyle(color: Colors.white54, fontSize: 34),)

                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),


              Container(
                height: 280,
                width: 370,
                child: Card(
                  elevation: 10,
                  color: const Color(0xFF24263B),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30, bottom: 30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [

                        Text('Weight', style: TextStyle(fontSize: 34,color: Colors.white54),),

                        Text('$_currentSliderValue',style: TextStyle(color: Colors.white,fontSize: 40, fontWeight: FontWeight.bold),),

                        Slider(value: _currentSliderValue,
                            inactiveColor: Colors.white,
                            activeColor: const Color(0xFFE83D67),
                            min: 0,
                            max: 200,
                            divisions: 200,
                            label: _currentSliderValue.toString(),
                            onChanged: (double newValue) {
                              setState(() {
                                _currentSliderValue = newValue;
                                wtController.text = newValue.toString();
                              }
                              );
                            }
                        ),
                      ],
                    ),
                  ),
                ),
              ),


              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 170,
                    height: 200,
                    child: Card(
                      elevation: 10,
                      color: const Color(0xFF24263B),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('Height in ft',style: TextStyle(fontSize: 25,color: Colors.white54),),


                          Text('$_counterinft',style: TextStyle(fontSize: 40, color: Colors.white, fontWeight: FontWeight.bold),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(onPressed: (){
                                _decrementheightinft();
                                ftController.text = _counterinft.toString();
                              },
                                  child: Icon(Icons.remove, color: Colors.white),
                                style: ElevatedButton.styleFrom(
                                  shape: CircleBorder(),
                                  padding: EdgeInsets.all(10),
                                  backgroundColor: const Color(0xFF8B8C9E),
                                  elevation: 10,

                                )
                              ),

                              ElevatedButton(onPressed: (){
                                _incrementheightinft();
                                ftController.text = _counterinft.toString();
                              },
                                  child: Icon(Icons.add, color: Colors.white,),
                                style: ElevatedButton.styleFrom(
                                  shape: CircleBorder(),
                                  padding: EdgeInsets.all(10),
                                  backgroundColor: const Color(0xFF8B8C9E),
                                )
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),

                  Container(
                    width: 170,
                    height: 200,
                    child: Card(
                      elevation: 10,
                      color: const Color(0xFF24263B),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('Height in in',style: TextStyle(fontSize: 25,color: Colors.white54),),


                          Text('$_counterininch',style: TextStyle(fontSize: 40, color: Colors.white, fontWeight: FontWeight.bold),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(onPressed: (){
                                _decrementheightininch();
                                inController.text = _counterininch.toString();
                              },
                                  child: Icon(Icons.remove, color: Colors.white),
                                  style: ElevatedButton.styleFrom(
                                    shape: CircleBorder(),
                                    padding: EdgeInsets.all(10),
                                    backgroundColor: const Color(0xFF8B8C9E),
                                    elevation: 10,

                                  )
                              ),

                              ElevatedButton(onPressed: (){
                                _incrementheightininch();
                                inController.text = _counterininch.toString();
                              },
                                  child: Icon(Icons.add, color: Colors.white,),
                                  style: ElevatedButton.styleFrom(
                                    shape: CircleBorder(),
                                    padding: EdgeInsets.all(10),
                                    backgroundColor: const Color(0xFF8B8C9E),
                                  )
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),

                ],
              ),

              ElevatedButton(onPressed: () {
                var wt = wtController.text.toString();
                var ft = ftController.text.toString();
                var inch = inController.text.toString();

                if(wt!="" && ft!="" && inch!=""){
                  var iWt = double.parse(wt);
                  var iFt = int.parse(ft);
                  var iInch = int.parse(inch);

                  var tInch = (iFt*12)+ iInch;
                  var tCm = tInch*2.54;
                  var tM = tCm/100;
                  var bmi = iWt/(tM*tM);
                  setState(() {
                    result = bmi.toStringAsFixed(4);
                    if(bmi<18.5){
                      restext = "Underweight";
                    }
                    else if(bmi>=18.5 && bmi<=24.9){
                      restext = "Normal";
                    }
                    else if(bmi>=25 && bmi<=29.9){
                      restext = "Overweight";
                    }
                    else if(bmi>=30){
                      restext = "Obese";
                    }
                    else{
                      restext = "Invalid";
                    }
                  });
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Result(res: result, restext: restext)));
                }else{
                  setState(() {
                    result = "Please fill all the required blanks";
                  });
                }



              },
                child: Text('Calculate', style: TextStyle(fontSize: 34,fontWeight: FontWeight.bold,color: Colors.white),),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFE83D67),
                  fixedSize: const Size(350, 80),
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}