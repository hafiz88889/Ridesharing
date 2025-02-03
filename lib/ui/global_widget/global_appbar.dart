import 'package:flutter/material.dart';
import 'package:rideshare/config/utils/my_color.dart';
import 'package:rideshare/config/utils/text_style.dart';

class GlobalAppbar extends StatelessWidget {
  final IconData icon;
  final String title1;
  final String title2;
  const GlobalAppbar({super.key,required this.icon,required this.title1,required this.title2});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColor.whiteColor,
        scrolledUnderElevation: 0,
        centerTitle: true,
        leadingWidth: 100,
        leading:Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(onPressed: (){}, icon: Icon(icon)),
            Text(title1)
          ],
        ),
        title: Text(
          title2,
          style: regularTextStyleHintText16.copyWith(color: MyColor.textColor,fontSize: 18),
        ),
      ),
    );
  }
}
