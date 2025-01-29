import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rideshare/config/utils/my_color.dart';
import 'package:rideshare/config/utils/text_style.dart';

class DrawerIteWidget extends StatelessWidget {
  final String image;
  final String title;
  const DrawerIteWidget({super.key,required this.image,required this.title});

  @override
  Widget build(BuildContext context) {
    return   Row(
      children: [
        SvgPicture.asset(image),
        const SizedBox(width: 10,),
        Text(title,style: regularTextStyleHintText16.copyWith(color: MyColor.carNaneColor,fontSize: 12),),

      ],
    );
  }
}
