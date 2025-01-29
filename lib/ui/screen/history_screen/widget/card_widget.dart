import 'package:flutter/material.dart';
import 'package:rideshare/config/utils/my_color.dart';
import 'package:rideshare/config/utils/text_style.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: MyColor.primaryColor)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Nate",style: regularTextStyle14.copyWith(color: MyColor.blackColor),),
              Text("Mustang Shelby GT",style: regularTextStyle14.copyWith(color: MyColor.normalGrayColor),),
            ],
          ),
          Text("Today at 09:20 am",style: regularTextStyle14.copyWith(fontSize: 12,color: MyColor.blackColor),)
        ],
      ),
    );
  }
}
