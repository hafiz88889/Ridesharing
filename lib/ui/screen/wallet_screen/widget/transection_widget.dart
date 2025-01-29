import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rideshare/config/utils/my_color.dart';
import 'package:rideshare/config/utils/text_style.dart';

class TransectionWidget extends StatelessWidget {
  final String image;
  final String title1;
  final String title2;
  final String title3;
  final Color color;
  const TransectionWidget({super.key,required this.image,required this.title1,required this.title2,required this.title3,required this.color});

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.only(bottom: 16),
      padding: EdgeInsets.symmetric(horizontal: 15,vertical: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: MyColor.primaryColor),
      ),
      child: Row(
        children: [
          SizedBox(
            height: 40,
            width: 40,
            child: CircleAvatar(
              backgroundColor: color.withAlpha(30),
              child: SvgPicture.asset(image),
            ),
          ),
          const SizedBox(width: 15,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title1,style: regularTextStyleHintText16.copyWith(color: MyColor.carNaneColor),),
              Text(title2,style: regularTextStyleHintText16.copyWith(color: MyColor.normalTextColor,fontSize: 12),)
            ],
          ),
          const Spacer(),
          Text(title3,style: regularTextStyle14.copyWith(color: MyColor.blackColor),)
        ],
      ),
    );
  }
}
