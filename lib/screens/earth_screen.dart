import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../styling/app_colors.dart';
import '../widgets/explore_component.dart';

class EarthScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
return Scaffold(   backgroundColor: AppColor.backgroundColor,

  body: Column(
    children: [
      ExploreComponent(title:'Earth',isButtonFound:true,planetText:'Earth: Our Blue Marble',
        imagePath: 'assets/images/explore.png',),
      Image.asset('assets/images/earth 2.png'),

    ],
  ),

);
  }

}