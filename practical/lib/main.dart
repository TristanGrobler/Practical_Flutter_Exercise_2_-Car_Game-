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
  double carX = 200.5;
  double carY = 200.5;
  String carImage = 'images/drive_up.png';
  int carImageSelector = 0;

  //TODO 18) Inside the setCarImage method, add and if statement to check if carImageSelector is equal to 4, and if it is, set carImage to 'images/crash.png'.
  void setCarImage() {
    if (carImageSelector == 0) {
      carImage = 'images/drive_up.png';
    }
    if (carImageSelector == 1) {
      carImage = 'images/drive_right.png';
    }
    if (carImageSelector == 2) {
      carImage = 'images/drive_down.png';
    }

    if (carImageSelector == 3) {
      carImage = 'images/drive_left.png';
    }
  }

  //TODO 3) Create a new method called checkCrash.

  //TODO 4) The method checkCrash must return a boolean value amd take width and height as an argument
  //TODO 5) Inside the checkCrash method, create an else if statement that checks if the car has crashed into the barrier.
  //If carX is more than the variable width - 200, return true.
  //If carX is less than 1, return true.
  //If carY is less than 1, return true.
  //If carY is more than the variable height - 200, return true.
  //If none of these conditions are met return false;

  @override
  Widget build(BuildContext context) {
    //TODO 1) Create a new variable named width and set it to the width of the screen
    //TODO 2) Create a new variable named height and set it to the height of the screen

    setCarImage();

    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned(
            bottom: 40,
            left: 120,
            child: TextButton(
              onPressed: () {
                //TODO 6) Create a variable called hasCrashed and make it equal to false.

                //TODO 7) Check to see if the car has crashed using the checkCrash method created.

                //TODO 8) Use a ternary operator to move the car only if it has not crashed.
                carX = carX + 10;

                //TODO 19) Use a ternary operator to setImageSelector to 4 if hasCrashed is true, otherwise set it to 1.
                carImageSelector = 1;
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
                //TODO 9) Create a variable called hasCrashed and make it equal to false.

                //TODO 10) Check to see if the car has crashed using the checkCrash method created.

                //TODO 11) Use a ternary operator to move the car only if it has not crashed.
                carX = carX - 10;

                //TODO 20) Use a ternary operator to setImageSelector to 4 if hasCrashed is true, otherwise set it to 4.
                carImageSelector = 3;
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
                //TODO 12) Create a variable called hasCrashed and make it equal to false.

                //TODO 13) Check to see if the car has crashed using the checkCrash method created.

                //TODO 14) Use a ternary operator to move the car only if it has not crashed.
                carY = carY - 10;

                //TODO 21) Use a ternary operator to setImageSelector to 4 if hasCrashed is true, otherwise set it to 0.
                carImageSelector = 0;
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
                //TODO 15) Create a variable called hasCrashed and make it equal to false.

                //TODO 16) Check to see if the car has crashed using the checkCrash method created.

                //TODO 17) Use a ternary operator to move the car only if it has not crashed.
                carY = carY + 10;

                //TODO 22) Use a ternary operator to setImageSelector to 4 if hasCrashed is true, otherwise set it to 2.
                carImageSelector = 2;
                setState(() {});
              },
              child: const Icon(
                Icons.keyboard_arrow_down,
                size: 50,
              ),
            ),
          ),
          Positioned(
            top: carY,
            left: carX,
            width: 200,
            height: 200,
            child: Image.asset(
              carImage,
            ),
          ),
        ],
      ),
    );
  }
}
