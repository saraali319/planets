import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:planets_assignment/screens/earth_screen.dart';
import 'package:planets_assignment/widgets/explore_component.dart';

import '../styling/app_colors.dart';
import '../widgets/custom_button.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
 return Scaffold(
   backgroundColor: AppColor.backgroundColor,
   body: Column(
     children: [
       ExploreComponent(title:'Explore',isButtonFound:false,planetText:'Which planet would you like to explore?',
         imagePath: 'assets/images/explore.png',),
       Image.asset('assets/images/earth.png'),
     ],
   ),
   bottomNavigationBar:
   Container(
       margin: EdgeInsets.all(20),
       child: CustomButton('Explore Earth',
               () {
             Navigator.push(
               context,
               MaterialPageRoute(builder: (context) => EarthScreen()),
             );
           }

       )
   ),
 );
  }

}
