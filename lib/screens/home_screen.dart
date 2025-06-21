import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../widgets/location_header.dart';
import '../widgets/search_bar.dart' as custom_widgets;
import '../widgets/section_header.dart';
import '../widgets/horizontal_card_list.dart';
import '../widgets/bottom_nav_bar.dart';
import '../consts.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenHeight = Responsive.screenHeight(context);
    final screenWidth = Responsive.screenWidth(context);

    return Scaffold(
      backgroundColor: const Color(0xFFF9F7F7),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(child: LocationHeader()),
            SliverAppBar(
              automaticallyImplyLeading: false,
              backgroundColor: const Color(0xFFF9F7F7),
              pinned: true,
              elevation: 0,
              toolbarHeight: screenHeight * 0.085,
              flexibleSpace: custom_widgets.SearchBar(),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.045),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: screenHeight * 0.03),
                    SectionHeader(title: "Near You"),
                    SizedBox(height: screenHeight * 0.024),
                    HorizontalCardList(),
                    SizedBox(height: screenHeight * 0.035),
                    SectionHeader(title: "Most Visited"),
                    SizedBox(height: screenHeight * 0.017),
                    HorizontalCardList(),
                    SizedBox(height: screenHeight * 0.024),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const CustomBottomNavBar(),
    );
  }
}
