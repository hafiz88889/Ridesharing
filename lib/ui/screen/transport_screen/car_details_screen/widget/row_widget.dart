import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rideshare/config/utils/my_color.dart';
import 'package:rideshare/config/utils/text_style.dart';

class RowWidget extends StatelessWidget {
  final String image;
  final String title1;
  final String title2;
  const RowWidget({super.key,required this.image,required this.title1,required this.title2});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 77,
      height: 75,
      padding: const EdgeInsets.only(left: 5,right: 5,top: 10),
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: MyColor.containColor,
        border: Border.all(color: MyColor.primaryColor),
      ),
      child: Column(
        children: [
          SvgPicture.asset(image),
          Text(title1,style: regularTextStyleHintText16.copyWith(fontSize: 10,color: MyColor.carNaneColor),),
          Text(title2,style: regularTextStyleHintText16.copyWith(fontSize: 8,color: MyColor.carNaneColor),),
        ],
      ),
    );
  }
}
