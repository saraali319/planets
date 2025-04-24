import 'package:flutter/material.dart';
import 'package:planets_assignment/screens/home_page.dart';
import 'package:planets_assignment/styling/app_colors.dart';
import 'package:planets_assignment/styling/app_colors.dart';
import 'package:planets_assignment/widgets/custom_button.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: Stack(
        alignment: Alignment.center,
        children: [
          Center(
            child: Image.asset(
              'assets/images/plant.png',
              width: 740,
              height: 647,
            ),
          ),
          const Text('Explore The Universe',
              style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.w900,
                  color: AppColor.primaryColor))
        ],
      ),
      bottomNavigationBar: Container(
          margin: const EdgeInsets.all(20),
          child: CustomButton('Explore', () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          })),
    );
  }
}
