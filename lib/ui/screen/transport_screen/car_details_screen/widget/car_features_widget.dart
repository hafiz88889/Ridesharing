import 'package:flutter/material.dart';
import 'package:rideshare/config/utils/my_color.dart';
import 'package:rideshare/config/utils/text_style.dart';

class CarFeaturesWidget extends StatelessWidget {
  final String title1;
  final String title2;
  const CarFeaturesWidget({super.key,required this.title1,required this.title2});

  @override
  Widget build(BuildContext context) {
    return   Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: MyColor.containColor,
          border: Border.all(color: MyColor.primaryColor)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title1,style: regularTextStyle14.copyWith(color: MyColor.carNaneColor),),
          Text(title2,style: regularTextStyle14.copyWith(color: MyColor.carNaneColor),),
        ],
      ),
    );
  }
}
