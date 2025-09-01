import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website/card.dart';

class SideBar extends StatelessWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppCard(
            child: Text(
                "A fun timeline of my computing journey with pictures! ",
                style: TextStyle(color: Colors.white))),
        AppCard(
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
                  Text(", AP CSP @ Lynbrook HS ",
                      style: TextStyle(color: Colors.white70))
                ],
              ),
              Text("Language: MIT App Inventor :) ",
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
      ],
    );
  }
}
