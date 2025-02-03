import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rideshare/config/utils/custom_image.dart';
import 'package:rideshare/config/utils/my_color.dart';
import 'package:rideshare/config/utils/text_style.dart';
import 'package:rideshare/ui/global_widget/text_field_widget.dart';

class SetPasswordPage extends StatelessWidget {
  const SetPasswordPage({super.key});

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
             Navigator.pushNamed(context, "/ProfilePage");
          },
              style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(MyColor.buttonColor),
                  shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)))
              ),
              child: Text("Register",style: regularTextStyleHintText16.copyWith(color: MyColor.whiteColor),)),
        ),
      ),
      appBar: AppBar(
        backgroundColor: MyColor.whiteColor,
        scrolledUnderElevation: 0,
        leadingWidth: 100,
        leading:Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(onPressed: (){Navigator.pop(context);}, icon:Image(image: AssetImage(MyImage.backIcontop),height: 30,width: 30,)),
            const Text("Back")
          ],
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
            GlobalTextFieldWidget(hintText: "Enter our password",suffix: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(MyImage.visibilityOffIcon),
            )),
            const SizedBox(height: 20,),
            GlobalTextFieldWidget(hintText: "Enter our password",suffix: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(MyImage.visibilityOffIcon),
            )),
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
