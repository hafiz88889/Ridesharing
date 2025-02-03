import 'package:flutter/material.dart';
import 'package:rideshare/config/utils/my_color.dart';
import 'package:rideshare/config/utils/text_style.dart';

class GlobalTextFieldWidget extends StatelessWidget {
  final String hintText;
  final Widget? prefix;
  final Widget? suffix;
  const GlobalTextFieldWidget({super.key,
  required this.hintText,
    this.prefix,
    this.suffix,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: MyColor.greyColor.withAlpha(150)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: MyColor.greyColor.withAlpha(150))
        ),
        border: const OutlineInputBorder(),
        hintText: hintText,hintStyle: regularTextStyle14.copyWith(color: MyColor.greyColor.withAlpha(100)),
        suffixIcon: suffix !=null?suffix: null,
        prefixIcon: prefix !=null? prefix:null,
      ),
    );
  }
}
