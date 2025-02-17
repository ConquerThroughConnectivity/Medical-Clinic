import 'package:flutter/material.dart';

class ResponsiveCircleAvatar extends StatelessWidget {
  final String imageUrl;
  final double radius;

  const ResponsiveCircleAvatar({
    super.key,
    required this.imageUrl,
    required this.radius,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double screenWidth = constraints.maxWidth;

        // Adjust radius based on screen width for responsiveness
        double adjustedRadius = radius;
        if (screenWidth < 600) {
          // Adjust breakpoint as needed
          adjustedRadius *= 0.8; // Reduce radius on smaller screens
        }

        return CircleAvatar(
          radius: adjustedRadius,
          backgroundImage: NetworkImage(imageUrl),
        );
      },
    );
  }
}
