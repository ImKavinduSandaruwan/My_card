import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_card/pages/portfolio.dart';
import 'package:water_drop_nav_bar/water_drop_nav_bar.dart';

import '../components/skill_card.dart';
import '../constants.dart';
import 'contact.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainPageColor,
      appBar: AppBar(
        backgroundColor: mainPageColor,
        title: Center(
          child: Text(
            'About',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
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
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ContactScreen(),
                      ),
                    );
                  },
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
              ),
              SizedBox(height: 10,),

              // Summary section
              Text(
                "Summary",
                style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2
                ),
              ),
              SizedBox(height: 5,),
              Text(
                "I'm a software engineer who is passionate about building scalable and efficient systems. I  have experience in both frontend and backend  development.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
              SizedBox(height: 20,),

              //Skills section
              Text(
                "Skills",
                style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2
                ),
              ),
              SizedBox(height: 10,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SkillCard(skillName: 'Flutter',),
                    SkillCard(skillName: 'Kotlin',),
                    SkillCard(skillName: 'Java',),
                    SkillCard(skillName: 'Python',),
                    SkillCard(skillName: 'C++',),
                    SkillCard(skillName: 'C#',),
                    SkillCard(skillName: 'C',),
                    SkillCard(skillName: 'Machine Learning',),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SkillCard(skillName: 'HTML',),
                    SkillCard(skillName: 'CSS',),
                    SkillCard(skillName: 'Bootstrap',),
                    SkillCard(skillName: 'ReactJs',),
                    SkillCard(skillName: 'NodeJs',),
                    SkillCard(skillName: 'Doker',),
                    SkillCard(skillName: 'MongoDB',),
                    SkillCard(skillName: 'MySQL',),
                  ],
                ),
              ),
              SizedBox(height: 20,),

              // Experience section
              Text(
                "Experience",
                style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2
                ),
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        height: 70.0,
                        width: 70.0,
                        child: Card(
                          color: skillButtonColor,
                          child: Icon(
                            Icons.phone_android,
                            size: 30,
                          ),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Mobile Dev",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            "Andorid and Ios",
                            style: TextStyle(
                              color: subTextColor,
                              fontSize: 15,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  Text(
                    "2022 - Present",
                    style: TextStyle(
                      color: subTextColor,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        height: 70.0,
                        width: 70.0,
                        child: Card(
                          color: skillButtonColor,
                          child: Icon(
                            Icons.web,
                            size: 30,
                          ),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Web Dev",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            "Responsive",
                            style: TextStyle(
                              color: subTextColor,
                              fontSize: 15,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  Text(
                    "2021 - Present",
                    style: TextStyle(
                      color: subTextColor,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        height: 70.0,
                        width: 70.0,
                        child: Card(
                          color: skillButtonColor,
                          child: Icon(
                            Icons.code,
                            size: 30,
                          ),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Machine Learning",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            "Python",
                            style: TextStyle(
                              color: subTextColor,
                              fontSize: 15,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  Text(
                    "2022 - Present",
                    style: TextStyle(
                      color: subTextColor,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        height: 70.0,
                        width: 70.0,
                        child: Card(
                          color: skillButtonColor,
                          child: Icon(
                            Icons.data_object,
                            size: 30,
                          ),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Database",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            "MySql, MongoDB",
                            style: TextStyle(
                              color: subTextColor,
                              fontSize: 15,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  Text(
                    "2020 - Present",
                    style: TextStyle(
                      color: subTextColor,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: WaterDropNavBar(
        waterDropColor: Colors.white,
        backgroundColor: buttonColor,
        onItemSelected: (index) {
          setState(() {
            selectedIndex = index;
          });
          if (index == 1) { // Assuming the account_box icon is at index 1
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => PortfolioScreen(),
              ),
            );
          } else if (index == 2) { // Assuming the phone_android icon is at index 2
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => ContactScreen(),
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
    );
  }
}