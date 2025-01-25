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
              Container(
                height: 90,
                width: 90,
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: MyColor.buttonColor,width: 4)
                ),
                child: InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, "/onBoardingPageThree");
                  },
                  child: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: MyColor.buttonColor
                      ),
                      child: Image(image: AssetImage(MyImage.backIconarrow),height: 18,width: 18,color: MyColor.textColor,)
                  ),
                ),
                //child:SvgPicture.asset(MyImage.backIcon,height:20,width:20,colorFilter: ColorFilter.mode(MyColor.textColor, BlendMode.srcIn),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
