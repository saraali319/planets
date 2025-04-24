import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:planets_assignment/models/planet.dart';
import 'package:planets_assignment/styling/app_colors.dart';
import 'package:planets_assignment/widgets/information.dart';

import 'explore_component.dart';

class PlanetDetailsScreen extends StatelessWidget {
  final Planet planet;

  const PlanetDetailsScreen({required this.planet});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: Column(
        children: [
          ExploreComponent(
            title: planet.planetName,
            isButtonFound: true,
            planetText: 'Which planet would you like to explore?',
            imagePath: 'assets/images/explore.png',
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Image.asset(planet.pNGImagePath, height: 339,width: 342,),
                  const SizedBox(height: 20),
                  Text(planet.title,
                      style: const TextStyle(
                          color: AppColor.primaryColor,
                          fontSize: 16,
                          fontWeight: FontWeight.bold)),
                  const SizedBox(height: 10),
                  Text(planet.about,
                      style: const TextStyle(
                          color: AppColor.primaryColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          height: 22 / 16)),
                  const SizedBox(height: 17),
                  Information(
                      label: 'Distance from Sun (km)',
                      details: planet.distancefromSun),
                  Information(
                      label: 'Length of Day (hours)',
                      details: planet.lengthOfDay),
                  Information(
                      label: 'Orbital Period (years)',
                      details: planet.orbitalPeriod),
                  Information(label: 'Radius (km)', details: planet.radius),
                  Information(label: 'Mass (kg)', details: planet.mass),
                  Information(label: 'Gravity (m/s²)', details: planet.gravity),
                  Information(
                      label: 'Surface Area (km²)', details: planet.surfaceArea),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
