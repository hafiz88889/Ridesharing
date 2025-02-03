import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rideshare/config/utils/custom_image.dart';
import 'package:rideshare/config/utils/my_color.dart';
import 'package:rideshare/config/utils/text_style.dart';
import 'package:rideshare/ui/screen/calling_screen/calling_screen/widget/bottom_widget.dart';

class RecevingPage extends StatelessWidget {
  const RecevingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColor.whiteColor,
        scrolledUnderElevation: 0,
        leadingWidth: 100,
        leading:Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(onPressed: (){Navigator.pop(context);}, icon:Image(image: AssetImage(MyImage.backIcontop),height: 30,width: 30,)),
            const Text("Back")
          ],
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
                Navigator.pushNamed(context, "/PaymentPage");
              },
              child: Container(
                padding: const EdgeInsets.all(20),
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: MyColor.redColor
                ),
                child: SvgPicture.asset(MyImage.cellEndIcon),
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
          Text("01:23",style: regularTextStyle24.copyWith(fontSize: 34),),
        ],
      ),
    );
  }
}
