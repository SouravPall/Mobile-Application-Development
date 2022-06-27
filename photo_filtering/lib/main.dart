import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const   MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
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
  double redValue = 120;
  double greenValue = 120;
  double blueValue = 120;
  double alphaValue = 120;
  double positionValue = -300;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Column(
          children:  [
            Stack(children: [
              Container(
                height: MediaQuery.of(context).size.height,
                child: Image.asset('images/image1.jpg',
                  color: Color.fromARGB(alphaValue.round(), redValue.round(), greenValue.round(), blueValue.round()),
                  fit: BoxFit.fitHeight,
                  colorBlendMode: BlendMode.hardLight,
                ),
              ),
              AnimatedPositioned(
                  bottom: positionValue,
                  duration: Duration(seconds: 1),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    color: Colors.black12.withOpacity(0.5),
                    height: MediaQuery.of(context).size.height * .5,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child:   Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment:  MainAxisAlignment.spaceBetween,
                            children: [
                              const Text('Filtering',
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),

                              InkWell(
                                onTap: (){
                                  setState((){
                                    if(positionValue == -300){
                                      positionValue = 0;
                                    }
                                    else{
                                      positionValue = -300;
                                    }
                                  });
                                },
                                child: const Icon(Icons.keyboard_arrow_up,
                                  size: 30,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),

                          const SizedBox(height: 100,),
                          const Text('Red',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),),
                          Slider(
                              activeColor: Colors.white,
                              inactiveColor: Colors.blue.withOpacity(.5),
                              value: redValue ,
                              min: 0,
                              max: 255,
                              divisions: 255,
                              onChanged: (value){
                                setState((){
                                  redValue = value;
                                });
                              }),
                          const Text('Blue',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),),
                          Slider(
                              activeColor: Colors.white,
                              inactiveColor: Colors.blue.withOpacity(.5),
                              value: blueValue ,
                              min: 0,
                              max: 255,
                              divisions: 255,
                              onChanged: (value){
                                setState((){
                                  blueValue = value;
                                });
                              }),
                          const Text('Green',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),),
                          Slider(
                              activeColor: Colors.white,
                              inactiveColor: Colors.blue.withOpacity(.5),
                              value: greenValue ,
                              min: 0,
                              max: 255,
                              divisions: 255,
                              onChanged: (value){
                                setState((){
                                  greenValue = value;
                                });
                              }),
                          Text('Alpha',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),),
                          Slider(
                              activeColor: Colors.white,
                              inactiveColor: Colors.blue.withOpacity(.5),
                              value: alphaValue ,
                              min: 0,
                              max: 255,
                              divisions: 255,
                              onChanged: (value){
                                setState((){
                                  alphaValue = value;
                                });
                              }),
                        ],
                      ),
                    ),

                  )),

            ],)
          ],
        ),
      ),

    );
  }
}
