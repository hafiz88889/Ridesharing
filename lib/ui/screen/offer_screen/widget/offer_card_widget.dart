import 'package:flutter/material.dart';
import 'package:rideshare/config/utils/my_color.dart';
import 'package:rideshare/config/utils/text_style.dart';

class OfferCardWidget extends StatelessWidget {
  final String title1;
  final String title2;

  const OfferCardWidget({super.key,required this.title1,required this.title2});

  @override
  Widget build(BuildContext context) {
    return   Container(
      margin: EdgeInsets.only(bottom: 24),
      padding: EdgeInsets.symmetric(horizontal: 15,vertical: 12),
      height: 70,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: MyColor.primaryColor)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title1,style: regularTextStyleHintText16.copyWith(color: MyColor.offerColor),),
              Text(title2,style: regularTextStyleHintText16.copyWith(color: MyColor.normalGrayColor,fontSize: 12),),
            ],
          ),
          SizedBox(
            height: 43,
            width: 117,
            child: ElevatedButton(onPressed: (){
              // Navigator.pushNamed(context, "/SendVerificationPage");
            },
                style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(MyColor.buttonColor),
                    shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)))
                ),
                child: Text("Collect",style: regularTextStyleHintText16.copyWith(color: MyColor.whiteColor),)),
          ),
        ],
      ),
    );
  }
}
