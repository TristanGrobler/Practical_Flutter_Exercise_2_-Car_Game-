import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //TODO 2) Create a variable. Name it carX. Make it equal to 200.05

  //TODO 3) Create a variable. Name it carY. Make it equal to 200.05

  //TODO 10) Create a variable. Name it carImage. Make it equal to 'images/drive_up.png'

  //TODO 12) Create a variable. Name it carImageSelector. Make it equal to 0.

  //TODO 13) Create a new method named setCarImage.
  //TODO 13a) The method must set the carImage variable based on carImageSelector.
  // If carImageSelector is 0 then carImage must equal 'images/drive_up.png'
  // If carImageSelector is 1 then carImage must equal 'images/drive_right.png'
  // If carImageSelector is 2 then carImage must equal 'images/drive_down.png'
  // If carImageSelector is 3 then carImage must equal 'images/drive_left.png'

  @override
  Widget build(BuildContext context) {
    //TODO 14) Call the setCarImage method.

    return Scaffold(
      //TODO 1) change the background color to black.
      backgroundColor: Colors.pink,
      body: Stack(
        children: [
          Positioned(
            bottom: 40,
            left: 120,
            child: TextButton(
              onPressed: () {
                //TODO 6) Move the car right by changing the correct variable.

                //TODO 15) Make carImageSelector equal to 1

                setState(() {});
              },
              child: const Icon(
                Icons.keyboard_arrow_right,
                size: 50,
              ),
            ),
          ),
          Positioned(
            bottom: 40,
            left: 40,
            child: TextButton(
              onPressed: () {
                //TODO 7) Move the car left by changing the correct variable.

                //TODO 16) Make carImageSelector equal to 3

                setState(() {});
              },
              child: const Icon(
                Icons.keyboard_arrow_left,
                size: 50,
              ),
            ),
          ),
          Positioned(
            bottom: 80,
            left: 80,
            child: TextButton(
              onPressed: () {
                //TODO 8) Move the car up by changing the correct variable.

                //TODO 17) Make carImageSelector equal to 0

                setState(() {});
              },
              child: const Icon(
                Icons.keyboard_arrow_up,
                size: 50,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 80,
            child: TextButton(
              onPressed: () {
                //TODO 9) Move the car down by changing the correct variable.

                //TODO 18) Make carImageSelector equal to 2

                setState(() {});
              },
              child: const Icon(
                Icons.keyboard_arrow_down,
                size: 50,
              ),
            ),
          ),
          Positioned(
            //TODO 4) Replace the number 220 below with the carY variable created.
            top: 220,
            //TODO 5) Replace the number 220 below with the carX variable created.
            left: 220,
            width: 200,
            height: 200,
            child: Image.asset(
              //TODO 11) Replace this string with the carImage variable.
              'images/drive_up.png',
            ),
          ),
        ],
      ),
    );
  }
}
