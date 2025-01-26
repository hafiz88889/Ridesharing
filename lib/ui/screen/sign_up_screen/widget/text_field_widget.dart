import 'package:flutter/material.dart';
import 'package:rideshare/config/utils/my_color.dart';
import 'package:rideshare/config/utils/text_style.dart';

class TextFieldWidget extends StatelessWidget {
  final String title;
  const TextFieldWidget({super.key,
  required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
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
