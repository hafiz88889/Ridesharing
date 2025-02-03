import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rideshare/config/utils/custom_image.dart';
import 'package:rideshare/config/utils/my_color.dart';
import 'package:rideshare/config/utils/text_style.dart';
import 'package:rideshare/ui/screen/transport_screen/request_rent_screen/widget/select_pay_method_widget.dart';

class RequestRentPageTwo extends StatelessWidget {
  const RequestRentPageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.whiteColor,
      appBar: AppBar(
        backgroundColor: MyColor.whiteColor,
        scrolledUnderElevation: 0,
        centerTitle: true,
        leadingWidth: 100,
        leading:Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(onPressed: (){Navigator.pop(context);}, icon:Image(image: AssetImage(MyImage.backIcontop),height: 30,width: 30,)),
            const Text("Back")
          ],
        ),
        title: Text(
          "Request for Rent",
          style: regularTextStyleHintText16.copyWith(color: MyColor.textColor,fontSize: 18),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SizedBox(
          height: 54,
          child: ElevatedButton(onPressed: (){
            Navigator.pushNamed(context, "/ThankYouScreen");
          },
              style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(MyColor.buttonColor),
                  shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)))
              ),
              child: Text("Confirm Ride",style: regularTextStyleHintText16.copyWith(color: MyColor.whiteColor),)),
        ),
      ),
      body: Padding(padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                margin: const EdgeInsets.only(left: 7),
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
              const SizedBox(height: 30,),
              Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: MyColor.containColor,
                    border: Border.all(color: MyColor.primaryColor)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Mustang Shelby GT",style: regularTextStyleHintText16.copyWith(color: MyColor.carNaneColor),),
                        const SizedBox(height: 10,),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SvgPicture.asset(MyImage.starIcon),
                            const SizedBox(width: 10,),
                            Text("4.9 (531 reviews)",style: regularTextStyle14,),
                          ],
                        ),
                      ],
                    ),
                    Image(image: AssetImage(MyImage.redCarSmall))
                  ],
                ),
              ),
              const SizedBox(height: 16,),
              Text("Charge",style: regularTextStyleHintText16.copyWith(fontSize: 18,color: MyColor.carNaneColor),),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 Text("Mustang/per hours",style: regularTextStyle14.copyWith(color: MyColor.carNaneColor),),
                 Text("\$200",style: regularTextStyle14.copyWith(color: MyColor.carNaneColor),),
                ],
              ),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Vat (5%)",style: regularTextStyle14.copyWith(color: MyColor.carNaneColor),),
                  Text("\$20",style: regularTextStyle14.copyWith(color: MyColor.carNaneColor),),
                ],
              ),
              const SizedBox(height: 30,),
              Text("Select payment method",style: regularTextStyleHintText16.copyWith(fontSize: 18,color: MyColor.carNaneColor),),
              const SizedBox(height: 24,),
              SelectPayMethodWidget(image: MyImage.visa, title1: '**** **** **** 8970', title2: "Expires: 12/26"),
              SelectPayMethodWidget(image: MyImage.masterCard, title1: '**** **** **** 8970', title2: "Expires: 12/26"),
              SelectPayMethodWidget(image: MyImage.payPal, title1: 'mailaddress@mail.com', title2: "Expires: 12/26"),
              SelectPayMethodWidget(image: MyImage.cash, title1: 'Cash', title2: "Expires: 12/26"),

            ],
          ),
        ),
      ),
    );
  }
}
