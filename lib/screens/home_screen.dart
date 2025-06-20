import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../widgets/location_header.dart';
import '../widgets/search_bar.dart' as custom_widgets;
import '../widgets/section_header.dart';
import '../widgets/horizontal_card_list.dart';
import '../widgets/bottom_nav_bar.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
              toolbarHeight: 70,
              flexibleSpace: custom_widgets.SearchBar(),
            ),
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 30),
                    SectionHeader(title: "Near You"),
                    SizedBox(height: 14),
                    HorizontalCardList(),
                    SizedBox(height: 30),
                    SectionHeader(title: "Most Visited"),
                    SizedBox(height: 14),
                    HorizontalCardList(),
                    SizedBox(height: 20),
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
