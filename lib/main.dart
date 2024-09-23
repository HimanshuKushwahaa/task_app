import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:task_app/services/localdb.dart';
import 'package:task_app/views/Home.dart';
import 'package:task_app/views/Profile.dart';
import 'package:task_app/views/Quiz_intro.dart';
import 'package:task_app/views/Quiz_que.dart';
import 'package:task_app/views/Winner.dart';
import 'package:task_app/views/loser.dart';

import 'Screen/Login.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isLogIn = false;

  getLoggedInState() async{
    await LocalDB.getUserID().then((value){
      setState((){
        isLogIn = value.toString() != "null" ;
      });
    });
  }


  @override
  void initState() {
    super.initState();
    getLoggedInState();
  }

  @override
  Widget build(BuildContext context) {
    return OverlaySupport.global(
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'task App',
          theme: ThemeData(
            primarySwatch: Colors.purple,

          ),
          home: isLogIn ? Home(): Login(),
          //home: Home(),
        )
    );
  }
}

