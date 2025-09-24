import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../card.dart';

class ArtPortfolio extends StatelessWidget {
  const ArtPortfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          AppCard(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Digital Art Portfolio",
                    style: TextStyle(color: Colors.lightBlueAccent)),
                Row(
                  children: [
                    Text("When: ", style: TextStyle(color: Colors.white70)),
                    Text("Dec 2023",
                        style: TextStyle(color: Colors.orangeAccent)),
                  ],
                ),
                Text("Built with: Unity, Adobe Illustrator ",
                    style: TextStyle(color: Colors.white70)),
              ],
            )
          )
        ],
    );
  }
}
