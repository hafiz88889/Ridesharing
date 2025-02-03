import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rideshare/config/utils/custom_image.dart';
import 'package:rideshare/config/utils/my_color.dart';
import 'package:rideshare/ui/global_widget/text_field_widget.dart';

class TextFieldTwo extends StatefulWidget {
  const TextFieldTwo({super.key});

  @override
  State<TextFieldTwo> createState() => _TextFieldTwoState();
}
String dropdownValue="one";
class _TextFieldTwoState extends State<TextFieldTwo> {
  @override
  Widget build(BuildContext context) {
    return GlobalTextFieldWidget(hintText: "+8801867221168",
      prefix:Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
        child: DropdownButton<String>(
          dropdownColor: MyColor.whiteColor,
          value: dropdownValue,
          icon: SvgPicture.asset(MyImage.downArrowIcon),
          onChanged: (String? newValue){
            setState(() {
              dropdownValue=newValue!;
            });
          },
          items: const [
            DropdownMenuItem(
              value: "one",
              child: Text("One"),
            ),
            DropdownMenuItem(
              value: "Two",
              child: Text("two"),
            ),
            DropdownMenuItem(
              value: "three",
              child: Text("three"),
            ),
          ],

        ),
      )
      ,);
  }
}
