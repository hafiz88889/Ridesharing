import 'package:flutter/material.dart';
import 'package:rideshare/config/utils/custom_image.dart';
import 'package:rideshare/config/utils/my_color.dart';
import 'package:rideshare/config/utils/text_style.dart';
import 'package:rideshare/ui/screen/history_screen/screen/tab_frist.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 3, child: Scaffold(
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
              "History",
              style: regularTextStyleHintText16.copyWith(color: MyColor.textColor,fontSize: 18),
            ),
            const Spacer(),
          ],
        ),
        bottom: TabBar(
          isScrollable: false,
          labelColor: MyColor.primaryColor,
         indicatorColor: MyColor.primaryColor,
            unselectedLabelColor: MyColor.normalGrayColor,
            tabs: [
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              //color: MyColor.primaryColor
            ),
            child:  Text("Upcoming") ,
          ),
          Text("Completed"),
          Text("Cancelled"),
        ]),
      ),
      backgroundColor: MyColor.whiteColor,
      body: TabBarView(children: [
        Container(
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(10),
          child:Column(
            children: [
        Container(
        height: 64,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: MyColor.primaryColor)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Nate",style: regularTextStyle14.copyWith(color: MyColor.blackColor),),
                Text("Mustang Shelby GT",style: regularTextStyle14.copyWith(color: MyColor.normalGrayColor),),
              ],
            ),
            Text("Today at 09:20 am",style: regularTextStyle14.copyWith(fontSize: 12,color: MyColor.blackColor),)
          ],
        ),
      )
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(10),
          child:Column(
            children: [
              Container(
                height: 64,
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: MyColor.primaryColor)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Nate",style: regularTextStyle14.copyWith(color: MyColor.blackColor),),
                        Text("Mustang Shelby GT",style: regularTextStyle14.copyWith(color: MyColor.normalGrayColor),),
                      ],
                    ),
                    Text("Done",style: regularTextStyle14.copyWith(fontSize: 12,color: MyColor.primaryColor),)
                  ],
                ),
              )
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(10),
          child:Column(
            children: [
              Container(
                height: 64,
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: MyColor.primaryColor)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Nate",style: regularTextStyle14.copyWith(color: MyColor.blackColor),),
                        Text("Mustang Shelby GT",style: regularTextStyle14.copyWith(color: MyColor.normalGrayColor),),
                      ],
                    ),
                    Text("Cancel",style: regularTextStyle14.copyWith(fontSize: 12,color: MyColor.redColor),)
                  ],
                ),
              )
            ],
          ),
        ),

      ]),
    ),
    );
  }
}
