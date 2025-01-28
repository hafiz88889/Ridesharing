import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rideshare/config/utils/custom_image.dart';
import 'package:rideshare/config/utils/my_color.dart';
import 'package:rideshare/config/utils/text_style.dart';
import 'package:rideshare/ui/screen/payment_screen/screen/botto_sheet_page.dart';
import 'package:rideshare/ui/screen/transport_screen/request_rent_screen/widget/select_pay_method_widget.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.whiteColor,
      appBar: AppBar(
        backgroundColor: MyColor.whiteColor,
        scrolledUnderElevation: 0,
        leading:
        ConstrainedBox(
          constraints: const BoxConstraints.tightFor(width: 40), // Custom width
          child:IconButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Image(image: AssetImage(MyImage.backIcontop),height: 30,width: 30,)),
        ),
        title: Row(
          children: [
            Text(
              "Back",
              style: regularTextStyleHintText16.copyWith(color: MyColor.textColor),
            ),
            const Spacer(),
            Text(
              "Payment",
              style: regularTextStyleHintText16.copyWith(color: MyColor.textColor,fontSize: 18),
            ),
            const Spacer(),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SizedBox(
          height: 54,
          child: ElevatedButton(onPressed: (){
            showDialog(
              context: context,
              builder: (context)=>AlertDialog(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                backgroundColor: MyColor.whiteColor,
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
                    Text("Payment Success",style: regularTextStyleHintText16.copyWith(color: MyColor.carNaneColor,fontSize: 22),),
                    const SizedBox(height: 12,),
                    Text("Your money has been successfully sent \nto Sergio Ramasis",style: regularTextStyle14.copyWith(fontSize: 12),),
                    const SizedBox(height: 12,),
                    Text("Amount",style: regularTextStyle14.copyWith(fontSize: 12,color: MyColor.carNaneColor),),
                    const SizedBox(height: 12,),
                    Text("\$220",style: regularTextStyle14.copyWith(fontSize: 34,color: MyColor.carNaneColor),),
                    const Divider(),
                    const SizedBox(height: 20,),
                    Text("How is your trip?",style: regularTextStyle14.copyWith(color: MyColor.carNaneColor),),
                    const SizedBox(height: 8,),
                    Text("Youe feedback will help us to improve your driving experience better",style: regularTextStyle14.copyWith(color: MyColor.carNaneColor,fontSize: 12),),
                    const SizedBox(height: 30,),
                    SizedBox(
                      height: 54,
                      width: 310,
                      child: ElevatedButton(onPressed: (){

                        showModalBottomSheet(
                          isScrollControlled: true,
                            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.only(topRight: Radius.circular(50),topLeft: Radius.circular(50))),
                            context: context, builder: (BuildContext context){
                          return const FractionallySizedBox(
                            heightFactor: 0.65,
                            child:  BottoSheetPage()
                          );
                        });
                      },
                          style: ButtonStyle(
                              backgroundColor: WidgetStateProperty.all(MyColor.buttonColor),
                              shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)))
                          ),
                          child: Text("Please Feedback",style: regularTextStyleHintText16.copyWith(color: MyColor.whiteColor),)),
                    ),
                  ],
                ),
              ),
            );
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
              const SizedBox(height: 10,),
              const Divider(),
              const SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Total",style: regularTextStyle14.copyWith(color: MyColor.carNaneColor),),
                  Text("\$220",style: regularTextStyle14.copyWith(color: MyColor.carNaneColor),),
                ],
              ),
              const SizedBox(height: 30,),
              Text("Select payment method",style: regularTextStyleHintText16.copyWith(fontSize: 18,color: MyColor.carNaneColor),),
              const SizedBox(height: 24,),
              InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, "/WalletPage");
                  },
                  child: SelectPayMethodWidget(image: MyImage.visa, title1: '**** **** **** 8970', title2: "Expires: 12/26")),
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
