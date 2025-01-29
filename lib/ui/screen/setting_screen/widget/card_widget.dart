import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rideshare/config/utils/custom_image.dart';
import 'package:rideshare/config/utils/my_color.dart';
import 'package:rideshare/config/utils/text_style.dart';

class CardWidgetSetting extends StatelessWidget {
  final String image;
  final String title1;
  const CardWidgetSetting({super.key,required this.image,required this.title1});

  @override
  Widget build(BuildContext context) {
    return   Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: MyColor.primaryColor)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title1,style: regularTextStyleHintText16.copyWith(color: MyColor.carNaneColor),),
          SvgPicture.asset(image)
        ],
      ),
    );
  }
}
