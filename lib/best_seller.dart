import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BestSellerItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        children: [
          Image(
            image: AssetImage("assets/images/Image Placeholder 3.png"),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 80, left: 50),
            child: Column(
              children: [
                Text(
                  'Light Mage',
                  style: GoogleFonts.poppins(
                      fontSize: 16, fontWeight: FontWeight.w500),
                ),
                Text(
                  'Laurie Forest',
                  style: GoogleFonts.poppins(
                      fontSize: 12, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}