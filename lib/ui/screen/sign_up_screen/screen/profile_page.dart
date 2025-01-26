import 'package:flutter/material.dart';
import 'package:rideshare/config/utils/custom_image.dart';
import 'package:rideshare/config/utils/my_color.dart';
import 'package:rideshare/config/utils/text_style.dart';
import 'package:rideshare/ui/screen/sign_up_screen/widget/text_field_two.dart';
import 'package:rideshare/ui/screen/sign_up_screen/widget/text_field_widget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.whiteColor,
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
              "Profile",
              style: regularTextStyleHintText16.copyWith(color: MyColor.textColor,fontSize: 18),
            ),
            const Spacer(),
          ],
        ),
      ),
      bottomNavigationBar:  Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: [
            Expanded(
              child: SizedBox(
                height: 54,
                child: OutlinedButton(onPressed: (){
                  //Navigator.pushNamed(context, "/SetPasswordPage");
                },
                    style: ButtonStyle(
                        shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)))
                    ),
                    child: Text("Cancel",style: regularTextStyleHintText16.copyWith(color: MyColor.textColor),)),
              ),
            ),
            const SizedBox(width: 15,),
            Expanded(
              child: SizedBox(
                height: 54,
                child: ElevatedButton(onPressed: (){
                 Navigator.pushNamed(context, "/SignInPage");
                },
                    style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(MyColor.buttonColor),
                        shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)))
                    ),
                    child: Text("Save",style: regularTextStyleHintText16.copyWith(color: MyColor.whiteColor),)),
              ),
            ),
          ],
        ),
      ),

      body: Padding(padding: const EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 10,),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Center(
                  child: SizedBox(
                    height: 121,
                    width: 121,
                    child: CircleAvatar(
                      backgroundColor: MyColor.normalGrayColor,
                    ),
                  ),
                ),
                Positioned(
                 left: 185,
                  top: 100,
                  child: SizedBox(
                    height: 31,
                    width: 31,
                    child: CircleAvatar(
                      backgroundColor: MyColor.buttonColor,
                      child: Image(image: AssetImage(MyImage.camera)),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30,),
            const TextFieldWidget(title: "Full Name"),
            const SizedBox(height: 20,),
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
            const SizedBox(height: 20,),
            const TextFieldWidget(title: "Email"),
            const SizedBox(height: 20,),
            const TextFieldWidget(title: "Street"),
            const SizedBox(height: 20,),
            TextFieldWidgetTwo(
              title: "City",
              icon: Image(image: AssetImage(MyImage.backIconDown)),
              icons: const Text(""),
            ),
            const SizedBox(height: 20,),
            TextFieldWidgetTwo(
              title: "District",
              icon: Image(image: AssetImage(MyImage.backIconDown)),
              icons: const Text(""),
            ),
            const SizedBox(height: 40,),



          ],
        ),
      ),
      ),
    );
  }
}
