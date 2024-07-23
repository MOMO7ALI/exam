import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExerciseCard extends StatelessWidget {
  final String title;

  ExerciseCard({required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.purple.shade100,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: Text(
          title,
          style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}