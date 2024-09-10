import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.shade600,
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Welcome To Task App",style: TextStyle(fontSize: 25,color: Colors.black87,fontWeight: FontWeight.bold),),
          SizedBox(height: 20),
          Image.asset('assets/img/kbc.webp'),
          SizedBox(height: 20),
        ElevatedButton(onPressed: (){}, child: Text("Countinue With Google"),
        ),
          SizedBox(height: 20),
          Text("By Countinuing. You are agree with our T&Cs ",style: TextStyle(fontSize: 12,color: Colors.black87,fontWeight: FontWeight.bold),),
        ],
      ),),
    );
  }
}
