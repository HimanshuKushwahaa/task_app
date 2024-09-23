import 'dart:math';

import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';

class Win extends StatefulWidget {
  const Win({super.key});

  @override
  State<Win> createState() => _WinState();
}

class _WinState extends State<Win> {
  late ConfettiController confettiController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      initControlar();
    });
    confettiController.play();
  }

  void initControlar(){
    confettiController = ConfettiController(duration: const Duration(seconds: 1));
  }

  @override
  Widget build(BuildContext context) {
    return
      Container(
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/img/congratulati.jpg'),fit: BoxFit.cover)),
        child: Scaffold(
          floatingActionButton: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8), // Adjusts button padding
              minimumSize: Size(10, 30), // Adjusts the minimum button size
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min, // Ensures the Row takes minimal space
              children: [
                Icon(Icons.share, size: 18), // Adjust icon size if needed
                SizedBox(width: 5), // Space between icon and text
                Text(
                  "Share With Friends",
                  style: TextStyle(fontSize: 12), // Adjust text size
                ),
              ],
            ),
          ),

          backgroundColor: Colors.transparent,
        body:
        Stack(
          children: [
            Center(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    Text("Congratulations!",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w900,color: Colors.green.shade900),),
                    Text("Your answer is correct",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),),
                    SizedBox(height: 30,),
                    Text("You Won"),
                    Text("Rs. 250000/-",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                    Container(
                        padding: EdgeInsets.all(20),
                        width: MediaQuery.of(context).size.width,

                        child: Image.asset('assets/img/cheque.jpeg',fit: BoxFit.cover,)),
                    ElevatedButton(onPressed: (){}, child: Text("Next")),

                  ],
                ),
              ),
            ),
            buildConfettiWidget(confettiController, pi/2),
          ],
        ),
            ),
      );
  }
  Align buildConfettiWidget(controller, double blastDirection){
    return Align(alignment: Alignment.topCenter,
    child: ConfettiWidget(
      maximumSize: Size(30,30),
      shouldLoop: false,
      confettiController: controller,
      blastDirection: blastDirection,
      blastDirectionality: BlastDirectionality.explosive,
      maxBlastForce: 20,
      minBlastForce: 8,
      emissionFrequency: 0.2,
      numberOfParticles: 8,
      gravity: 0.6,

    ),
    );
  }
}
