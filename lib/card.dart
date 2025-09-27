
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppCard extends StatelessWidget {
  const AppCard({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(12),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.5),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: child,
          ),
        ),
      ),
    );
  }
}

