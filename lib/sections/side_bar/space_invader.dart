import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../card.dart';

class SpaceInvader extends StatelessWidget {
  const SpaceInvader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:[
        const AppCard(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Alien Invaders",
                  style: TextStyle(color: Colors.lightBlueAccent)),
              Row(
                children: [
                  Text("When: ", style: TextStyle(color: Colors.white70)),
                  Text("Nov 2021",
                      style: TextStyle(color: Colors.orangeAccent)),
                  Text(", AP CSP Lynbrook HS ",
                      style: TextStyle(color: Colors.white70))
                ],
              ),
              Text("Language: MIT App Inventor ",
                  style: TextStyle(color: Colors.white70)),
              Text("Credit: My groupmates! ",
                  style: TextStyle(color: Colors.white70))
            ],
          ),
        ),
        AppCard(
          child: ClipRRect(
            child: Image.asset(
              "assets/alien_invaders.png",
              fit: BoxFit.cover,
              width: 300,
              height: 200,
            ),
          ),
        )
      ]
    );
  }
}
