import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rideshare/config/utils/custom_image.dart';
import 'package:rideshare/config/utils/my_color.dart';
import 'package:rideshare/config/utils/text_style.dart';
import 'package:rideshare/ui/screen/change_password/widget/change_pass_text_field_widget.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({super.key});

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}
class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              "Change Password",
              style: regularTextStyleHintText16.copyWith(color: MyColor.textColor,fontSize: 18),
            ),
            const Spacer(),
          ],
        ),
      ),
      backgroundColor: MyColor.whiteColor,
      body: Padding(padding: EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 10,),
            ChangePassTextFieldWidget(title: "Old Password"),
            const SizedBox(height: 16,),
            ChangePassTextFieldWidget(title: "New Password"),
            const SizedBox(height: 16,),
            ChangePassTextFieldWidget(title: "Confirm Password"),
            const SizedBox(height: 30,),
            SizedBox(
              height: 54,
              width: 340,
              child: ElevatedButton(onPressed: (){
              //  Navigator.pushNamed(context, "/SendVerificationPage");
              },
                  style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(MyColor.buttonColor),
                      shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)))
                  ),
                  child: Text("Save",style: regularTextStyleHintText16.copyWith(color: MyColor.whiteColor),)),
            ),

          ],
        ),
      ),
      ),
    );
  }
}
