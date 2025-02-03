import 'package:flutter/material.dart';
import 'package:rideshare/config/utils/my_color.dart';
import 'package:rideshare/config/utils/text_style.dart';

class TabBarViewWidget extends StatelessWidget {
  const TabBarViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return   Container(
      height: 50,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: MyColor.primaryColor),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Nate",style: regularTextStyleHintText16.copyWith(color: MyColor.carNaneColor),),
              Text("Mustang Shelby GT",style: regularTextStyleHintText16.copyWith(color: MyColor.normalGrayColor,fontSize: 12),),
            ],
          ),
          Text("Today at 09:20 am",style: regularTextStyleHintText16.copyWith(color: MyColor.normalGrayColor,fontSize: 12),),

        ],
      ),
    );
  }
}
