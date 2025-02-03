import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rideshare/config/utils/custom_image.dart';
import 'package:rideshare/config/utils/my_color.dart';
import 'package:rideshare/config/utils/text_style.dart';
import 'package:rideshare/ui/screen/payment_screen/widget/tips_widget.dart';

class BottoSheetPage extends StatelessWidget {
  const BottoSheetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: MyColor.whiteColor,
      padding: const EdgeInsets.all(12),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(width: 50,) ,
              Container(
                height: 4,
                width: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: MyColor.greyColor
                ),
              ),
              InkWell(
                onTap: (){Navigator.pop(context);},
                  child: SvgPicture.asset(MyImage.closeIocn)),

            ],
          ),
          const SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(MyImage.starIcon),
              const SizedBox(width: 10,),
              SvgPicture.asset(MyImage.starIcon),
              const SizedBox(width: 10,),
              SvgPicture.asset(MyImage.starIcon),
              const SizedBox(width: 10,),
              SvgPicture.asset(MyImage.starIcon),
              const SizedBox(width: 10,),
              SvgPicture.asset(MyImage.starIcon),
            ],
          ),
          const SizedBox(height: 24,),
          Text("Excellent",style: regularTextStyle24.copyWith(color: MyColor.primaryColor,fontSize: 20),),
          const SizedBox(height: 10,),
          Text("You rated Sergio Ramasis 4 star",style: regularTextStyle14.copyWith(fontSize: 12),),
          const SizedBox(height: 24,),
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
                hintText: "Write your text",hintStyle: regularTextStyleHintText16,
                border: InputBorder.none
              ),
            ),
          ),
          const SizedBox(height: 24,),
          Text("Give some tips to Sergio Ramasis",style: regularTextStyle24.copyWith(color: MyColor.textColor,fontSize: 16),),
          const SizedBox(height: 24,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TipsWidget(title: "\$1", color: MyColor.greyColor),
              TipsWidget(title: "\$5", color: MyColor.primaryColor),
              TipsWidget(title: "\$10", color: MyColor.greyColor),
              TipsWidget(title: "\$15", color: MyColor.greyColor),
              TipsWidget(title: "\$20", color: MyColor.greyColor),
            ],
          ),
          const SizedBox(height: 12,),
          Text("Enter other amount",style: regularTextStyle24.copyWith(color: MyColor.primaryColor,fontSize: 12),),
          const SizedBox(height: 24,),
          SizedBox(
            height: 54,
            width: 340,
            child: Expanded(
              child: ElevatedButton(onPressed: (){
               showDialog(

                   context: context, builder: (context)=>AlertDialog(
                 title: Column(
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
                     Text("Thank you",style: regularTextStyleHintText16.copyWith(color: MyColor.carNaneColor,fontSize: 22),),
                     const SizedBox(height: 12,),
                     Text("Thank you for your valuable feedback and tip",style: regularTextStyle14.copyWith(fontSize: 12),),
                     const SizedBox(height: 32,),
                     SizedBox(
                       height: 54,
                       width: 340,
                       child: ElevatedButton(onPressed: (){
                         Navigator.pushNamed(context, "/HomePage");
                       },
                           style: ButtonStyle(
                               backgroundColor: WidgetStateProperty.all(MyColor.buttonColor),
                               shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)))
                           ),
                           child: Text("Back home",style: regularTextStyleHintText16.copyWith(color: MyColor.whiteColor),)),
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
          ),
        ],
      ),
    );
  }
}
