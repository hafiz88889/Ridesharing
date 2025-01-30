import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rideshare/config/utils/custom_image.dart';
import 'package:rideshare/config/utils/my_color.dart';
import 'package:rideshare/config/utils/text_style.dart';

class ChangePassTextFieldWidget extends StatefulWidget {
  final String title;
  const ChangePassTextFieldWidget({super.key,required this.title});

  @override
  State<ChangePassTextFieldWidget> createState() => _ChangePassTextFieldWidgetState();
}
bool _obsecureText=true;

class _ChangePassTextFieldWidgetState extends State<ChangePassTextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return   TextField(
      obscureText: _obsecureText,
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(borderSide:  BorderSide(color: MyColor.normalGrayColor)),
          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: MyColor.normalGrayColor)),
          border: const OutlineInputBorder(
          ),
          hintText:widget.title,hintStyle: regularTextStyleHintText16.copyWith(color: MyColor.normalGrayColor),
          suffixIcon: IconButton(onPressed: (){
            setState(() {
              _obsecureText=! _obsecureText;
            });
          },
              icon: SvgPicture.asset(_obsecureText? MyImage.visibilityOffIcon:MyImage.visibilityOffIcon))
      ),
    );
  }
}
