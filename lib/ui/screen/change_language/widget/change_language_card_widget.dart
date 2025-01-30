import 'package:flutter/material.dart';
import 'package:rideshare/config/utils/my_color.dart';
import 'package:rideshare/config/utils/text_style.dart';

class ChangeLanguageCardWidget extends StatefulWidget {
  final String image;
  final String title1;
  final String title2;
  const ChangeLanguageCardWidget({super.key,required this.image,required this.title1,required this.title2});

  @override
  State<ChangeLanguageCardWidget> createState() => _ChangeLanguageCardWidgetState();
}
bool isSelect=false;

class _ChangeLanguageCardWidgetState extends State<ChangeLanguageCardWidget> {
  @override
  Widget build(BuildContext context) {
    return   Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: MyColor.primaryColor),
      ),
      child: Row(
        children: [
          Image(image: AssetImage(widget.image)),
          const SizedBox(width: 10,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(widget.title1,style: regularTextStyleHintText16.copyWith(color: MyColor.blackColor),),
              Text(widget.title2,style: regularTextStyleHintText16.copyWith(color: MyColor.normalGrayColor,fontSize: 12),),
            ],
          ),
          const Spacer(),
          Checkbox(value: isSelect, onChanged: (value){
            setState(() {
              isSelect=value!;
            });
          },
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
            activeColor: MyColor.primaryColor,
          )
        ],
      ),
    );
  }
}
