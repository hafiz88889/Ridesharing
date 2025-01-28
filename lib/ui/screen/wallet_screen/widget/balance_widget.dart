import 'package:flutter/material.dart';
import 'package:rideshare/config/utils/my_color.dart';
import 'package:rideshare/config/utils/text_style.dart';

class BalanceWidget extends StatelessWidget {
  final String title1;
  final String title2;
  const BalanceWidget({super.key,required this.title1,required this.title2});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(14),
      height: 145,
      width: 166,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: MyColor.containColor,
          border: Border.all(color: MyColor.primaryColor)
      ),
      child: Column(
        children: [
          Text(title1,style: regularTextStyle24.copyWith(fontSize: 28),),
          const SizedBox(height: 21,),
          Text(title2,style: regularTextStyleHintText16.copyWith(color: MyColor.carNaneColor,fontSize: 14),)
        ],
      ),
    );
  }
}
