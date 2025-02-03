import 'package:flutter/material.dart';
import 'package:rideshare/config/utils/custom_image.dart';
import 'package:rideshare/config/utils/my_color.dart';
import 'package:rideshare/config/utils/text_style.dart';
import 'package:rideshare/ui/screen/onboarding_screen/screen/screen_three.dart';

class OnBoardingPageTwo extends StatelessWidget {
  const OnBoardingPageTwo({super.key});

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
              Image(image: AssetImage(MyImage.onBoardingTwo)),
              const SizedBox(height: 40,),
              Text("At anytime",style: regularTextStyle24,),
              const SizedBox(height: 10,),
              Text("Sell houses easily with the helpof\n Listenoryx and to make this line big I\n am writing more",style: regularTextStyleHintText16.copyWith(color: MyColor.normalTextColor,fontSize: 14),),
              const  SizedBox(height: 168,),
              Stack(
                children: [
                  SizedBox(
                    height: 90,
                    width: 90,
                    child: CircularProgressIndicator(
                      color: MyColor.primaryColor,
                      value: 0.66,
                      backgroundColor: MyColor.primaryColor.withAlpha(50),
                    ),
                  ),
                  Positioned(
                    top: 10,
                    left: 10,
                    child: GestureDetector(
                      onTap: (){
                        Navigator.pushNamed(context, "/onBoardingPageThree");
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

