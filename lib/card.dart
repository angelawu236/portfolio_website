import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';


class AppCard extends StatelessWidget {
  const AppCard({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final cap = MediaQuery.of(context).size.height * 0.6;

    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(12),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.5),
          ),
          child: ConstrainedBox(
            constraints: BoxConstraints(maxHeight: cap),
            child: SingleChildScrollView(
              primary: false,
              padding: const EdgeInsets.all(15),
              child: child,
            ),
          ),
        ),
      ),
    );
  }
}

