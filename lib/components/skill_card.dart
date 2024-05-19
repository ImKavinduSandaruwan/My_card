import 'package:flutter/material.dart';
import '../constants.dart';

class SkillCard extends StatelessWidget {
  final String skillName;

  const SkillCard({
    super.key,
    required this.skillName,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: buttonColor,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          skillName,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}

