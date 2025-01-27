import 'package:flutter/material.dart';
import 'package:rideshare/config/utils/custom_image.dart';
import 'package:rideshare/config/utils/my_color.dart';
import 'package:rideshare/config/utils/text_style.dart';

class CardWidget extends StatelessWidget {
  final String image;
  final String title1;
  final String title2;
  final String title3;
  const CardWidget({super.key,required this.image,required this.title1,required this.title2,required this.title3,});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: MyColor.containColor,
          border: Border.all(color: MyColor.primaryColor)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title1,style: regularTextStyleHintText16.copyWith(color: MyColor.carNaneColor),),
              Image(image: AssetImage(image))
            ],
          ),
          Text(title2,style: regularTextStyleHintText16.copyWith(color: MyColor.visibilityTextColor,fontSize: 12),),
          const SizedBox(height: 10,),
          Row(
            children: [
              Image(image: AssetImage(MyImage.locationIconOne)),
              const SizedBox(width: 10,),
              Text(title3,style: regularTextStyleHintText16.copyWith(color: MyColor.carNaneColor,fontSize: 12),),
            ],
          ),
          const SizedBox(height: 24,),
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, "/AvaiablePageTwo");
            },
            child: Container(
              alignment: Alignment.center,
              height: 54,
              width: 340,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: MyColor.primaryColor)
              ),
              child: Text("View car list",style: regularTextStyleHintText16.copyWith(color: MyColor.primaryColor),),
            ),
          )
        ],
      ),
    );
  }
}
