import 'package:flutter/material.dart';
import 'package:rideshare/config/utils/custom_image.dart';
import 'package:rideshare/config/utils/my_color.dart';
import 'package:rideshare/config/utils/text_style.dart';
import 'package:rideshare/ui/screen/sign_up_screen/widget/outline_button_widget.dart';
import 'package:rideshare/ui/screen/sign_up_screen/widget/text_field_two.dart';
import 'package:rideshare/ui/screen/sign_up_screen/widget/text_field_widget.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}
bool isSelect=false;
class _SignUpPageState extends State<SignUpPage> {
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
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Text(
                "Sign up with your email or phone number",
                style: regularTextStyle24,
              ),
              const SizedBox(
                height: 30,
              ),
              const TextFieldWidget(
                title: "Name",
              ),
              const SizedBox(
                height: 20,
              ),
              const TextFieldWidget(
                title: "Email",
              ),
              const SizedBox(
                height: 20,
              ),
              TextFieldWidgetTwo(
                title: "01867221168",
                icon: const Text(""),
                icons: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Image(image: AssetImage(MyImage.bdFlag)),
                      const SizedBox(
                        width: 10,
                      ),
                      Image(image: AssetImage(MyImage.backIconDown))
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFieldWidgetTwo(
                title: "Gender",
                icon: Image(image: AssetImage(MyImage.backIconDown)),
                icons: const Text(""),
              ),
              const SizedBox(height: 20,),
              Row(
                children: [
                  Checkbox(value: isSelect, onChanged: (value){
                    setState(() {
                      isSelect=value!;
                    });
                  },shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),activeColor: MyColor.buttonColor,),
                  const SizedBox(width: 12,),
                 RichText(text: TextSpan(
                   text: "By signing up. you agree to th",style: regularTextStyleHintText16.copyWith(fontSize: 12),
                   children: [
                     TextSpan(
                       text: "Terms of service",style: regularTextStyleHintText16.copyWith(color: MyColor.buttonColor,fontSize: 12)
                     ),
                     TextSpan(
                       text: "and\n",style: regularTextStyleHintText16.copyWith(fontSize: 12),
                     ),
                     TextSpan(
                       text: "Privacy policy.",style: regularTextStyleHintText16.copyWith(color: MyColor.buttonColor,fontSize: 12)
                     )
                   ]
                 ),
                 )
                ],
              ),
              const SizedBox(height: 40,),
              SizedBox(
                height: 54,
                width: 310,
                child: ElevatedButton(onPressed: (){
                  Navigator.pushNamed(context, "/VeficationPage");
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
              OutlineButtonWidget(image: MyImage.gMailIcon, title: "Sign up with Gmail"),
              const SizedBox(height: 20,),
              OutlineButtonWidget(image: MyImage.faceBook, title: "Sign up with Facebook"),
              const SizedBox(height: 20,),
              OutlineButtonWidget(image: MyImage.appleIcon, title: "Sign up with Apple"),
              const SizedBox(height: 10,),
             RichText(text: TextSpan(
               text: "Already have an account? ",style: regularTextStyleHintText16.copyWith(color: MyColor.carNaneColor),
               children: [
                 TextSpan(
                   text: " Sign in",style: regularTextStyleHintText16.copyWith(color: MyColor.buttonColor)
                 )
               ]
             ),
             )

            ],
          ),
        ),
      ),
    );
  }
}
