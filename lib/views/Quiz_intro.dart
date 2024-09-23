import 'package:flutter/material.dart';

class QuizIntro extends StatelessWidget {
  const QuizIntro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: ElevatedButton(
        child: Text(
          "Start Quiz",
          style: TextStyle(fontSize: 20),
        ),
        onPressed: () {},
      ),
      appBar: AppBar(
        title: Text("Quiz App"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(bottom: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "QuizName",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Image.network(
                "https://scontent.fdel8-1.fna.fbcdn.net/v/t39.30808-6/416247985_1713379455819838_8025424733137362362_n.jpg?stp=c0.185.720.720a_dst-jpg_s206x206&_nc_cat=107&ccb=1-7&_nc_sid=50ad20&_nc_ohc=il8vJwtyBpMQ7kNvgE9j-SQ&_nc_ht=scontent.fdel8-1.fna&_nc_gid=AN60emcwVoXSs3z9S-Ydl_-&oh=00_AYApOgctMQDAcDbXqGhFQDNLArPGH9VGSFutlWhQFJEvXA&oe=66F1AC1C",
                fit: BoxFit.cover,
                height: 250,
                width: MediaQuery.of(context).size.width,
              ),
              Container(
                padding: EdgeInsets.all(18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.topic_outlined),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Related to - ",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Text(
                      "Science , Space , Math , Rocket ",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.timer),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Duration - ",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Text(
                      "10 Minutes",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.topic_outlined),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "About Quiz - ",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Text(
                      "No evidence of quizzing has been found in records from the ancient and medieval periods. If ancient Romans or Aboriginal peoples quizzed, they did not leave anything that shows it. The earliest known appearance of the word quiz in print, according to the Oxford English Dictionary (OED), is surprisingly recent—1782—and the word then referred to an odd-looking person.",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
