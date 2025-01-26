import 'package:flutter/material.dart';
import 'package:rideshare/config/utils/custom_image.dart';
import 'package:rideshare/config/utils/my_color.dart';
import 'package:rideshare/config/utils/text_style.dart';
import 'package:rideshare/ui/screen/sign_up_screen/widget/ont_field.dart';

class VeficationPage extends StatelessWidget {
  const VeficationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.whiteColor,
      appBar: AppBar(
        backgroundColor: MyColor.whiteColor,
        scrolledUnderElevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Image(image: AssetImage(MyImage.backIcontop))),
        title: Text(
          "Back",
          style: regularTextStyleHintText16.copyWith(color: MyColor.textColor),
        ),
      ),
      bottomNavigationBar:  Padding(
        padding: const EdgeInsets.all(15.0),
        child: SizedBox(
          height: 54,
          width: 310,
          child: ElevatedButton(onPressed: (){
            Navigator.pushNamed(context, "/SetPasswordPage");
          },
              style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(MyColor.buttonColor),
                  shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)))
              ),
              child: Text("verify",style: regularTextStyleHintText16.copyWith(color: MyColor.whiteColor),)),
        ),
      ),
      body: Padding(padding: const EdgeInsets.all(20),
      child: SingleChildScrollView(
        child:Column(
          children: [
            const SizedBox(height: 10,),
            Center(child: Text("Phone verification",style: regularTextStyle24,)),
            const SizedBox(height: 12,),
            Center(child: Text("Enter your OTP code",style: regularTextStyleHintText16.copyWith(color: MyColor.normalTextColor),)),
            const SizedBox(height: 40,),
            const  Row(
               children: [
                 OntField(),
                  SizedBox(width: 10,),
                 OntField(),
                  SizedBox(width: 10,),
                 OntField(),
                  SizedBox(width: 10,),
                 OntField(),
                  SizedBox(width: 10,),
                 OntField(),
                  SizedBox(width: 10,),
               ],
             ),
            const SizedBox(height: 20,),
            RichText(text: TextSpan(
              text: "Didn’t receive code?  ",style: regularTextStyleHintText16.copyWith(color: MyColor.textColor),
              children: [
                TextSpan(
                  text: "Resend again",style: regularTextStyleHintText16.copyWith(color: MyColor.buttonColor)
                )
              ]
            ))

          ],
        ),
      ),
      ),
    );
  }
}
