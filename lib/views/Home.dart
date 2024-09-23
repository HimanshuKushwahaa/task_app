import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:task_app/services/localdb.dart';

import 'home_drawer.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  String name = "User Name";
  String money = "--";
  String lead = "---";
  String proUrl = "---";

  getUserDet() async{
    await LocalDB.getName().then((value){
      setState((){
        name = value.toString();
      });
    });


    await LocalDB.getMoney().then((value){
      setState((){
        money = value.toString();
      });
    });


    await LocalDB.getRank().then((value){
      setState((){
        lead = value.toString();
      });
    });

    await LocalDB.getUrl().then((value){
      setState((){
        proUrl = value.toString();
      });
    });
  }

  @override
  void initState() {
    super.initState();
    getUserDet();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("KBC - Quiz Game"),
        backgroundColor: Colors.cyan.shade500,
      ),
      drawer: Home_Drawer(name , money , lead , proUrl),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 15),
        child: Column(
          children: [
            CarouselSlider(
                items: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://scontent.fdel8-2.fna.fbcdn.net/v/t39.30808-1/426512804_1736817806809336_7554694662850040661_n.jpg?stp=c0.429.1152.1152a_dst-jpg_s200x200&_nc_cat=106&ccb=1-7&_nc_sid=50d2ac&_nc_ohc=lkbOpl-lVp4Q7kNvgFpRgUv&_nc_ht=scontent.fdel8-2.fna&_nc_gid=AgU11E0r6KfnudVr3aJZpPv&oh=00_AYAHXzZyt32fjcjG_H1H6vNRFZbr8E2WGxQ_U81YXJViKQ&oe=66F5229E"),
                            fit: BoxFit.cover)),
                  ),
                ],
                options: CarouselOptions(
                  height: 180,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  viewportFraction: 0.8,
                )),
            Container(
              padding: EdgeInsets.all(15),
              child: (Row(
                children: [
                  Flexible(
                    flex: 1,
                    fit: FlexFit.tight,
                    child: Stack(
                      children: [
                        Card(
                          elevation: 8,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Container(
                            height: 250,
                            child: Image.network(
                              "https://plus.unsplash.com/premium_photo-1723039370020-09c7fc009520?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHx0b3BpYy1mZWVkfDI4NHxDRHd1d1hKQWJFd3x8ZW58MHx8fHx8",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Flexible(
                    flex: 1,
                    fit: FlexFit.tight,
                    child: Stack(
                      children: [
                        Card(
                          elevation: 8,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Container(
                            height: 250,
                            child: Image.network(
                              "https://plus.unsplash.com/premium_photo-1723039370020-09c7fc009520?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHx0b3BpYy1mZWVkfDI4NHxDRHd1d1hKQWJFd3x8ZW58MHx8fHx8",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                            top: 5,
                            bottom: 5,
                            left: 5,
                            right: 5,
                            child: Container(
                              color: Colors.black12,
                            )),
                        Padding(
                          padding: const EdgeInsets.all(35),
                          child: Align(
                            alignment: Alignment.center,
                            child: Column(
                              children: [
                                Icon(
                                  Icons.lock,
                                  size: 20,
                                  color: Colors.white,
                                ),
                                Text(
                                  "Rs 51000",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Science Quiz",
                                  style: TextStyle(
                                      fontSize: 24,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              )),
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: (Row(
                children: [
                  Flexible(
                    flex: 1,
                    fit: FlexFit.tight,
                    child: Stack(
                      children: [
                        Card(
                          elevation: 8,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Container(
                            height: 250,
                            child: Image.network(
                              "https://plus.unsplash.com/premium_photo-1723039370020-09c7fc009520?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHx0b3BpYy1mZWVkfDI4NHxDRHd1d1hKQWJFd3x8ZW58MHx8fHx8",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Flexible(
                    flex: 1,
                    fit: FlexFit.tight,
                    child: Stack(
                      children: [
                        Card(
                          elevation: 8,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Container(
                            height: 250,
                            child: Image.network(
                              "https://plus.unsplash.com/premium_photo-1723039370020-09c7fc009520?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHx0b3BpYy1mZWVkfDI4NHxDRHd1d1hKQWJFd3x8ZW58MHx8fHx8",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                            top: 5,
                            bottom: 5,
                            left: 5,
                            right: 5,
                            child: Container(
                              color: Colors.black12,
                            )),
                        Padding(
                          padding: const EdgeInsets.all(35),
                          child: Align(
                            alignment: Alignment.center,
                            child: Column(
                              children: [
                                Icon(
                                  Icons.lock,
                                  size: 20,
                                  color: Colors.white,
                                ),
                                Text(
                                  "Rs 51000",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Science Quiz",
                                  style: TextStyle(
                                      fontSize: 24,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              )),
            ),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: Stack(
                children: [
                  Card(
                    elevation: 8,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      //height: MediaQuery.of(context).size.height,
                      child: Image.network(
                        "https://images.unsplash.com/photo-1719179512969-84e9863abbf2?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHx0b3BpYy1mZWVkfDE3MXxDRHd1d1hKQWJFd3x8ZW58MHx8fHx8",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                      child: Container(
                    color: Colors.black12,
                  )),
                  Padding(
                    padding: const EdgeInsets.all(35),
                    child: Align(
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          Icon(
                            Icons.lock,
                            size: 20,
                            color: Colors.white,
                          ),
                          Text(
                            "Rs 51000",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Science Quiz",
                            style: TextStyle(
                                fontSize: 24,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
