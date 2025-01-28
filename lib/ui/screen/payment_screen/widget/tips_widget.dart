import 'package:flutter/material.dart';
import 'package:rideshare/config/utils/my_color.dart';
import 'package:rideshare/config/utils/text_style.dart';

class TipsWidget extends StatelessWidget {
  final String title;
  final Color color;
  const TipsWidget({super.key,required this.title,required this.color});

  @override
  Widget build(BuildContext context) {
    return   Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: color),
      ),
      child: Text(title,style: regularTextStyleHintText16.copyWith(color: color),),
    );
  }
}
