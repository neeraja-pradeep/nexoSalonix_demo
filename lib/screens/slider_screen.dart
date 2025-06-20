import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:salonix/screens/home_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SliderScreen extends ConsumerStatefulWidget {
  const SliderScreen({super.key});

  @override
  ConsumerState<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends ConsumerState<SliderScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<String> _slideTexts = [
    'Find Barbers And \nSalons Easily in Your \nHands',
    'Book Your Favorite \nBarber and Salon \nQuickly',
    'Come Be Handsome and \nBeautiful With Us \nRight Now!',
  ];

  final List<String> _imagePaths = [
    'assets/barber_banner.png',
    'assets/saloon_banner.png',
    'assets/handsome_banner.png',
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onButtonPressed() {
    if (_currentPage < _slideTexts.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
      );
    } else {
      // Replace with your actual home screen
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    }
  }

  Widget _buildSlide(String text, String imagePath) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _buildImage(imagePath),
        const SizedBox(height: 40),
        _buildText(text),
      ],
    );
  }

  Widget _buildImage(String path) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.6,
      width: double.infinity,
      child: Image.asset(path, fit: BoxFit.cover),
    );
  }

  Widget _buildText(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: Color(0xFF112D4E),
          fontSize: 32,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  Widget _buildDotIndicator() {
    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).size.height * 0.045,
      ),
      child: SmoothPageIndicator(
        controller: _pageController,
        count: _slideTexts.length,
        effect: const ExpandingDotsEffect(
          activeDotColor: Color(0xFF3F72AF),
          dotColor: Color(0xFFDBE2EF),
          dotHeight: 6,
          dotWidth: 6,
          spacing: 8,
        ),
      ),
    );
  }

  Widget _buildActionButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: ElevatedButton(
        onPressed: _onButtonPressed,
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(double.infinity, 45),
          backgroundColor: const Color(0xFF3F72AF),
          foregroundColor: Colors.white,
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          textStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            fontFamily: 'Poppins',
          ),
        ),
        child: Text(
          _currentPage == _slideTexts.length - 1 ? 'Get Started' : 'Next',
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F7F7),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              itemCount: _slideTexts.length,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              itemBuilder: (context, index) =>
                  _buildSlide(_slideTexts[index], _imagePaths[index]),
            ),
          ),
          _buildDotIndicator(),
          _buildActionButton(),
          SizedBox(height: MediaQuery.of(context).size.height * 0.1),
        ],
      ),
    );
  }
}
