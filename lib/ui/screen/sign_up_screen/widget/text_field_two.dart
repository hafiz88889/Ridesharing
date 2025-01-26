import 'package:flutter/material.dart';
import 'package:rideshare/config/utils/my_color.dart';
import 'package:rideshare/config/utils/text_style.dart';

class TextFieldWidgetTwo extends StatelessWidget {
  final String title;
  final Widget icons;
  final Widget icon;
  const TextFieldWidgetTwo({super.key,
    required this.title,
    required this.icons,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        prefixIcon:icons,
          suffixIcon: icon,
          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: MyColor.visibilityTextColor)),
          hintText:title,hintStyle: regularTextStyleHintText16 ,
          enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: MyColor.visibilityTextColor)),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12)
          )
      ),
    );
  }
}
