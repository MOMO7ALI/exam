import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';

class Audibooks extends StatefulWidget {
  const Audibooks({super.key});

  static const String routeName = 'audiBooks';

  @override
  State<Audibooks> createState() => _AudibooksState();
}

class _AudibooksState extends State<Audibooks> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Image.asset("assets/images/Logo.png"),
          actions: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Icon(
                Icons.settings,
                color: Color(0xFF4838D1),
              ),
            )
          ],
        ),
        body: Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.all(22),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Categories',
                      style: GoogleFonts.poppins(
                          fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'See more',
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(
                          0xFF4838D1,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                color: Colors.transparent, // Background color for the tab bar
                child: TabBar(
                  dividerColor: Colors.transparent,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  labelColor: Colors.blue,
                  unselectedLabelColor: Colors.black,
                  tabs: [
                    Tab(text: 'Art'),
                    Tab(text: 'Business'),
                    Tab(text: 'Comedy'),
                    Tab(text: 'Drama'),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(22),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Recommended For You',
                      style: GoogleFonts.poppins(
                          fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'See more',
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(
                          0xFF4838D1,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  child: Container(
                    child: TabBarView(
                      viewportFraction: 0.4,
                      children: [
                        Center(
                            child: Image(
                          image: AssetImage(
                              'assets/images/Image Placeholder 2.png'),
                        )),
                        Center(
                            child: Image(
                                image: AssetImage(
                                    'assets/images/Image Placeholder 400x600.png'))),
                        Center(
                            child: Image(
                                image: AssetImage(
                                    'assets/images/Image Placeholder 2.png'))),
                        Center(
                            child: Image(
                                image: AssetImage(
                                    'assets/images/Image Placeholder 400x600.png'))),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Best Seller',
                      style: GoogleFonts.poppins(
                          fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'See more',
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(
                          0xFF4838D1,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 30),
                      child: Row(
                        children: [
                          Image(
                              image: AssetImage(
                                  "assets/images/Image Placeholder 3.png")),
                          Padding(
                            padding: const EdgeInsets.only(top: 80, left: 50),
                            child: Column(
                              children: [
                                Text(
                                  'Light Mage',
                                  style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  'Laurie Forest',
                                  style: GoogleFonts.poppins(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 30),
                      child: Row(
                        children: [
                          Image(
                              image: AssetImage(
                                  "assets/images/Image Placeholder 3.png")),
                          Padding(
                            padding: const EdgeInsets.only(top: 80, left: 50),
                            child: Column(
                              children: [
                                Text(
                                  'Light Mage',
                                  style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  'Laurie Forest',
                                  style: GoogleFonts.poppins(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 30),
                      child: Row(
                        children: [
                          Image(
                              image: AssetImage(
                                  "assets/images/Image Placeholder 3.png")),
                          Padding(
                            padding: const EdgeInsets.only(top: 80, left: 50),
                            child: Column(
                              children: [
                                Text(
                                  'Light Mage',
                                  style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  'Laurie Forest',
                                  style: GoogleFonts.poppins(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 30),
                      child: Row(
                        children: [
                          Image(
                              image: AssetImage(
                                  "assets/images/Image Placeholder 3.png")),
                          Padding(
                            padding: const EdgeInsets.only(top: 80, left: 50),
                            child: Column(
                              children: [
                                Text(
                                  'Light Mage',
                                  style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  'Laurie Forest',
                                  style: GoogleFonts.poppins(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
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
                  icon: ImageIcon(AssetImage("assets/images/Menu.png")),
                  label: "Home",
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/Icon.png")),
                  label: "Search",
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/Icon3.png")),
                  label: "Home",
                ),
              ]),
      ),
    );
  }
}
