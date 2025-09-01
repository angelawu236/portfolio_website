import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website/card.dart';

class Landing extends StatelessWidget {
  const Landing({super.key});

  @override

  Widget build(BuildContext context) {
    TextSpan span(String text, [Color? color]) =>
        TextSpan(text: text, style: color != null ? TextStyle(color: color) : null);


    return AppCard(
        child: Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blueAccent.withOpacity(0.5), // change border color here
                  width: 10,            // change thickness here
                ),
                borderRadius: BorderRadius.circular(6), // optional rounded corners
              ),
              child: ClipRRect(
                child: Image.asset(
                  "assets/profile2.jpg",
                  fit: BoxFit.cover,
                  width: 300,
                  height: 300,
                ),
              ),
            ),
            SizedBox(width: 20),
            Expanded(
              child: Container(
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(fontSize: 17, color: Colors.white, fontFamily: GoogleFonts.firaCode().fontFamily,),
                    children: [
                      span("Angela Wu is a "),
                      span("Mathematics & Computer Science", Colors.cyanAccent),
                      span(" Major at"),
                      span(" UC San Diego", Colors.greenAccent),
                      span(" (2027), minoring in"),
                      span(" Data Science.", Colors.cyanAccent),
                      span(" She is"),
                      span(" passionate", Colors.purpleAccent),
                      span(" about", Colors.lightBlueAccent),
                      span(" using", Colors.greenAccent),
                      span(" technology", Colors.yellowAccent),
                      span(" creat", Colors.orangeAccent),
                      span("ively", Colors.redAccent),
                      span(" and has dabbled in full-stack web and mobile applications, embededded software systems, and more. "),
                      span("Click & scroll around to learn more!")
                    ],
                  ),
                )


              ),
            ),
          ],
        ),
      ],
    ));
  }
}
