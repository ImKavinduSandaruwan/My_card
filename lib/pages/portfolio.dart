import 'package:flutter/material.dart';
import 'package:my_card/components/skill_card.dart';
import 'package:my_card/pages/about.dart';
import 'package:water_drop_nav_bar/water_drop_nav_bar.dart';

import '../constants.dart';
import 'contact.dart';

class PortfolioScreen extends StatefulWidget {
  const PortfolioScreen({super.key});

  @override
  State<PortfolioScreen> createState() => _PortfolioScreenState();
}

class _PortfolioScreenState extends State<PortfolioScreen> {
  int selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      backgroundColor: mainPageColor,
      appBar: AppBar(
        backgroundColor: mainPageColor,
        title: Center(
          child: Text(
            'Portfolio',
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
              //Top Section
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

              //Projects section
              Text(
                "Projects",
                style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2
                ),
              ),
              SizedBox(height: 20,),

              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 3,
                      child: Image(
                        image: AssetImage('assets/software-engineers-vector.webp'),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:  [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Project 1",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Blind Care",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                              ),
                            )
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: viewButtonColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text("View Details",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 20,),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: const [
                          SkillCard(skillName: "Flutter",),
                          SkillCard(skillName: "Dart",),
                          SkillCard(skillName: "Firebase",),
                          SkillCard(skillName: "Python",),
                          SkillCard(skillName: "Machine Learning",),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: const [
                          SkillCard(skillName: "FireStore",),
                          SkillCard(skillName: "GCP",),
                          SkillCard(skillName: "Docker",),
                          SkillCard(skillName: "Git",),
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                  ],
                ),
              ),
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 3,
                      child: Image(
                        image: AssetImage('assets/vecteezy_programmer-developer-engineer-with-laptop-sitting-at-the_8826724.jpg'),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:  [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Project 2",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Kick Off",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            )
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: viewButtonColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text("View Details",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 20,),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: const [
                          SkillCard(skillName: "HTML",),
                          SkillCard(skillName: "CSS",),
                          SkillCard(skillName: "Github actions",),
                          SkillCard(skillName: "Git",),
                          SkillCard(skillName: "JavaScript",),
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
