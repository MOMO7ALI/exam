import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExerciseCard extends StatelessWidget {
  final String title;
  final String imagePath;

  ExerciseCard({required this.title, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 5,
      padding: EdgeInsets.all(5),
      margin: EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color: Color(0xFFF9F5FF),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Image.asset(
            imagePath,
            height: 24,
            width:24,
            fit: BoxFit.cover,
          ),
          SizedBox(width: 16),
          Text(
            title,
            style: GoogleFonts.inter(fontSize: 14, fontWeight: FontWeight.w500),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
