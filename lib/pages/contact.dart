import 'package:flutter/material.dart';
import 'package:my_card/pages/portfolio.dart';
import 'package:water_drop_nav_bar/water_drop_nav_bar.dart';

import '../constants.dart';
import 'about.dart';

class ContactScreen extends StatefulWidget {

  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  int selectedIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainPageColor,
      bottomNavigationBar: WaterDropNavBar(
        waterDropColor: Colors.white,
        backgroundColor: buttonColor,
        onItemSelected: (index) {
          setState(() {
            selectedIndex = index;
          });
          if (index == 0) { // Assuming the account_box icon is at index 1
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => AboutPage(),
              ),
            );
          } else if (index == 1) { // Assuming the phone_android icon is at index 2
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => PortfolioScreen(),
              ),
            );
          }
        },
        selectedIndex: selectedIndex,
        barItems: [
          BarItem(
            filledIcon: Icons.home,
            outlinedIcon: Icons.home_outlined,
          ),
          BarItem(
              filledIcon: Icons.account_box,
              outlinedIcon: Icons.account_box_outlined
          ),
          BarItem(
            filledIcon: Icons.phone_android,
            outlinedIcon: Icons.phone_android_outlined,
          ),
        ],
      ),
      appBar: AppBar(
        backgroundColor: mainPageColor,
        title: Center(
          child: Text(
            'Contact',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 10, right: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Top section
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('assets/01.jpg'),
              ),
              SizedBox(height: 5),
              Text(
                "Kavindu Sandaruwan",
                style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2
                ),
              ),
              Text(
                "Software Engineer",
                style: TextStyle(
                  color: subTextColor,
                  fontSize: 20,
                ),
              ),
              Text(
                "Sri Lanka, Colombo",
                style: TextStyle(
                  color: subTextColor,
                  fontSize: 20,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Card(
                  color: buttonColor,
                  child: ListTile(
                    title: Center(
                      child: Text(
                        "Contact",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),

              //Contact section
              Text(
                "Name",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Enter your name",
                  hintStyle: TextStyle(
                    color: subTextColor,
                  ),
                ),
              ),
              SizedBox(height: 20,),

              Text(
                "Email",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Enter your email",
                  hintStyle: TextStyle(
                    color: subTextColor,
                  ),
                ),
              ),
              SizedBox(height: 20,),

              Text(
                "Your message",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Enter your message",
                  hintStyle: TextStyle(
                    color: subTextColor,
                  ),
                ),
              ),
              SizedBox(height: 20,),

              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: buttonColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Icon(
                        Icons.send,
                        color: Colors.white,
                        size: 25,
                      ),
                    ),
                    Text(
                      "Send",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),

              //connect with me section
              Text(
                "Connect with me",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "LinkedIn",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  Text(
                    "Connect",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Twitter",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  Text(
                    "Follow",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "GitHub",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  Text(
                    "View",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Resume",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  Text(
                    "Download",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20),
                  ),
                ],
              ),
              SizedBox(height: 30,),

            ],
          ),
        ),
      ),
    );
  }
}
