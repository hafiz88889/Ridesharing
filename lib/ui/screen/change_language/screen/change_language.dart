import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rideshare/config/utils/custom_image.dart';
import 'package:rideshare/config/utils/my_color.dart';
import 'package:rideshare/config/utils/text_style.dart';
import 'package:rideshare/ui/screen/change_language/widget/change_language_card_widget.dart';

class ChangeLanguage extends StatefulWidget {
  const ChangeLanguage({super.key});

  @override
  State<ChangeLanguage> createState() => _ChangeLanguageState();
}

class _ChangeLanguageState extends State<ChangeLanguage> {
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
          "Change Language",
          style: regularTextStyleHintText16.copyWith(color: MyColor.textColor,fontSize: 18),
        ),
      ),
      backgroundColor: MyColor.whiteColor,
      body: Padding(padding: EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 10,),
            ChangeLanguageCardWidget(image: MyImage.flag, title1: "English", title2: "English"),
            ChangeLanguageCardWidget(image: MyImage.bdFlag, title1: "Bangla", title2: "Bengali"),
            ChangeLanguageCardWidget(image: MyImage.flag, title1: "English", title2: "English"),
            ChangeLanguageCardWidget(image: MyImage.flag, title1: "English", title2: "English"),
            ChangeLanguageCardWidget(image: MyImage.flag, title1: "English", title2: "English"),
            ChangeLanguageCardWidget(image: MyImage.flag, title1: "English", title2: "English"),
            ChangeLanguageCardWidget(image: MyImage.flag, title1: "English", title2: "English"),
            ChangeLanguageCardWidget(image: MyImage.flag, title1: "English", title2: "English"),
            ChangeLanguageCardWidget(image: MyImage.flag, title1: "English", title2: "English"),
            ChangeLanguageCardWidget(image: MyImage.flag, title1: "English", title2: "English"),
            ChangeLanguageCardWidget(image: MyImage.flag, title1: "English", title2: "English"),
            ChangeLanguageCardWidget(image: MyImage.flag, title1: "English", title2: "English"),
            ChangeLanguageCardWidget(image: MyImage.flag, title1: "English", title2: "English"),
            ChangeLanguageCardWidget(image: MyImage.flag, title1: "English", title2: "English"),
            ChangeLanguageCardWidget(image: MyImage.flag, title1: "English", title2: "English"),
            ChangeLanguageCardWidget(image: MyImage.flag, title1: "English", title2: "English"),
            ChangeLanguageCardWidget(image: MyImage.flag, title1: "English", title2: "English"),
          ],
        ),
      ),
      ),
    );
  }
}
