import 'package:flutter/material.dart';
import 'package:planets_assignment/styling/app_colors.dart';

class ExploreComponent extends StatelessWidget {
  final String imagePath;
  final String title;
  final bool isButtonFound;
  final String planetText;

  const ExploreComponent(
      {required this.imagePath,
        required this.title,
        required this.isButtonFound,
        required this.planetText});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 40,
        ),
        isButtonFound
            ? Container(
          margin: const EdgeInsets.only(left: 20),
          child: Row(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: AppColor.secodarytColor,
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              const SizedBox(
                width: 100,
              ),
              Text(
                title,
                style: const TextStyle(
                    color: AppColor.primaryColor,
                    fontWeight: FontWeight.w700,
                    fontSize: 24),
              ),
            ],
          ),
        )
            : Center(
          child: Text(
            title,
            style: const TextStyle(
                color: AppColor.primaryColor,
                fontWeight: FontWeight.w700,
                fontSize: 24),
          ),
        ),
        Stack(
          alignment: Alignment.centerLeft,
          children: [
            Image.asset(
              imagePath,
              width: 375,
              height: 237,
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Text(
                planetText,
                style: const TextStyle(
                    color: AppColor.primaryColor,
                    fontWeight: FontWeight.w700,
                    fontSize: 24),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
