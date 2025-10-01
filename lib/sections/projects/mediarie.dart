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
          "Built With: Flutter(Dart), Firebase, AWS Lambda, AWS Gateway, TMDB API ",
          style: TextStyle(color: Colors.lightBlueAccent, fontSize: 14),
        ),
        const SizedBox(height: 10),
        MediarieVid(
          videoAsset: 'assets/mediarie.mp4',
          imageAssets: ['assets/profile2.jpg'],
        ),
      ]
      ),
    );
  }
}
