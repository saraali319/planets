import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:planets_assignment/widgets/explore_component.dart';

import '../models/planet.dart';
import '../styling/app_colors.dart';
import '../widgets/custom_button.dart';
import '../widgets/planet_details.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key}); // Added const constructor

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _pageController = PageController();
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: Column(
        children: [
          const ExploreComponent(
            title: 'Explore',
            isButtonFound: false,
            planetText: 'Which planet would you like to explore?',
            imagePath: 'assets/images/explore.png',
          ),

          // Planet Carousel
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              itemCount: planets.length,
              onPageChanged: (index) {
                setState(() {
                  currentPage = index;
                });
              },
              itemBuilder: (context, index) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      planets[index].pNGImagePath,
                      height: 339,
                      width: 342,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      planets[index].planetName,
                      style: const TextStyle(
                        color: AppColor.primaryColor,
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),

      // Bottom Button
      bottomNavigationBar: Container(
        margin: const EdgeInsets.all(20),
        child: CustomButton(
          'Explore ${planets[currentPage].planetName}',
          () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => PlanetDetailsScreen(
                  planet: planets[currentPage],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
