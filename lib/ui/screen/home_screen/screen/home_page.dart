import 'package:flutter/material.dart';
import 'package:rideshare/config/utils/custom_image.dart';
import 'package:rideshare/config/utils/my_color.dart';
import 'package:rideshare/config/utils/text_style.dart';
import 'package:rideshare/ui/screen/home_screen/widget/text_field.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.whiteColor,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(MyImage.map), fit: BoxFit.cover)),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      height: 34,
                      width: 34,
                      padding: const  EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: MyColor.buttonColor.withAlpha(150),
                      ),
                      child: Image(
                        image: AssetImage(MyImage.menu),
                        height: 30,
                        width: 30,
                      )),
                  Container(
                      height: 34,
                      width: 34,
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: MyColor.whiteColor),
                      child: Image(
                        image: AssetImage(MyImage.notification),
                        height: 30,
                        width: 30,
                      )),
                ],
              ),
              const SizedBox(
                height: 140,
              ),
              Container(
                padding: const EdgeInsets.all(7),
                height: 224,
                width: 224,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: MyColor.primaryColor.withAlpha(15)),
                child: SizedBox(
                  height: 150,
                  width: 150,
                  child: Container(
                    padding: const EdgeInsets.all(7),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: MyColor.primaryColor.withAlpha(25)),
                    child: Container(
                      padding: const EdgeInsets.all(7),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: MyColor.primaryColor.withAlpha(35)),
                      child: Container(
                          padding: const EdgeInsets.all(7),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: MyColor.primaryColor.withAlpha(50)),
                          child: Image(
                            image: AssetImage(MyImage.location),
                            height: 15,
                            width: 15,
                            color: MyColor.textColor,
                          )),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 70,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 54,
                    width: 172,
                    child: ElevatedButton(
                        onPressed: () {
                          // Navigator.pushNamed(context, "/SetNewPassword");
                        },
                        style: ButtonStyle(
                            backgroundColor:
                                WidgetStateProperty.all(MyColor.buttonColor),
                            shape: WidgetStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)))),
                        child: Text(
                          "Rental",
                          style: regularTextStyleHintText16.copyWith(
                              color: MyColor.whiteColor),
                        )),
                  ),
                  Container(
                      height: 34,
                      width: 34,
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: MyColor.whiteColor),
                      child: Image(
                        image: AssetImage(MyImage.direction),
                        height: 30,
                        width: 30,
                      )),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: MyColor.buttonColor.withAlpha(50)),
                child: Column(
                  children: [
                    HomeTextField(
                        title: "Where would you go?",
                        icons: Image(image: AssetImage(MyImage.search)),
                        icon: Image(image: AssetImage(MyImage.love))),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: SizedBox(
                            height: 48,
                            child: ElevatedButton(
                                onPressed: () {
                                  // Navigator.pushNamed(context, "/SetNewPassword");
                                },
                                style: ButtonStyle(
                                    backgroundColor: WidgetStateProperty.all(
                                        MyColor.buttonColor),
                                    shape: WidgetStateProperty.all(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(8)))),
                                child: Text(
                                  "Transport",
                                  style: regularTextStyleHintText16.copyWith(
                                      color: MyColor.whiteColor),
                                )),
                          ),
                        ),
                        Expanded(
                          child: SizedBox(
                            height: 48,
                            child: OutlinedButton(
                                onPressed: () {
                                  // Navigator.pushNamed(context, "/SetNewPassword");
                                },
                                style: ButtonStyle(
                                    shape: WidgetStateProperty.all(
                                        RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(8)))),
                                child: Text(
                                  "Delivery",
                                  style: regularTextStyleHintText16.copyWith(
                                      color: MyColor.textColor),
                                )),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
