import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website/card.dart';
import 'package:portfolio_website/sections/projects/video.dart';
import 'package:portfolio_website/sections/projects/mediarie_video.dart';
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

        const SizedBox(
          height: 300,
          child: ProjectWidget(
              video1: 'assets/lakewood.mp4',
              video2: 'assets/lakewood_2.mp4'),
        ),
        const SizedBox(height: 10),
        RichText(
          text: TextSpan(
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: Colors.white70,
              fontSize: 14,
            ),
            children: [
              const TextSpan(
                text:
                "With a team of 5 developers, I helped build a full stack website for ",
              ),
              TextSpan(
                text: "Lakewood HVAC",
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Colors.lightBlueAccent,
                  fontSize: 14,
                  decoration: TextDecoration.underline,
                  decorationStyle: TextDecorationStyle.solid,
                  decorationThickness: 2,
                  decorationColor: Colors.lightBlueAccent,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () async {
                    final uri =
                    Uri.parse("https://lakewood-hvac.vercel.app");
                    if (await canLaunchUrl(uri)) {
                      await launchUrl(uri,
                          mode: LaunchMode.externalApplication);
                    }
                  },
              ),
              const TextSpan(
                text:
                ", a local heating and cooling business. Through pair programming, I implemented responsive designs using React and Tailwind CSS to ensure a seamless user experience across different device sizes. I also worked on back-end development, utilizing RESTful APIs and Prisma for database interactions. One key feature I worked on was the reviews and ratings system, where I worked on both the UI and the server logic to handle dynamic updates. The source code is available on ",
              ),
              TextSpan(
                text: "GitHub",
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Colors.lightBlueAccent,
                  fontSize: 14,
                  decoration: TextDecoration.underline,
                  decorationStyle: TextDecorationStyle.solid,
                  decorationThickness: 2,
                  decorationColor: Colors.lightBlueAccent,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () async {
                    final uri = Uri.parse(
                        "https://github.com/CSES-Dev/lakewood-hvac");
                    if (await canLaunchUrl(uri)) {
                      await launchUrl(uri,
                          mode: LaunchMode.externalApplication);
                    }
                  },
              ),
              const TextSpan(text: "."),
            ],
          ),
        ),
        const SizedBox(height: 5),
        const Text(
          "It was really fun collaborating on a real-world web dev project that will have a tangible impact on a local business!",
          style: TextStyle(color: Colors.white70, fontSize: 14),
        ),
      ],
      ),
    );
  }
}
