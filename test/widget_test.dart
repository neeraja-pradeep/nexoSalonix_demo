
/*import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lucide_icons/lucide_icons.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F7F7),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            // Location Row
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(18, 16, 18, 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
                        Icon(
                          Icons.location_on,
                          size: 28,
                          color: Color(0xFF112D4E),
                        ),
                        SizedBox(width: 8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'location,',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Color(0xFF112D4E),
                              ),
                            ),
                            Text(
                              'state',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 14,
                                color: Color(0xFF112D4E),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Icon(
                      LucideIcons.settings,
                      size: 26,
                      color: Color(0xFF112D4E),
                    ),
                  ],
                ),
              ),
            ),

            // Floating Search Bar
            SliverAppBar(
              automaticallyImplyLeading: false,
              backgroundColor: const Color(0xFFF9F7F7),
              pinned: true,
              elevation: 0,
              toolbarHeight: 70,
              flexibleSpace: Padding(
                padding: const EdgeInsets.fromLTRB(18, 10, 18, 10),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Color(
                          0x803F72AF,
                        ), // Slightly transparent accent color
                        blurRadius: 16,
                        spreadRadius: 1,
                        offset: Offset(0, 4), // Vertical shadow
                      ),
                    ],
                  ),

                  child: const TextField(
                    style: TextStyle(fontSize: 16, fontFamily: 'Poppins'),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      icon: Icon(
                        Icons.search,
                        size: 26,
                        color: Color(0xFF3F72AF),
                      ),
                      hintText: "Search...",
                      hintStyle: TextStyle(fontFamily: 'Poppins', fontSize: 16),
                    ),
                  ),
                ),
              ),
            ),

            // Main Content
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 30),
                    sectionHeader("Near You"),
                    const SizedBox(height: 14),
                    horizontalCardList(),

                    const SizedBox(height: 30),
                    sectionHeader("Most Visited"),
                    const SizedBox(height: 14),
                    horizontalCardList(),

                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 16,
        unselectedFontSize: 14,
        iconSize: 28,
        selectedLabelStyle: const TextStyle(fontFamily: 'Poppins'),
        unselectedLabelStyle: const TextStyle(fontFamily: 'Poppins'),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "search"),
          BottomNavigationBarItem(
            icon: Icon(LucideIcons.userCircle2),
            label: "profile",
          ),
        ],
        currentIndex: 0,
        selectedItemColor: Color(0xFF3F72AF),
        unselectedItemColor: Color(0xFF9E9E9E),
        backgroundColor: const Color(0xFFF9F7F7),
      ),
    );
  }

  Widget sectionHeader(String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w700,
            fontFamily: 'Poppins',
            color: Color(0xFF112D4E),
          ),
        ),
        TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
            minimumSize: const Size(40, 30),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
          child: const Text(
            "see all",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              fontFamily: 'Poppins',
              color: Colors.grey,
            ),
          ),
        ),
      ],
    );
  }

  Widget horizontalCardList() {
    return SizedBox(
      height: 280,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(right: 16),
          child: SizedBox(
            width: 225,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    // Placeholder image container (replace with real image)
                    ClipRRect(
                      borderRadius: BorderRadius.circular(18),
                      child: Image.network(
                        "https://generisonline.com/wp-content/uploads/2022/05/barber-shop-decor-ideas.jpg",
                        height: 225,
                        width: 225,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      bottom: 8,
                      right: 8,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xFF3F72AF),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: const Text(
                          "1.2km",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const Text(
                  "Shop Name",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    color: Color(0xFF112D4E),
                  ),
                ),
                const Text(
                  "Address",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF112D4E),
                    fontFamily: 'Poppins',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
*/
