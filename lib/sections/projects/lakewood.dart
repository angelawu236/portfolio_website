import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website/card.dart';
import 'package:portfolio_website/sections/projects/video.dart';
import 'package:url_launcher/url_launcher.dart';

class Lakewood extends StatelessWidget {
  const Lakewood({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Enterprise Website for Lakewood HVAC",
                style: TextStyle(color: Colors.orangeAccent, fontSize: 18)),
            Text(
              "Nov 2024 - June 2025",
              style: TextStyle(color: Colors.white70, fontSize: 14),
            ),
          ],
        ),
        const Text(
            "Full Stack Website for a local HVAC business. ",
            style: TextStyle(color: Colors.cyanAccent, fontSize: 14)),
        const Text(
          "Built With: TypeScript, Tailwind CSS, React, Node.js, Prisma-managed SQL database, Figma ",
          style: TextStyle(color: Colors.lightBlueAccent, fontSize: 14),
        ),
        const SizedBox(height: 10),
      ]
      ),
    );
  }
}
