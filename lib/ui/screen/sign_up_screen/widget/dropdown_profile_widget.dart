import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rideshare/config/utils/custom_image.dart';
import 'package:rideshare/config/utils/my_color.dart';

class DropDownProfileWidget extends StatefulWidget {
  const DropDownProfileWidget({super.key,
  });

  @override
  State<DropDownProfileWidget> createState() => _DropDownProfileWidgetState();
}
String selectedValue="City";
class _DropDownProfileWidgetState extends State<DropDownProfileWidget> {
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
                  value: "City",
                  child: Text("City")),
              DropdownMenuItem(
                  value: "Dhaka",
                  child: Text("Dhaka")),
              DropdownMenuItem(
                  value: "Chittagong",
                  child: Text("Chittagong")),

            ]
        ),
      ),
    );
  }
}
