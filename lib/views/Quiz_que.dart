import 'package:flutter/material.dart';
import 'package:task_app/views/lifeline_sidebar.dart';


class Question extends StatefulWidget {
  const Question({super.key});

  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  @override
  Widget build(BuildContext context) {
    return
      Container(
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/img/bg_blr.jpg'),)),
        child: Scaffold(
          backgroundColor: Colors.transparent,

        appBar: AppBar(title: Text("Rs- 20000",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),centerTitle: true, backgroundColor: Colors.greenAccent,),
        drawer:lifeline_Drawer(),
          floatingActionButton: ElevatedButton(
            child: Text("Quit Game",style: TextStyle(fontSize: 20),),onPressed: (){},
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 150,
                width: 150,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    CircularProgressIndicator(strokeWidth: 15,color: Colors.blueAccent,backgroundColor: Colors.green
                      ,),
                    Center(child: Text("46",style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.bold),)),
                  ],
                ),
              ),

              SizedBox(height: 25,),

              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.symmetric(horizontal: 17,vertical: 5),
                decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20)),
                child: Text("Which country invented tea?",style: TextStyle(fontSize: 22),textAlign: TextAlign.center,),
              ),
              SizedBox(height: 15,),


              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.symmetric(horizontal: 30,vertical: 5),
                decoration: BoxDecoration(color: Colors.black87,borderRadius: BorderRadius.circular(30)),
                child: Text("A.   India",style: TextStyle(fontSize: 17,color: Colors.white),textAlign: TextAlign.center,),
              ),


              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.symmetric(horizontal: 30,vertical: 5),
                decoration: BoxDecoration(color: Colors.black87,borderRadius: BorderRadius.circular(30)),
                child: Text("B.   Japan",style: TextStyle(fontSize: 17,color: Colors.white),textAlign: TextAlign.center,),
              ),


              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.symmetric(horizontal: 30,vertical: 5),
                decoration: BoxDecoration(color: Colors.black87,borderRadius: BorderRadius.circular(30)),
                child: Text("C.   Russia",style: TextStyle(fontSize: 17,color: Colors.white),textAlign: TextAlign.center,),
              ),


              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.symmetric(horizontal: 30,vertical: 5),
                decoration: BoxDecoration(color: Colors.black87,borderRadius: BorderRadius.circular(30)),
                child: Text("D.   China",style: TextStyle(fontSize: 17,color: Colors.white),textAlign: TextAlign.center,),
              ),


            ],
          ),
            ),
      );
  }
}
