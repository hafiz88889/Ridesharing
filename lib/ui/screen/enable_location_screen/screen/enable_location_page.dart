import 'package:flutter/material.dart';
import 'package:rideshare/config/utils/custom_image.dart';
import 'package:rideshare/config/utils/my_color.dart';
import 'package:rideshare/config/utils/text_style.dart';

class EnableLocationPage extends StatelessWidget {
  const EnableLocationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          InkWell(
            onTap: (){
              showDialog(
                context: context,
                builder: (context)=>AlertDialog(
                  backgroundColor: MyColor.whiteColor,
                  title: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(7),
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: MyColor.primaryColor.withAlpha(20)
                        ),
                        child: Container(
                          padding: const EdgeInsets.all(7),
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: MyColor.primaryColor.withAlpha(50)
                          ),
                          child: Container(
                            padding: const EdgeInsets.all(7),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: MyColor.primaryColor.withAlpha(80)
                            ),
                            child: Container(
                                padding: const EdgeInsets.all(7),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: MyColor.primaryColor
                                ),
                                child: Image(image: AssetImage(MyImage.location),height: 15,width: 15,color: MyColor.textColor,)
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 40,),
                      Text("Enable your location",style: regularTextStyle24,),
                      const SizedBox(height: 20,),
                      Text("Choice your location to start find\nrequest around you",style: regularTextStyleHintText16.copyWith(color: MyColor.normalTextColor),),
                      const SizedBox(height: 40,),
                      SizedBox(
                        height: 54,
                        width: 310,
                        child: ElevatedButton(onPressed: (){},
                            style: ButtonStyle(
                                backgroundColor: WidgetStateProperty.all(MyColor.buttonColor),
                                shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)))
                            ),
                            child: Text("Use my location",style: regularTextStyleHintText16.copyWith(color: MyColor.whiteColor),)),
                      ),
                      const SizedBox(height: 35,),
                      TextButton(onPressed: (){
                        Navigator.pushNamed(context,"/WellcomePage");
                      }, child: Text("Skip for now",style: regularTextStyleHintText16.copyWith(color: MyColor.visibilityTextColor),))
                    ],
                  ),
                ),
              );
            },
            child: Container(
              padding: const EdgeInsets.all(12),
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(MyImage.mapImage),fit: BoxFit.cover)
              ),
            ),
          )
        ],
      ),
    );
  }
}
