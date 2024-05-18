import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              CircleAvatar(
                backgroundImage: AssetImage('assets/01.jpg'),
                radius: 80.0,
              ),
              Text(
                "Kavindu Sandaruwan",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontFamily: 'Pacifico',
                ),
              ),
              Text("Software Engineer",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontFamily: 'SourceSansPro',
                  letterSpacing: 3.5,
                ),
              ),
              Divider(
                color: Colors.white,
                thickness: 1.0,
                endIndent: 100,
                indent: 100,
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.phone,
                        color: Colors.teal
                      ),
                      SizedBox(width: 10),
                      Text("+94 76 9794 629",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        )
                      )
                    ]
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Row(
                      children: [
                        Icon(
                            Icons.email,
                            color: Colors.teal
                        ),
                        SizedBox(width: 10),
                        Text("kavinduy6p@gmail.com",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            )
                        )
                      ]
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


