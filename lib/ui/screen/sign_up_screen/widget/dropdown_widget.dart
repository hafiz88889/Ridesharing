import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rideshare/config/utils/custom_image.dart';
import 'package:rideshare/config/utils/my_color.dart';

class DropdownExample extends StatefulWidget {
  @override
  _DropdownExampleState createState() => _DropdownExampleState();
}

class _DropdownExampleState extends State<DropdownExample> {
   String selectedValue="Gender";

  List<String> options = ["Gender","male", "female",];

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
          items: options.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ),
    );
  }
}
