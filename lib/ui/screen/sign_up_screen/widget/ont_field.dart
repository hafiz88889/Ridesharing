import 'package:flutter/material.dart';
import 'package:rideshare/config/utils/my_color.dart';

class OntField extends StatelessWidget {
  const OntField({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextField(
        keyboardType:TextInputType.number ,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: MyColor.normalGrayColor)),
            enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: MyColor.normalGrayColor)),
            border: const OutlineInputBorder(
                borderSide: BorderSide()
            )
        ),
      ),
    );
  }
}
