import 'package:flutter/material.dart';
import 'package:rideshare/config/utils/custom_image.dart';
import 'package:rideshare/config/utils/my_color.dart';
import 'package:rideshare/config/utils/text_style.dart';
import 'package:rideshare/ui/global_widget/text_field_widget.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({super.key});

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}
bool _obsecureText1=true;
bool _obsecureText2=true;
bool _obsecureText3=true;
class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          "Change Password",
          style: regularTextStyleHintText16.copyWith(color: MyColor.textColor,fontSize: 18),
        ),
      ),
      backgroundColor: MyColor.whiteColor,
      body: Padding(padding: const EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 10,),
            GlobalTextFieldWidget(hintText: "Old password",suffix:  IconButton(onPressed: (){
              setState(() {
                _obsecureText1=! _obsecureText1;
              });
            },
                icon: Image(image: AssetImage(_obsecureText1?MyImage.visibilityON:MyImage.visibilityOFF),height: 20,width: 20,))),
            const SizedBox(height: 16,),
            GlobalTextFieldWidget(hintText: "New password",suffix:  IconButton(onPressed: (){
              setState(() {
                _obsecureText2=! _obsecureText2;
              });
            },
                icon: Image(image: AssetImage(_obsecureText2?MyImage.visibilityON:MyImage.visibilityOFF),height: 20,width: 20,))),
            const SizedBox(height: 16,),
            GlobalTextFieldWidget(hintText: "Confirm password",suffix:  IconButton(onPressed: (){
              setState(() {
                _obsecureText3=! _obsecureText3;
              });
            },
                icon: Image(image: AssetImage(_obsecureText3?MyImage.visibilityON:MyImage.visibilityOFF),height: 20,width: 20,))),
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
