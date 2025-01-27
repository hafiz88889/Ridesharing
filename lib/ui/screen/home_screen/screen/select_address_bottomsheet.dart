import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rideshare/config/utils/custom_image.dart';
import 'package:rideshare/config/utils/my_color.dart';
import 'package:rideshare/config/utils/text_style.dart';

class SelectAddressBottomsheet extends StatelessWidget {
  const SelectAddressBottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SizedBox(
          height: 54,
          child: ElevatedButton(onPressed: (){
         //   Navigator.pushNamed(context, "/SignInPage");
          },
              style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(MyColor.buttonColor),
                  shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)))
              ),
              child: Text("Confirm location",style: regularTextStyleHintText16.copyWith(color: MyColor.whiteColor),)),
        ),
      ),
      body: Padding(padding: const EdgeInsets.all(20),
      child: SingleChildScrollView(
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Spacer(),
                Container(
                  height: 5,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: MyColor.greyColor
                  ),
                ),
                const Spacer(),
                IconButton(onPressed: (){Navigator.pop(context);}, icon: SvgPicture.asset(MyImage.closeIocn))
              ],
            ),
            const SizedBox(height: 30,),
            Text("Select address",style: regularTextStyleHintText16.copyWith(color: MyColor.blackColor,fontSize: 20),),
            const SizedBox(height: 12,),
            const Divider(),
            const SizedBox(height: 16,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image(image: AssetImage(MyImage.locationIconOne),color: MyColor.redColor,),
                const SizedBox(width: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Current location",style: regularTextStyleHintText16.copyWith(color: MyColor.textColor),),
                    Text("2972 Westheimer Rd. Santa Ana, Illinois 85486 ",style: regularTextStyleHintText16.copyWith(color: MyColor.normalGrayColor,fontSize: 12),),
                  ],
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(left: 7),
              height: 40,
              width: 2,
              color: MyColor.buttonColor,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image(image: AssetImage(MyImage.locationIconOne),color: MyColor.buttonColor,),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Office",style: regularTextStyleHintText16.copyWith(color: MyColor.textColor),),
                    Text("1901 Thornridge Cir. Shiloh, Hawaii 81063",style: regularTextStyleHintText16.copyWith(color: MyColor.normalGrayColor,fontSize: 12),),
                  ],
                ),
                const Spacer(),
                Text("2.9Km",style: regularTextStyleHintText16.copyWith(color: MyColor.textColor),)
              ],
            ),
          ],
        ),
      ),
      ),
    );
  }
}
