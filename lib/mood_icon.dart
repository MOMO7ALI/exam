import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MoodIcon extends StatelessWidget {
  final String imagePath;
  final String label;

  MoodIcon({required this.imagePath, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: Colors.grey.shade200,
          child: Image.asset(imagePath, height: 30, width: 30),
        ),
        SizedBox(height: 8),
        Text(
          label,
          style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w400),
        )
      ],
    );
  }
}