import 'package:flutter/material.dart';
import 'package:rideshare/config/utils/custom_image.dart';
import 'package:rideshare/config/utils/my_color.dart';
import 'package:rideshare/config/utils/text_style.dart';

class WellcomePage extends StatelessWidget {
  const WellcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(padding: const EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 80,),
            Image(image: AssetImage(MyImage.wellCome)),
            const SizedBox(height: 30,),
            Text("Wellcome",style: regularTextStyle24,),
            const SizedBox(height: 12,),
            Text("Have a better sharing experience",style: regularTextStyleHintText16.copyWith(color: MyColor.normalTextColor),),
            const SizedBox(height: 200,),
            SizedBox(
              height: 54,
              width: 310,
              child: ElevatedButton(onPressed: (){
                Navigator.pushNamed(context, "/SignUpPage");
              },
                  style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(MyColor.buttonColor),
                      shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)))
                  ),
                  child: Text("Create an account ",style: regularTextStyleHintText16.copyWith(color: MyColor.whiteColor),)),
            ),
            const SizedBox(height: 20,),
            SizedBox(
              height: 54,
              width: 310,
              child: OutlinedButton(onPressed: (){},
                  style: ButtonStyle(

                      shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)))
                  ),
                  child: Text("Log in",style: regularTextStyleHintText16.copyWith(color: MyColor.buttonColor),)),
            ),
          ],
        ),
      )
      ),
    );
  }
}
