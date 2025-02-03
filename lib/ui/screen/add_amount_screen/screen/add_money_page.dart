import 'package:flutter/material.dart';
import 'package:rideshare/config/utils/custom_image.dart';
import 'package:rideshare/config/utils/my_color.dart';
import 'package:rideshare/config/utils/text_style.dart';
import 'package:rideshare/ui/screen/sign_up_screen/widget/text_field_widget.dart';
import 'package:rideshare/ui/screen/transport_screen/request_rent_screen/widget/select_pay_method_widget.dart';

class AddMoneyPage extends StatelessWidget {
  const AddMoneyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:Padding(
        padding: const EdgeInsets.all(15.0),
        child: SizedBox(
          height: 54,
          width: MediaQuery.of(context).size.width,
          child: ElevatedButton(onPressed: (){
            Navigator.pushNamed(context, "/AmountSecoundScreen");
          },
              style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(MyColor.buttonColor),
                  shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)))
              ),
              child: Text("Confirm",style: regularTextStyleHintText16.copyWith(color: MyColor.whiteColor),)),
        ),
      ),
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
      body: Padding(padding: EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TextFieldWidget(title: "Enter amount"),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: (){}, child:Text("Add payment Method",style: regularTextStyle14.copyWith(fontSize: 12,color: MyColor.addMoneyColor),)
                )
              ],
            ),
            const SizedBox(height: 13,),
            Text("Select Payment Method",style: regularTextStyleHintText16.copyWith(color: MyColor.carNaneColor),),
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
