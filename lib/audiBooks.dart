import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'best_seller.dart';
import 'category_list.dart';

class AudiBooksApp extends StatefulWidget {
  const AudiBooksApp({super.key});

  static const String routeName = 'audiBooks';

  @override
  State<AudiBooksApp> createState() => _AudiBooksAppState();
}

class _AudiBooksAppState extends State<AudiBooksApp> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

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
        body: Column(
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
                controller: _tabController,
                isScrollable: true,
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
              child: TabBarView(
                controller: _tabController,
                children: [
                  CategoryListView(),
                  CategoryListView(),
                  CategoryListView(),
                  CategoryListView(),
                ],
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
            SizedBox(
              height: 200, // Adjust height as needed
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  BestSellerItem(),
                  BestSellerItem(),
                  BestSellerItem(),
                  BestSellerItem(),
                ],
              ),
            ),
          ],
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
              icon: Icon(Icons.home_filled),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search_outlined),
              label: "Search",
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/Icon3.png")),
              label: "Library",
            ),
          ],
        ),
      ),
    );
  }
}