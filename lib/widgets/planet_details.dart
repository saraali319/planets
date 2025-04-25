import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';
import 'package:planets_assignment/models/planet.dart';
import 'package:planets_assignment/styling/app_colors.dart';
import 'package:planets_assignment/widgets/information.dart';
import 'package:planets_assignment/widgets/explore_component.dart';

class PlanetDetailsScreen extends StatelessWidget {
  final Planet planet;

  const PlanetDetailsScreen({required this.planet, super.key});

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
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 342,
                      height: 339,
                      child: ModelViewer(

                       src: planet.glbImagePath,
                        alt: "3D model of ${planet.planetName}",
                        autoRotate: true,
                        cameraControls: true,
                        disableZoom: true,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      planet.title,
                      style: const TextStyle(
                        color: AppColor.primaryColor,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      planet.about,
                      style: const TextStyle(
                        color: AppColor.primaryColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                        height: 1.4,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    const SizedBox(height: 20),
                    Information(label: 'Distance from Sun (km)', details: planet.distancefromSun),
                    Information(label: 'Length of Day (hours)', details: planet.lengthOfDay),
                    Information(label: 'Orbital Period (years)', details: planet.orbitalPeriod),
                    Information(label: 'Radius (km)', details: planet.radius),
                    Information(label: 'Mass (kg)', details: planet.mass),
                    Information(label: 'Gravity (m/s²)', details: planet.gravity),
                    Information(label: 'Surface Area (km²)', details: planet.surfaceArea),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
