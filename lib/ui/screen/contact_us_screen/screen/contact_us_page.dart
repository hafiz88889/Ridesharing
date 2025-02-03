import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rideshare/config/utils/custom_image.dart';
import 'package:rideshare/config/utils/my_color.dart';
import 'package:rideshare/config/utils/text_style.dart';
import 'package:rideshare/ui/screen/sign_up_screen/widget/text_field_two.dart';
import 'package:rideshare/ui/screen/sign_up_screen/widget/text_field_widget.dart';
class ContactUsPage extends StatelessWidget {
  const ContactUsPage({super.key});

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
          "Contact us",
          style: regularTextStyleHintText16.copyWith(color: MyColor.textColor,fontSize: 18),
        ),
      ),
      bottomNavigationBar:   Padding(
        padding: const EdgeInsets.all(12.0),
        child: SizedBox(
          height: 54,
          width: 340,
          child: ElevatedButton(onPressed: (){
        //    Navigator.pushNamed(context, "/SendVerificationPage");
          },
              style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(MyColor.buttonColor),
                  shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)))
              ),
              child: Text("Send Message",style: regularTextStyleHintText16.copyWith(color: MyColor.whiteColor),)),
        ),
      ),
      backgroundColor: MyColor.whiteColor,
      body: Padding(padding: const EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 10,),
            Text('Contact us for Ride share',style: regularTextStyleHintText16.copyWith(color: MyColor.blackColor),),
            Text('Address',style: regularTextStyleHintText16.copyWith(color: MyColor.blackColor),),
            const SizedBox(height: 10,),
            Center(child: Text('House# 72, Road# 21, Banani, Dhaka-1213 (near Banani \nBidyaniketon School &\n College, beside University of South Asia) ',textAlign: TextAlign.center,style: regularTextStyleHintText16.copyWith(color: MyColor.normalGrayColor,fontSize: 12),)),
            const SizedBox(height: 20,),
      Text('Call : 13301 (24/7) Email : support@pathao.com',style: regularTextStyleHintText16.copyWith(color: MyColor.normalGrayColor,fontSize: 12),),
            const SizedBox(height: 30,),
            Text('Send Message',style: regularTextStyleHintText16.copyWith(color: MyColor.blackColor),),
            const SizedBox(height: 16,),
            TextFieldWidget(title: "Name"),
            const SizedBox(height: 16,),
            TextFieldWidget(title: "Email"),
            const SizedBox(height: 16,),
            TextFieldTwo(),
            const SizedBox(height: 16,),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
              height: 118,
              width: 362,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: MyColor.greyColor)
              ),
              child: TextField(
                maxLines: 5,
                decoration: InputDecoration(
                    hintText: "Write your text",hintStyle: regularTextStyleHintText16,
                    border: InputBorder.none
                ),
              ),
            ),

          ],
        ),
      ),
      ),
    );
  }
}
