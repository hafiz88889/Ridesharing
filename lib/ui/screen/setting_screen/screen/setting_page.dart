import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rideshare/config/utils/custom_image.dart';
import 'package:rideshare/config/utils/my_color.dart';
import 'package:rideshare/config/utils/text_style.dart';
import 'package:rideshare/ui/screen/setting_screen/widget/card_widget.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

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
          "Setting",
          style: regularTextStyleHintText16.copyWith(color: MyColor.textColor,fontSize: 18),
        ),
      ),
      backgroundColor: MyColor.whiteColor,
      body: Padding(padding: const EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
                onTap: (){
                  Navigator.pushNamed(context, "/ChangePasswordScreen");
                },
                child: CardWidgetSetting(image: MyImage.arrowRight, title1: "Change Password")),
            InkWell(
                onTap: (){Navigator.pushNamed(context, "/ChangeLanguage");},
                child: CardWidgetSetting(image: MyImage.arrowRight, title1: "Change Language")),
            InkWell(
                onTap: (){
                  Navigator.pushNamed(context, "/PrivacyPolicyPage");
                },
                child: CardWidgetSetting(image: MyImage.arrowRight, title1: "Privacy Policy")),
            InkWell(
                onTap: (){
                  Navigator.pushNamed(context, "/ContactUsPage");
                },
                child: CardWidgetSetting(image: MyImage.arrowRight, title1: "Contact Us")),
            InkWell(
                onTap: (){
                  Navigator.pushNamed(context, "/DeletePage");
                },
                child: CardWidgetSetting(image: MyImage.arrowRight, title1: "Delete Account")),
          ],
        ),
      ),
      ),
    );
  }
}
