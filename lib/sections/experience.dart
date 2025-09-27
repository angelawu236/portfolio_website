import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website/card.dart';


class Experience extends StatelessWidget {
  const Experience({super.key});

  @override
  Widget build(BuildContext context) {
    return AppCard(
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          tilePadding: EdgeInsets.zero, // remove ListTile padding
          title: const Align(
            alignment: Alignment.centerLeft, // lock to left
            child: Text(
              'Work Experience',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          trailing: const Icon(Icons.expand_more, color: Colors.white, size: 20),
          children: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Experience stuff.', style: TextStyle(color: Colors.white70)),
            ),
          ],
        ),
      ),
    );

  }
}
