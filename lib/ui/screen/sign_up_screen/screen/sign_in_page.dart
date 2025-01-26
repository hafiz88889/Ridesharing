import 'package:flutter/material.dart';
import 'package:rideshare/config/utils/custom_image.dart';
import 'package:rideshare/config/utils/my_color.dart';
import 'package:rideshare/config/utils/text_style.dart';
import 'package:rideshare/ui/screen/sign_up_screen/widget/outline_button_widget.dart';
import 'package:rideshare/ui/screen/sign_up_screen/widget/set_password_text_field.dart';
import 'package:rideshare/ui/screen/sign_up_screen/widget/text_field_widget.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

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
      body: Padding(padding: const EdgeInsets.all(20),
      child: SingleChildScrollView(
        child:Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Text(
              "Sign in with your email or phone number",
              style: regularTextStyle24,
            ),
            const SizedBox(height: 40,),
            const TextFieldWidget(title: "Email or phone number"),
            const SizedBox(height: 20,),
            SetPasswordTextField(title: "Enter Your Password", icon: Image(image: AssetImage(MyImage.visibilityoff))),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("Forget password?",style: regularTextStyleHintText16.copyWith(color: MyColor.redColor),),
              ],
            ),
            const SizedBox(height: 40,),
            SizedBox(
              height: 54,
              width: 340,
              child: ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, "/SendVerificationPage");
              },
                  style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(MyColor.buttonColor),
                      shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)))
                  ),
                  child: Text("Sign up",style: regularTextStyleHintText16.copyWith(color: MyColor.whiteColor),)),
            ),
            const SizedBox(height: 32,),
            Row(
              children: [
                Image(image: AssetImage(MyImage.line)),
                const SizedBox(width: 10,),
                Text("or",style: regularTextStyle14.copyWith(fontSize: 16),),
                const SizedBox(width: 10,),
                Image(image: AssetImage(MyImage.line)),
              ],
            ),
            const SizedBox(height: 30,),
            OutlineButtonWidget(image: MyImage.gmail, title: "Sign up with Gmail"),
            const SizedBox(height: 20,),
            OutlineButtonWidget(image: MyImage.faceBookIcon, title: "Sign up with Facebook"),
            const SizedBox(height: 20,),
            OutlineButtonWidget(image: MyImage.apple, title: "Sign up with Apple"),
            const SizedBox(height: 10,),
            RichText(text: TextSpan(
                text: "Already have an account? ",style: regularTextStyleHintText16.copyWith(color: MyColor.carNaneColor),
                children: [
                  TextSpan(
                      text: " Sign in",style: regularTextStyleHintText16.copyWith(color: MyColor.buttonColor)
                  )
                ]
            ))
          ],
        ) ,
      ),
      ),
    );

  }
}
