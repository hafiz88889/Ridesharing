import 'package:flutter/material.dart';
import 'package:rideshare/config/utils/my_color.dart';
import '../../../../../config/utils/text_style.dart';

class SelectPayMethodWidget extends StatelessWidget {
  final String image;
  final String title1;
  final String title2;
  const SelectPayMethodWidget({super.key,
  required this.image,
  required this.title1,
  required this.title2,
  });

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: MyColor.containColor,
          border: Border.all(color: MyColor.primaryColor)
      ),
      child: Row(
        children: [
          Image(image: AssetImage(image)),
          const SizedBox(width: 15,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title1,style: regularTextStyleHintText16.copyWith(color: MyColor.carNaneColor),),
              Text(title2,style: regularTextStyle14,),
            ],
          ),
        ],
      ),
    );
  }
}
