import 'package:flutter/widgets.dart';
import 'package:planets_assignment/styling/app_colors.dart';

class Information extends StatelessWidget {
  final String label;
  final String details;

  const Information({required this.label, required this.details});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          Expanded(
              child: Text('$label:',
                  style: const TextStyle(
                      color: AppColor.primaryColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 16))),
          Text(details,
              style: const TextStyle(
                  color: AppColor.primaryColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 16)),
        ],
      ),
    );
  }
}
