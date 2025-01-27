import 'package:flutter/material.dart';
import 'package:rideshare/config/utils/custom_image.dart';
import 'package:rideshare/config/utils/my_color.dart';
import 'package:rideshare/config/utils/text_style.dart';
import 'package:rideshare/ui/screen/notification_screen/widget/boxWidget.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

bool isSelect = true;

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.whiteColor,
      appBar: AppBar(
        backgroundColor: MyColor.whiteColor,
        scrolledUnderElevation: 0,
        centerTitle: true,
        title: Text(
          "Notification",
          style: regularTextStyleHintText16.copyWith(
              color: MyColor.blackColori, fontSize: 18),
        ),
        leading: Row(
          children: [
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                padding: EdgeInsets.zero,
                icon: Image(
                  image: AssetImage(MyImage.backIcontop),
                  height: 15,
                  width: 15,
                )),
            Text(
              "Back",
              style: regularTextStyleHintText16.copyWith(
                  color: MyColor.blackColori),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              Text(
                "Today ",
                style: regularTextStyle14.copyWith(color: MyColor.blackColor),
              ),
              const SizedBox(
                height: 23,
              ),
              BoxwidgetWhite(
                  boxColor: MyColor.containColor,
                  title1: "Payment confirm",
                  title2:
                      "Lorem ipsum dolor sit amet consectetur. Ultrici es tincidunt eleifend vitae",
                  title3: "15 min ago."),
              const SizedBox(
                height: 15,
              ),
              BoxwidgetWhite(
                  boxColor: MyColor.whiteColor,
                  title1: "Payment confirm",
                  title2:
                      "Lorem ipsum dolor sit amet consectetur. Ultrici es tincidunt eleifend vitae",
                  title3: "15 min ago."),
              const SizedBox(height: 20,),
              Text(
                "Yesterday ",
                style: regularTextStyle14.copyWith(color: MyColor.blackColor),
              ),
              const SizedBox(
                height: 15,
              ),
              BoxwidgetWhite(
                  boxColor: MyColor.containColor,
                  title1: "Payment confirm",
                  title2:
                  "Lorem ipsum dolor sit amet consectetur. Ultrici es tincidunt eleifend vitae",
                  title3: "15 min ago."),
              const SizedBox(
                height: 15,
              ),
              BoxwidgetWhite(
                  boxColor: MyColor.whiteColor,
                  title1: "Payment confirm",
                  title2:
                  "Lorem ipsum dolor sit amet consectetur. Ultrici es tincidunt eleifend vitae",
                  title3: "15 min ago."),
              const SizedBox(
                height: 15,
              ),
              BoxwidgetWhite(
                  boxColor: MyColor.whiteColor,
                  title1: "Payment confirm",
                  title2:
                  "Lorem ipsum dolor sit amet consectetur. Ultrici es tincidunt eleifend vitae",
                  title3: "15 min ago."),
              const SizedBox(
                height: 15,
              ),
              BoxwidgetWhite(
                  boxColor: MyColor.containColor,
                  title1: "Payment confirm",
                  title2:
                  "Lorem ipsum dolor sit amet consectetur. Ultrici es tincidunt eleifend vitae",
                  title3: "15 min ago."),
            ],
          ),
        ),
      ),
    );
  }
}
