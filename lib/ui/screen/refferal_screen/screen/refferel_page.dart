import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rideshare/config/utils/custom_image.dart';
import 'package:rideshare/config/utils/my_color.dart';
import 'package:rideshare/config/utils/text_style.dart';
import 'package:rideshare/ui/global_widget/text_field_widget.dart';

class RefferelPage extends StatelessWidget {
  const RefferelPage({super.key});

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
          "Referral",
          style: regularTextStyleHintText16.copyWith(color: MyColor.textColor,fontSize: 18),
        ),
      ),
      backgroundColor: MyColor.whiteColor,
      body: Padding(padding: const EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10,),
            Text("Refer a friend and Earn \$20",style: regularTextStyleHintText16.copyWith(color: MyColor.carNaneColor),),
            const SizedBox(height: 10,),
            GlobalTextFieldWidget(hintText: "RHfktkf",suffix: Padding(
              padding: const EdgeInsets.all(10.0),
              child: SvgPicture.asset(MyImage.copyIcon),
            ),),
            const SizedBox(height: 30,),
            SizedBox(
              height: 54,
              width: 340,
              child: ElevatedButton(onPressed: (){
               // Navigator.pushNamed(context, "/AboutUs");
              },
                  style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(MyColor.buttonColor),
                      shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)))
                  ),
                  child: Text("Invite",style: regularTextStyleHintText16.copyWith(color: MyColor.whiteColor),)),
            ),
          ],
        ),
      ),
      ),
    );
  }
}
