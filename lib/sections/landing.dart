import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website/card.dart';

class Landing extends StatelessWidget {
  const Landing({super.key});

  @override
  Widget build(BuildContext context) {
    TextSpan span(String text, [Color? color]) => TextSpan(
        text: text, style: color != null ? TextStyle(color: color) : null);

    return AppCard(
        child: ConstrainedBox(
          constraints: const BoxConstraints(minHeight: 300, maxHeight: 300),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.blueAccent
                        .withOpacity(0.5),
                    width: 10,
                  ),
                  borderRadius:
                      BorderRadius.circular(6),
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        child: RichText(
                      text: TextSpan(
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                          fontFamily: GoogleFonts.firaCode().fontFamily,
                        ),
                        children: [
                          span("Angela Wu is a "),
                          span("Mathematics & Computer Science", Colors.cyanAccent),
                          span(" Major at"),
                          span(" University of California, San Diego",
                              Colors.greenAccent),
                          span(" (2027), minoring in"),
                          span(" Data Science.", Colors.cyanAccent),
                          span(" She is"),
                          span(" passionate", Colors.purpleAccent),
                          span(" about", Colors.lightBlueAccent),
                          span(" using", Colors.greenAccent),
                          span(" technology", Colors.yellowAccent),
                          span(" creat", Colors.orangeAccent),
                          span("ively", Colors.redAccent),
                          span(
                              " and has dabbled in full-stack web and mobile applications, embedded software systems, and more. "),
                          span("Click & scroll around to learn more!")
                        ],
                      ),
                    )),
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.lightBlueAccent,
                            borderRadius:
                            BorderRadius.circular(6), // optional rounded corners
                          ),
                          height: 50,
                          width: 200,
                          child: Center(
                            child: Text(
                                "- LinkedIn -",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),

                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.lightBlueAccent.withOpacity(0.8),
                            borderRadius:
                            BorderRadius.circular(6), // optional rounded corners
                          ),
                          height: 50,
                          width: 200,
                          child: Center(
                            child: Text(
                              "- Github -",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),

                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.lightBlueAccent.withOpacity(0.5),
                            borderRadius:
                            BorderRadius.circular(6), // optional rounded corners
                          ),
                          height: 50,
                          width: 200,
                          child: Center(
                            child: Text(
                              "- Contact Me -",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 30),
                  ],
                ),

              ),


            ],
          ),
        ));
  }
}
