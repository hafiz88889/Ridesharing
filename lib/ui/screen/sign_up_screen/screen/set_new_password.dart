import 'package:flutter/material.dart';
import 'package:rideshare/config/utils/custom_image.dart';
import 'package:rideshare/config/utils/my_color.dart';
import 'package:rideshare/config/utils/text_style.dart';
import 'package:rideshare/ui/screen/sign_up_screen/widget/set_password_text_field.dart';

class SetNewPassword extends StatelessWidget {
  const SetNewPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.whiteColor,
      bottomNavigationBar:Padding(
        padding: const EdgeInsets.all(15.0),
        child: SizedBox(
          height: 54,
          width: 340,
          child: ElevatedButton(onPressed: (){
           Navigator.pushNamed(context, "/HomePage");
          },
              style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(MyColor.buttonColor),
                  shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)))
              ),
              child: Text("Save",style: regularTextStyleHintText16.copyWith(color: MyColor.whiteColor),)),
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  "Set password",
                  style: regularTextStyle24,
                ),
              ),
              Center(child: Text("Set your password",style: regularTextStyleHintText16.copyWith(color: MyColor.normalTextColor),)),
              const SizedBox(height: 40,),
              SetPasswordTextField(title: "Enter your password", icon: Image(image: AssetImage(MyImage.visibilityoff))),
              const SizedBox(height: 20,),
              SetPasswordTextField(title: "Confirms your password", icon: Image(image: AssetImage(MyImage.visibilityoff))),
              const SizedBox(height: 10,),
              Text("Atleast 1 number or a special character",style: regularTextStyleHintText16.copyWith(fontSize: 14),),
              const SizedBox(height: 43,),
            ],
          ),
        ),
      ),
    );
  }
}
