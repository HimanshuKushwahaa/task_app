import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class lifeline_Drawer extends StatefulWidget {
  const lifeline_Drawer({super.key});

  @override
  State<lifeline_Drawer> createState() => _lifeline_DrawerState();
}

class _lifeline_DrawerState extends State<lifeline_Drawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.lightGreenAccent,
      child: SafeArea(
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.symmetric(vertical: 12),
                child: Text("Life Line",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      child: Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.purple),
                        child: Icon(
                          Icons.people,
                          size: 25,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Audience \n Poll",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 11),
                    )
                  ],
                ),
                Column(
                  children: [
                    Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      child: Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.purple),
                        child: Icon(
                          Icons.compare_arrows_outlined,
                          size: 25,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Joker \n Question",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 11),
                    )
                  ],
                ),
                Column(
                  children: [
                    Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      child: Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.purple),
                        child: Icon(
                          Icons.two_k_plus,
                          size: 25,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Double \n Dip",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 11),
                    )
                  ],
                ),
                Column(
                  children: [
                    Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      child: Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.purple),
                        child: Icon(
                          Icons.computer_outlined,
                          size: 25,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Ask the \n Expert",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 11),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(height: 5,),
            Divider(color: Colors.black45,thickness: 1,),

        Text("Prizes😁",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

            SizedBox(
                height: MediaQuery.of(context).size.height * 0.7,
                child:
                ListView.builder(

                    itemCount:50, itemBuilder: (context,index){
                  return
                    Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.all(3),
                        margin: EdgeInsets.symmetric(horizontal: 3, vertical:1),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.black38),

                        child: ListTile(leading: Text("${index +1}.",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.grey)),title: Text("Rs.${(5000)*(index+1)}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),trailing: Icon (Icons.circle),));

                }),
              ),
          ],
        ),
      ),
    );
  }
}
