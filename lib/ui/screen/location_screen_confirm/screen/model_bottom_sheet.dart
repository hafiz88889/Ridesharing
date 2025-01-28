import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rideshare/config/utils/custom_image.dart';
import 'package:rideshare/config/utils/my_color.dart';
import 'package:rideshare/config/utils/text_style.dart';
import 'package:rideshare/ui/screen/transport_screen/request_rent_screen/widget/select_pay_method_widget.dart';

class ModelBottomSheetLocationScreen extends StatelessWidget {
  const ModelBottomSheetLocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(12.0),
          child:SingleChildScrollView(
            child:  Column(
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
                Text("Your driver is coming in 3:35",style: regularTextStyleHintText16.copyWith(color: MyColor.carNaneColor,fontSize: 18),),
                const SizedBox(height: 15,),
                const Divider(),
                const SizedBox(height: 15,),
                Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                   SizedBox(
                     width: 54,
                     height: 60,
                     child: Container(
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(8),
                         color: MyColor.redColor,
                         image: DecorationImage(image: AssetImage(MyImage.profile),fit: BoxFit.cover)
                       ),
                     ),
                   ),
                    const SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Sergio Ramasis",style: regularTextStyleHintText16.copyWith(color: MyColor.carNaneColor),),
                        const SizedBox(height: 5,),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image(image: AssetImage(MyImage.locationIconOne)),
                            const SizedBox(width: 10,),
                            Text("800m (5mins away)",style: regularTextStyle14,),
                          ],
                        ),
                        const SizedBox(height: 8,),
                        Row(
                          children: [
                            SvgPicture.asset(MyImage.starIcon),
                            Text("4.9 (531 reviews)",style: regularTextStyle14,),

                          ],
                        ),


                      ],
                    ),
                    const Spacer(),
                    Image(image: AssetImage(MyImage.redCarSmall))
                  ],
                ),
                const Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Payment method",style: regularTextStyleHintText16.copyWith(color: MyColor.carNaneColor,),),
                    Text("\$220.00",style: regularTextStyleHintText16.copyWith(color: MyColor.carNaneColor,fontSize: 28),),
                  ],
                ),
                const SizedBox(height: 16,),
                SelectPayMethodWidget(image: MyImage.visa, title1: '**** **** **** 8970', title2: "Expires: 12/26"),
                const SizedBox(height: 32,),
                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 54,
                        child: OutlinedButton(onPressed: (){
                          Navigator.pushNamed(context, "/CallingPage");
                        },
                            style: ButtonStyle(

                                shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8),),)
                            ),
                            child: Text("Call",style: regularTextStyleHintText16.copyWith(color: MyColor.primaryColor),)),
                      ),
                    ),
                    const SizedBox(width: 18,),
                    Expanded(
                      child: SizedBox(
                        height: 54,
                        child: ElevatedButton(onPressed: (){
                         Navigator.pushNamed(context, "/ChattingPage");
                        },
                            style: ButtonStyle(
                                backgroundColor: WidgetStateProperty.all(MyColor.buttonColor),
                                shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)))
                            ),
                            child: Text("Message",style: regularTextStyleHintText16.copyWith(color: MyColor.whiteColor),)),
                      ),
                    ),
                  ],
                )


              ],
            ),
          )
      ),
    );
  }
}
