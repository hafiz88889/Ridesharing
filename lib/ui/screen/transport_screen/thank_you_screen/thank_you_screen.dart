import 'package:flutter/material.dart';
import 'package:rideshare/config/utils/custom_image.dart';
import 'package:rideshare/config/utils/my_color.dart';
import 'package:rideshare/config/utils/text_style.dart';

class ThankYouScreen extends StatelessWidget {
  const ThankYouScreen({super.key});

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
          child: IconButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Image(image: AssetImage(MyImage.backIcontop),
                height: 30,
                width: 30,)),
        ),
        title: Row(
          children: [
            Text(
              "Back",
              style: regularTextStyleHintText16.copyWith(
                  color: MyColor.textColor),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SizedBox(
          height: 54,
          child: ElevatedButton(onPressed: (){
          Navigator.pushNamed(context, "/LocationScreenConfirm");
          },
              style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(MyColor.buttonColor),
                  shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)))
              ),
              child: Text("Confirm Ride",style: regularTextStyleHintText16.copyWith(color: MyColor.whiteColor),)),
        ),
      ),
      body: SingleChildScrollView(
      child: Center(
      child: Column(
    children: [
    const SizedBox(height: 250,),
    Image(image: AssetImage(MyImage.paymentComplete),),
    const SizedBox(height: 24,),
    Text("Thank you",style: regularTextStyleHintText16.copyWith(color: MyColor.carNaneColor,fontSize: 20),),
    Text("Your booking has been placed sent to \n               Md. Sharif Ahmed",style: regularTextStyleHintText16.copyWith(color: MyColor.carNaneColor,fontSize: 12),),
    ],
    ),
    ),
    ),
    );
  }
}
