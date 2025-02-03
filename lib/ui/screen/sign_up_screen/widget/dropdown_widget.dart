import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rideshare/config/utils/custom_image.dart';
import 'package:rideshare/config/utils/my_color.dart';

class DropdownWidget extends StatefulWidget {
  const DropdownWidget({super.key,
  });

  @override
  State<DropdownWidget> createState() => _DropdownWidgetState();
}
String selectedValue="Gender";
class _DropdownWidgetState extends State<DropdownWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: MyColor.greyColor.withAlpha(100))
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 2),
        child: DropdownButton<String>(
          dropdownColor: MyColor.whiteColor,
          underline:Container(),
          icon: SvgPicture.asset(MyImage.downArrowIcon),
          value: selectedValue,
          onChanged: (String? newValue) {
            setState(() {
              selectedValue = newValue!;
            });
          },
          items:const [
            DropdownMenuItem(
                value: "Gender",
                child: Text("Gender")),
            DropdownMenuItem(
              value: "Male",
                child: Text("Male")),
            DropdownMenuItem(
              value: "female",
                child: Text("female")),

          ]
        ),
      ),
    );
  }
}
