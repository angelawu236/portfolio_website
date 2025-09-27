import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website/card.dart';
import 'package:portfolio_website/sections/projects/flower.dart';
import 'package:portfolio_website/sections/projects/lakewood.dart';
import 'package:portfolio_website/sections/projects/mediarie.dart';

class Projects extends StatelessWidget {
  const Projects({super.key});

  @override
  Widget build(BuildContext context) {
    return AppCard(
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: const ExpansionTile(
          tilePadding: EdgeInsets.zero,
          title: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Projects',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          trailing: Icon(Icons.expand_more, color: Colors.white, size: 20),
          children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: const Flower(),
              ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: const Lakewood(),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: const Mediarie(),
            ),
          ],
        ),
      ),
    );
  }
}
