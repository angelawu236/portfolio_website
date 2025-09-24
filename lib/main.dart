import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website/sections/experience.dart';
import 'package:portfolio_website/sections/landing.dart';
import 'package:animated_background/animated_background.dart';
import 'package:portfolio_website/sections/projects.dart';
import 'package:portfolio_website/sections/side_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: GoogleFonts.firaCode().fontFamily, ),
      home: Scaffold(
          body: Stack(
            children: [
              // Fullscreen background
              Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/bg.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [

                  Expanded(
                    flex: 7,

                    child: Column(
                      children: [
                        Landing(),
                        Projects(),
                        Experience(),
                      ],
                    ),
                  ),
                  // Right sidebar
                  Expanded(
                    flex: 3,
                    child: SideBar(),
                  ),
                ],
              ),

            ],
          )


      )
    );
  }
}
