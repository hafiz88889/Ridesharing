import 'package:flutter/material.dart';
import 'package:rideshare/config/utils/my_color.dart';
import 'package:rideshare/config/utils/text_style.dart';

class HomeTextField extends StatelessWidget {
  final String title;
  final Widget icons;
  final Widget icon;
  const HomeTextField({super.key,
    required this.title,
    required this.icons,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        filled: true,
          fillColor: MyColor.whiteColor.withAlpha(150),
          prefixIcon:icons,
          suffixIcon: icon,
          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: MyColor.visibilityTextColor)),
          hintText:title,hintStyle: regularTextStyleHintText16.copyWith(color: MyColor.textColor) ,
          enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: MyColor.visibilityTextColor),borderRadius: BorderRadius.circular(12)),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30)
          )
      ),
    );
  }
}
