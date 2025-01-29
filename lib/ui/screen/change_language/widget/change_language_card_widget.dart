
import 'package:flutter/material.dart';
import 'package:rideshare/config/utils/my_color.dart';

class ChangeLanguageCardWidget extends StatefulWidget {
  final String image;
  final String title;
  const ChangeLanguageCardWidget({super.key,
    required this.image,
    required this.title,
  });

  @override
  State<ChangeLanguageCardWidget> createState() => _ChangeLanguageCardWidgetState();
}
bool isChecked=false;
class _ChangeLanguageCardWidgetState extends State<ChangeLanguageCardWidget> {
  get regularTextStyle16 => null;

  @override
  Widget build(BuildContext context) {
    return     Row(
      children: [
        Image(image: AssetImage(widget.image),height: 30,width: 60,),
        const SizedBox(width: 10,),
        Text(widget.title,style: regularTextStyle16.copyWith(color: MyColor.blackColor),),
        const Spacer(),
        Checkbox(
            activeColor: MyColor.primaryColor,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            value: isChecked,
            onChanged: (value){
              setState(() {
                isChecked=value!;
              });
            })
      ],
    );
  }
}
