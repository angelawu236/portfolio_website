import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website/card.dart';
import 'package:portfolio_website/sections/projects/video.dart';
import 'package:url_launcher/url_launcher.dart';

import 'mediarie_video.dart';

class Mediarie extends StatelessWidget {
  const Mediarie({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Mediarie - Media Watchlist App",
                style: TextStyle(color: Colors.orangeAccent, fontSize: 18)),
            Text(
              "July 2025",
              style: TextStyle(color: Colors.white70, fontSize: 14),
            ),
          ],
        ),
        const Text(
            "Mobile app to track movies and TV shows, published on App Store. ",
            style: TextStyle(color: Colors.cyanAccent, fontSize: 14)),
        const Text(
          "Built With: Flutter(Dart), Firebase, AWS Lambda, API Gateway, TMDB API ",
          style: TextStyle(color: Colors.lightBlueAccent, fontSize: 14),
        ),
        const SizedBox(height: 10),
        PhoneShowcase(
          videoAsset: 'assets/mediarie.mp4',
          imageAssets: ['assets/home.png', 'assets/search.png', 'assets/details.png'],
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
                "I designed, developed, and published ",
              ),
              TextSpan(
                text: "Mediarie",
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
                    Uri.parse("https://apps.apple.com/us/app/mediarie/id6751476005");
                    if (await canLaunchUrl(uri)) {
                      await launchUrl(uri,
                          mode: LaunchMode.externalApplication);
                    }
                  },
              ),
              const TextSpan(
                text:
                " to the App Store to make managing and organizing watch lists of any kind of media easier, more personal and customizable. I integrated the TMDB API in the backend through an AWS Lambda function, and my app calls this function through API Gateway. I also integrated user authentication with Firebase Auth, and persistent data storage for each account with Firestore. One of my favorite parts was working with my backend database and seeing the dynamic results in the app's front end! You can find my code on ",
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
                        "https://github.com/angelawu236/Mediary");
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

      ]
      ),
    );
  }
}
