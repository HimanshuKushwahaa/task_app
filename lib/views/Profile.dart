import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.share,size: 30,),),
          IconButton(onPressed: (){}, icon: Icon(Icons.person_add_alt_1,size: 30,),),
        ],
        title: Text(
          "Profile",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.blue,
      ),
      body: 
      SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 20),
              height: MediaQuery.of(context).size.height * .35,
              decoration: BoxDecoration(
                  color: Colors.cyan,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20))),
              child:
              Column(
                children: [
                  Stack(
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://scontent.fdel8-2.fna.fbcdn.net/v/t39.30808-1/426512804_1736817806809336_7554694662850040661_n.jpg?stp=c0.429.1152.1152a_dst-jpg_s200x200&_nc_cat=106&ccb=1-7&_nc_sid=50d2ac&_nc_ohc=lkbOpl-lVp4Q7kNvgHo0a7E&_nc_ht=scontent.fdel8-2.fna&_nc_gid=A34sVzKj-_NkZVQjoQu9An0&oh=00_AYDXhJVog4p39ovYikqstjvtUyC4rG67AqNJtVN_F1Z1TQ&oe=66F4B21E"),
                        radius: 45,
                      ),
                      Positioned(
                        bottom: 0.0,
                        right: 0.0,
                        child: Container(
                          decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.greenAccent),child: Icon(Icons.mode_edit_outline_outlined),
                        ),
                      ),
                    ],
                  ),
        
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Himanshu",
                    style: TextStyle(fontSize: 25),
                  ),
                  Divider(
                    thickness: 3,
                    indent: 20,
                    endIndent: 20,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Text(
                            "45",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w400),
                          ),
                          Text(
                            "Level",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "#74",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w400),
                          ),
                          Text(
                            "Rank",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),

            Container(

              height: MediaQuery.of(context).size.height * .06,
              decoration: BoxDecoration(

                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20))),
              child: Column(
                children: [
                  Text(
                    "Leaderboard",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                  ),
                  Divider(thickness: 1,)
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * .85,
              child: ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://scontent.fdel8-2.fna.fbcdn.net/v/t39.30808-1/426512804_1736817806809336_7554694662850040661_n.jpg?stp=c0.429.1152.1152a_dst-jpg_s200x200&_nc_cat=106&ccb=1-7&_nc_sid=50d2ac&_nc_ohc=lkbOpl-lVp4Q7kNvgHo0a7E&_nc_ht=scontent.fdel8-2.fna&_nc_gid=A34sVzKj-_NkZVQjoQu9An0&oh=00_AYDXhJVog4p39ovYikqstjvtUyC4rG67AqNJtVN_F1Z1TQ&oe=66F4B21E"),
                            radius: 20,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text("Himanshu"),
                        ],
                      ),
                      leading: Text("#${index + 1}"),
                      trailing: Text(
                          "₹${(200000 / (index + 1)).toString().substring(0, 5)}"),
                    );
                  },
                  separatorBuilder: (context, index) => Divider(thickness: 1.5),
                  itemCount: 120),
            )
          ],
        ),
      ),
    );
  }
}
