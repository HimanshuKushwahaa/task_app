import 'package:flutter/material.dart';

class Looser extends StatelessWidget {
  const Looser({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
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
              Icon(Icons.refresh, size: 18), // Adjust icon size if needed
              SizedBox(width: 5), // Space between icon and text
              Text(
                "Retry",
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
                    Text("Oh Sorry!",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w900,color: Colors.red.shade900),),
                    SizedBox(height: 10,),
                    Text("Your answer is incorrect 😊",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400,color: Colors.red.shade900),),
                    SizedBox(height: 10,),
                    Icon(Icons.error_outline,size: 85,color: Colors.red.shade900,),
                    SizedBox(height: 10,),
                    Text("You Won"),
                    Text("Rs. 250000/-",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                    SizedBox(height: 40,),
                    // Container(
                    //     padding: EdgeInsets.all(20),
                    //     width: MediaQuery.of(context).size.width,
                    //     child: Image.asset('assets/img/cheque.jpeg',fit: BoxFit.cover,)),
                    //

                    ElevatedButton(onPressed: (){}, child: Text("Go to rewards")),

                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
