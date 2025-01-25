import 'package:flutter/material.dart';
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
            Text("Sell houses easily with the help of \n Listenoryzx and to make this line big \n              I am weitting more",style: regularTextStyleHintText16.copyWith(color: MyColor.normalTextColor,fontSize: 14),),
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
                Navigator.pushNamed(context, "/onBoardingPageTwo");
               },
               child: Container(
                 decoration: BoxDecoration(
                   shape: BoxShape.circle,
                   color: MyColor.buttonColor
                 ),
                 child: Image(image: AssetImage(MyImage.backIconarrow),height: 18,width: 18,color: MyColor.textColor,)
                 //child:Icon(Icons.arrow_forward,color: MyColor.carNaneColor,size: 40,)
               ),
             ),
            )
          ],
        ),
      ),
      ),
    );
  }
}
