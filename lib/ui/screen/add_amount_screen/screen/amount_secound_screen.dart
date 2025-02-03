import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rideshare/config/utils/custom_image.dart';
import 'package:rideshare/config/utils/my_color.dart';
import 'package:rideshare/config/utils/text_style.dart';
import 'package:rideshare/ui/global_widget/text_field_widget.dart';
import 'package:rideshare/ui/screen/sign_up_screen/widget/text_field_two.dart';
import 'package:rideshare/ui/screen/sign_up_screen/widget/text_field_widget.dart';
import 'package:rideshare/ui/screen/transport_screen/request_rent_screen/widget/select_pay_method_widget.dart';

class AmountSecoundScreen extends StatelessWidget {
  const AmountSecoundScreen({super.key});

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
          "Amount",
          style: regularTextStyleHintText16.copyWith(color: MyColor.textColor,fontSize: 18),
        ),
      ),
      body: Padding(padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GlobalTextFieldWidget(hintText: "Select Payment Method",suffix: Padding(
                padding: const EdgeInsets.all(12.0),
                child: SvgPicture.asset(MyImage.downArrowIcon),
              ),),
              const SizedBox(height: 16,),
             const GlobalTextFieldWidget(hintText: "Account Number"),
              const SizedBox(height: 24,),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: SizedBox(
                  height: 54,
                  width: MediaQuery.of(context).size.width,
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
                            Text("Add Success",style: regularTextStyleHintText16.copyWith(color: MyColor.carNaneColor,fontSize: 22),),
                            const SizedBox(height: 12,),
                            Text("Your money has been add successfully ",style: regularTextStyle14.copyWith(fontSize: 12),),
                            const SizedBox(height: 12,),
                            Text("Amount",style: regularTextStyle14.copyWith(fontSize: 12,color: MyColor.carNaneColor),),
                            const SizedBox(height: 12,),
                            Text("\$220",style: regularTextStyle14.copyWith(fontSize: 34,color: MyColor.carNaneColor),),
                            const SizedBox(height: 30,),
                            SizedBox(
                              height: 54,
                              width: 310,
                              child: ElevatedButton(onPressed: (){
                                Navigator.pushNamed(context, "/HomePage");
                              },
                                  style: ButtonStyle(
                                      backgroundColor: WidgetStateProperty.all(MyColor.buttonColor),
                                      shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)))
                                  ),
                                  child: Text("Back Home",style: regularTextStyleHintText16.copyWith(color: MyColor.whiteColor),)),
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
                      child: Text("Confirm",style: regularTextStyleHintText16.copyWith(color: MyColor.whiteColor),)),
                ),
              ),
              const SizedBox(height: 30,),
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
