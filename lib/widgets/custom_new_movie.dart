import 'package:flutter/material.dart';

class new_movie extends StatelessWidget {
  String image;
  new_movie({required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),

    );

  }
}
