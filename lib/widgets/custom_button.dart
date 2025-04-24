import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../styling/app_colors.dart';

class CustomButton extends StatelessWidget {
  final String content;
  final Function onClickBack;

  const CustomButton(this.content, this.onClickBack);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        onClickBack();
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            content,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
          const Icon(Icons.arrow_forward,
              size: 20, color: AppColor.primaryColor),
        ],
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColor.secodarytColor,
        fixedSize: const Size(342, 60),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(28),
        ),
      ),
    );
  }
}
