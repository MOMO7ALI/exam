import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FeatureCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
    
      child: Padding(
        padding: EdgeInsets.all(1.0),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Positive vibes',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Text(
                  'Boost your mood with',
                  style: GoogleFonts.inter(
                      fontSize: 16,
                      fontWeight: FontWeight.w400
                  ),
                ),
                Text(
                  ' positive vibes',
                  style: GoogleFonts.inter(
                      fontSize: 16,
                      fontWeight: FontWeight.w400
                  ),
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.play_circle_fill,color: Color(0xFF32D583),),
                      iconSize: 24,
                      onPressed: () {
                        // Add your play button action here
                      },
                    ),

                    Text(
                      '10 mins',
                     style: GoogleFonts.inter(
                       fontSize: 14,
                       fontWeight: FontWeight.w500
                     ),
                    ),

                  ],
                ),
              ],
            ),
            SizedBox(width: 70),

            Image(image: AssetImage('assets/images/Walking the Dog.png'),width: 102.11,height: 90.06,)


          ],
        ),
      ),
    );
  }
}