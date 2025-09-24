import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website/card.dart';
import 'package:portfolio_website/sections/side_bar/art_portfolio.dart';
import 'package:portfolio_website/sections/side_bar/space_invader.dart';

class SideBar extends StatelessWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppCard(
            child: Text(
                "A fun timeline of my creative & computing journey with pictures! ",
                style: TextStyle(color: Colors.white))),
        SpaceInvader(),
        ArtPortfolio(),

      ],
    );
  }
}
