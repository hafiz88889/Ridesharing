import 'package:flutter/material.dart';
import 'package:rideshare/config/utils/custom_image.dart';
import 'package:rideshare/config/utils/my_color.dart';
import 'package:rideshare/config/utils/text_style.dart';

class ChattingPage extends StatefulWidget {
  const ChattingPage({super.key});

  @override
  State<ChattingPage> createState() => _ChattingPageState();
}

class _ChattingPageState extends State<ChattingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.whiteColor,
      appBar: AppBar(
        backgroundColor: MyColor.whiteColor,
        scrolledUnderElevation: 0,
        leading:
        ConstrainedBox(
          constraints: const BoxConstraints.tightFor(width: 40), // Custom width
          child:IconButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Image(image: AssetImage(MyImage.backIcontop),height: 30,width: 30,)),
        ),
        title: Row(
          children: [
            Text(
              "Back",
              style: regularTextStyleHintText16.copyWith(color: MyColor.textColor),
            ),
            const Spacer(),
            Text(
              "Chat",
              style: regularTextStyleHintText16.copyWith(color: MyColor.textColor,fontSize: 18),
            ),
            const Spacer(),
          ],
        ),
      ),

    );
  }
}
