import 'package:flutter/material.dart';
import 'package:rideshare/config/utils/all_text.dart';
import 'package:rideshare/config/utils/custom_image.dart';
import 'package:rideshare/config/utils/my_color.dart';
import 'package:rideshare/config/utils/text_style.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("Skip",style: regularTextStyleHintText16.copyWith(color: MyColor.textColor),)
              ],
            ),
            const SizedBox(height: 100,),
            Image(image: AssetImage(MyImage.onBoardingOne)),
            const SizedBox(height: 40,),
            Text("Anywhere you are",style: regularTextStyle24,),
            const SizedBox(height: 10,),
            Text(MyText.onBoardingOne,textAlign: TextAlign.center,style: regularTextStyleHintText16.copyWith(color: MyColor.normalTextColor,fontSize: 14),),
            const  SizedBox(height: 168,),
            Stack(
              children: [
                SizedBox(
                  height: 90,
                  width: 90,
                  child: CircularProgressIndicator(
                    color: MyColor.primaryColor,
                    value: 0.33,
                    backgroundColor: MyColor.primaryColor.withAlpha(50),
                  ),
                ),
                Positioned(
                  top: 10,
                  left: 10,
                  child: GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, "/onBoardingPageTwo");
                    },
                    child: Container(
                      height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: MyColor.primaryColor
                        ),
                        child: Image(image: AssetImage(MyImage.backIconarrow),height: 18,width: 18,color: MyColor.textColor,),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      ),
    );
  }
}



//   Navigator.pushNamed(context, "/onBoardingPageTwo");
