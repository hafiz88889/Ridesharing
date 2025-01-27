import 'package:flutter/material.dart';
import 'package:rideshare/config/utils/my_color.dart';
import 'package:rideshare/config/utils/text_style.dart';

class BoxwidgetWhite extends StatefulWidget {
  final String title1;
  final String title2;
  final String title3;
  final Color boxColor;
  const BoxwidgetWhite({super.key,required this.boxColor,required this.title1,required this.title2,required this.title3});

  @override
  State<BoxwidgetWhite> createState() => _BoxwidgetWhiteState();
}
bool isSelect=false;
class _BoxwidgetWhiteState extends State<BoxwidgetWhite> {
  @override
  Widget build(BuildContext context) {
    return     Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color:widget.boxColor,
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.title1,style: regularTextStyleHintText16.copyWith(color: MyColor.blackColor),),
          const SizedBox(height: 10,),
          Text(widget.title2,style: regularTextStyleHintText16.copyWith(color: MyColor.greyColor,fontSize: 12),),
          Text(widget.title3,style: regularTextStyleHintText16.copyWith(color: MyColor.greyColor,fontSize: 12),),
        ],
      ),
    );
  }
}
