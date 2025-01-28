import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rideshare/config/utils/custom_image.dart';
import 'package:rideshare/config/utils/my_color.dart';

class BottomWidget extends StatelessWidget {
  final String image;
  const BottomWidget({super.key,required this.image});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 50,
      width: 50,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: MyColor.containColor,
      ),
      child: SvgPicture.asset(image,height: 20,width: 20,),
    );
  }
}
