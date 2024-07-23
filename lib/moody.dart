import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


import 'exercise_card.dart';
import 'feature_Card.dart';
import 'mood_icon.dart';

class MoodyApp extends StatefulWidget {
  const MoodyApp({super.key});

  static const String routeName = 'moodyApp';

  @override
  State<MoodyApp> createState() => _MoodyAppState();
}

class _MoodyAppState extends State<MoodyApp> {
  int activeIndex=0;
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
              style: GoogleFonts.inter(fontSize: 20, fontWeight: FontWeight.w400),
            ),
            SizedBox(height: 8),
            Text(
              'How are you feeling today?',
              style: GoogleFonts.inter(fontSize: 16, fontWeight: FontWeight.w400),
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
                    color: Color(0xFF027A48),
                  ),
                )
              ],
            ),
            SizedBox(height: 50),
            Container(
                decoration: BoxDecoration(color: Color(0xFFECFDF3)),
                height: 200,
                child: CarouselSlider(
                  options: CarouselOptions(
                    onPageChanged: (index,reason){
                      setState(() {
                        activeIndex=index;
                      });
                    },

                    enlargeCenterPage: false,
                    viewportFraction: 1,
                    enlargeFactor: 10,
                    height: 168.0,
                    autoPlay: false,),
                  items: ["body","body1","body3","body4"].map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return FeatureCard();
                      },
                    );
                  }).toList(),
                )),
            Center(
              child: Container(

                child: AnimatedSmoothIndicator(

                  activeIndex:activeIndex,
                  count: 3,
                  effect: WormEffect(),
                ),
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
                    color: Color(0xFF027A48),
                  ),
                )
              ],
            ),
            SizedBox(height: 16),
            Expanded(
              child: GridView.count(
                childAspectRatio:2,
                crossAxisCount: 2,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  ExerciseCard(title: 'Relaxation',imagePath: "assets/images/Frame.png",),
                  ExerciseCard(title: 'Meditation',imagePath: 'assets/images/Group.png',),
                  ExerciseCard(title: 'Breathing',imagePath: 'assets/images/Beathing.png',),
                  ExerciseCard(title: 'Yoga',imagePath: 'assets/images/Group.png'),
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
        selectedItemColor: Color(0xFF027A48),
        unselectedItemColor: Color(0xFF6A6A8B),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",

          ),
    BottomNavigationBarItem(
    icon: Icon(Icons.apps_outage_outlined),
    label: "Home",),
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




