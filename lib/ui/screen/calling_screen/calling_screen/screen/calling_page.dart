import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rideshare/config/utils/custom_image.dart';
import 'package:rideshare/config/utils/my_color.dart';
import 'package:rideshare/config/utils/text_style.dart';
import 'package:rideshare/ui/screen/calling_screen/calling_screen/widget/bottom_widget.dart';

class CallingPage extends StatelessWidget {
  const CallingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColor.whiteColor,
        scrolledUnderElevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Image(image: AssetImage(MyImage.backIcontop))),
        title: Text(
          "Back",
          style: regularTextStyleHintText16.copyWith(color: MyColor.textColor),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            BottomWidget(image: MyImage.cameraIconTwo),
            const SizedBox(width: 22,),
            BottomWidget(image: MyImage.muteIcon),
            const SizedBox(width: 22,),
            GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, "/RecevingPage");
              },
              child: Container(
                padding: const EdgeInsets.all(20),
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: MyColor.cellColor
                ),
                child: SvgPicture.asset(MyImage.phoneIcon),
              ),
            ),
            const SizedBox(width: 22,),
            BottomWidget(image: MyImage.videoCellingIcon),
            const SizedBox(width: 22,),
            BottomWidget(image: MyImage.moreOptionIcon),
          ],
        ),
      ),
      backgroundColor: MyColor.whiteColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Image(image: AssetImage(MyImage.proFileImage))),
          const SizedBox(height: 20,),
          Text("Sergio Ramasis",style: regularTextStyle24.copyWith(fontSize: 28),),
          Text("Calling....",style: regularTextStyle14),
        ],
      ),
    );
  }
}
