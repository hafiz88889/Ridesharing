import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rideshare/config/utils/custom_image.dart';
import 'package:rideshare/config/utils/my_color.dart';
import 'package:rideshare/config/utils/text_style.dart';

class PlaceLocationWidget extends StatelessWidget {
  final String title1;
  final String title2;
  final String title3;
  const PlaceLocationWidget({super.key,required this.title1,required this.title2,required this.title3});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image(image: AssetImage(MyImage.location)),
        const SizedBox(width: 8,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title1,style: regularTextStyleHintText16.copyWith(color: MyColor.carNaneColor),),
            Text(title2,style: regularTextStyleHintText16.copyWith(color: MyColor.normalGrayColor,fontSize: 12),),
          ],
        ),
        const Spacer(),
        Text(title3,style: regularTextStyleHintText16.copyWith(color: MyColor.carNaneColor),),


      ],
    );
  }
}
