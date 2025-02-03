import 'package:flutter/material.dart';
import 'package:rideshare/config/utils/custom_image.dart';
import 'package:rideshare/config/utils/my_color.dart';
import 'package:rideshare/config/utils/text_style.dart';

class DeletePage extends StatelessWidget {
  const DeletePage({super.key});

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
          "Delet Account",
          style: regularTextStyleHintText16.copyWith(color: MyColor.textColor,fontSize: 18),
        ),
      ),
      backgroundColor: MyColor.whiteColor,
      body: Padding(padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 10,),
              Text("Are you sure you want to delete your account? Please read how account deletion will affect. Deleting your account removes personal information our database. Tour email becomes permanently reserved and same email cannot be re-use to register a new account.",
                style: regularTextStyleHintText16.copyWith(color: MyColor.carNaneColor),
              ),
              const SizedBox(height: 32,),
              SizedBox(
                height: 54,
                width: 340,
                child: ElevatedButton(onPressed: (){
                 // Navigator.pushNamed(context, "/SendVerificationPage");
                },
                    style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(MyColor.redColor),
                        shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)))
                    ),
                    child: Text("Delete",style: regularTextStyleHintText16.copyWith(color: MyColor.whiteColor),)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
