import 'package:flutter/cupertino.dart';
import 'package:planets_assignment/models/planet.dart';
import 'package:planets_assignment/styling/app_colors.dart';

class PlanetInformation extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Column(
  children: [
    Text("About",style: TextStyle(color: AppColor.primaryColor,fontSize: 24,fontWeight: FontWeight.w700),),
    SizedBox(height: 8,),
  ],
   );
  }

}