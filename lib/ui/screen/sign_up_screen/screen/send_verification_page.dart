import 'package:flutter/material.dart';
import 'package:rideshare/config/utils/custom_image.dart';
import 'package:rideshare/config/utils/my_color.dart';
import 'package:rideshare/config/utils/text_style.dart';
import 'package:rideshare/ui/screen/sign_up_screen/widget/text_field_widget.dart';

class SendVerificationPage extends StatelessWidget {
  const SendVerificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.whiteColor,
      bottomNavigationBar:  Padding(
        padding: const EdgeInsets.all(15.0),
        child: SizedBox(
          height: 54,
          width: 310,
          child: ElevatedButton(onPressed: (){
            Navigator.pushNamed(context, "/PhoneVerificationPage");
          },
              style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(MyColor.buttonColor),
                  shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)))
              ),
              child: Text("Send OTP",style: regularTextStyleHintText16.copyWith(color: MyColor.whiteColor),)),
        ),
      ),
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
      body: Padding(padding: const EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 10,),
            Text(
              "Verifivation email or phone number",
              style: regularTextStyle24,
            ),
            const SizedBox(height: 40,),
            const TextFieldWidget(title: "Email or phone number")
          ],
        ),
      ),
      ),
    );
  }
}
