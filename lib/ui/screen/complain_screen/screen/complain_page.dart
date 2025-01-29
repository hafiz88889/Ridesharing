import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rideshare/config/utils/custom_image.dart';
import 'package:rideshare/config/utils/my_color.dart';
import 'package:rideshare/config/utils/text_style.dart';
import 'package:rideshare/ui/screen/sign_up_screen/widget/text_field_two.dart';

class ComplainPage extends StatelessWidget {
  const ComplainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.whiteColor,
      appBar: AppBar(
        backgroundColor: MyColor.whiteColor,
        scrolledUnderElevation: 0,
        leading:
        IconButton(
            padding: EdgeInsets.zero,
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Image(image: AssetImage(MyImage.backIcontop),height: 30,width: 30,)),
        title: Row(
          children: [
            Text(
              "Back",
              style: regularTextStyleHintText16.copyWith(color: MyColor.textColor),
            ),
            const Spacer(),
            Text(
              "Complain",
              style: regularTextStyleHintText16.copyWith(color: MyColor.textColor,fontSize: 18),
            ),
            const Spacer(),
          ],
        ),
      ),
      body: Padding(padding: const EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 10,),
            TextFieldWidgetTwo(title: "Vehicle not clean", icons: Text(""), icon:Image(image: AssetImage(MyImage.backIconDown))),
            const SizedBox(height: 16,),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
              height: 118,
              width: 362,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: MyColor.greyColor)
              ),
              child: TextField(
                maxLines: 5,
                decoration: InputDecoration(
                    hintText: "Write your complain here (minimum 10 characters)",hintStyle: regularTextStyleHintText16,
                    border: InputBorder.none
                ),
              ),
            ),
            const SizedBox(height: 32,),
            SizedBox(
              height: 54,
              width: 340,
              child: ElevatedButton(onPressed: (){
             showDialog(context: context, builder: (context)=>AlertDialog(
               backgroundColor: MyColor.whiteColor,
               shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
               title:Column(
                 children: [
                   Row(
                     mainAxisAlignment: MainAxisAlignment.end,
                     children: [
                       InkWell(
                           onTap: (){Navigator.pop(context);},
                           child: SvgPicture.asset(MyImage.closeIocn))
                     ],
                   ),
                   Image(image: AssetImage(MyImage.paymentComplete)),
                   const SizedBox(height: 23,),
                   Text("Send successful",style: regularTextStyleHintText16.copyWith(color: MyColor.carNaneColor,fontSize: 22),),
                   const SizedBox(height: 12,),
                   Text("Your complain has been send successful",style: regularTextStyle14.copyWith(fontSize: 12),),
                   const SizedBox(height: 30,),
                   SizedBox(
                     height: 54,
                     width: 310,
                     child: ElevatedButton(onPressed: (){
                       //Navigator.pushNamed(context, "/RefferelPage");
                     },
                         style: ButtonStyle(
                             backgroundColor: WidgetStateProperty.all(MyColor.buttonColor),
                             shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)))
                         ),
                         child: Text("Back Home",style: regularTextStyleHintText16.copyWith(color: MyColor.whiteColor),)),
                   ),
                 ],
               ),
             ));
              },
                  style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(MyColor.buttonColor),
                      shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)))
                  ),
                  child: Text("Submit",style: regularTextStyleHintText16.copyWith(color: MyColor.whiteColor),)),
            ),
          ],
        ),
      ),
      ),
    );
  }
}
