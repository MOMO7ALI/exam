import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'exercise_card.dart';
import 'mood_icon.dart';

class MoodyApp extends StatefulWidget {
  const MoodyApp({super.key});

  static const String routeName = 'moodyApp';

  @override
  State<MoodyApp> createState() => _MoodyAppState();
}

class _MoodyAppState extends State<MoodyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset(
              "assets/images/logo.png",
              height: 40,
            ),
            SizedBox(width: 8),
            Text('Moody', style: GoogleFonts.poppins(fontSize: 24, fontWeight: FontWeight.w500)),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Icon(
              Icons.notification_add_outlined,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hello, Sara Rose',
              style: GoogleFonts.poppins(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'How are you feeling today?',
              style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w400),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MoodIcon(imagePath: 'assets/images/love.png', label: 'Love'),
                MoodIcon(imagePath: 'assets/images/cool.png', label: 'Cool'),
                MoodIcon(imagePath: 'assets/images/happy.png', label: 'Happy'),
                MoodIcon(imagePath: 'assets/images/sad.png', label: 'Sad'),
              ],
            ),
            SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Feature',
                  style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                Text(
                  'See more',
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF4838D1),
                  ),
                )
              ],
            ),
            SizedBox(height: 16),
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.greenAccent.shade100,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  Icon(Icons.play_circle_fill, size: 40, color: Colors.green),
                  SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Positive vibes',
                        style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Boost your mood with positive vibes',
                        style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                      SizedBox(height: 8),
                      Text(
                        '10 mins',
                        style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Exercise',
                  style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                Text(
                  'See more',
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF4838D1),
                  ),
                )
              ],
            ),
            SizedBox(height: 16),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                children: [
                  ExerciseCard(title: 'Relaxation'),
                  ExerciseCard(title: 'Meditation'),
                  ExerciseCard(title: 'Breathing'),
                  ExerciseCard(title: 'Yoga'),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        onTap: (value) {
          setState(() {});
        },
        selectedItemColor: Color(0xFF4838D1),
        unselectedItemColor: Color(0xFF6A6A8B),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: "Schedule",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}




