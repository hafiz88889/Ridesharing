import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rideshare/config/utils/custom_image.dart';
import 'package:rideshare/config/utils/my_color.dart';
import 'package:rideshare/config/utils/text_style.dart';
import 'package:rideshare/ui/screen/home_screen/widget/drawer_ite_widget.dart';

class DrawerOption extends StatelessWidget {
  const DrawerOption({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 30,top: 60,),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              InkWell(
                  onTap: (){Navigator.pop(context);},
                  child: Image(image: AssetImage(MyImage.backIcontop))),
              const SizedBox(width: 15,),
              Text("Back",style: regularTextStyleHintText16.copyWith(color: MyColor.carNaneColor),)
            ],
          ),
          const SizedBox(height: 30,),
          SizedBox(
            height: 70,
            width: 70,
            child: CircleAvatar(
              backgroundImage: AssetImage(MyImage.proFileImage),
            ),
          ),
          const SizedBox(height: 18,),
          Text("Nate Samson",style: regularTextStyleHintText16.copyWith(color: MyColor.blackColor),),
          Text("nate@email.con",style: regularTextStyleHintText16.copyWith(color: MyColor.carNaneColor,fontSize: 12),),
          const SizedBox(height: 40,),
          InkWell(
              onTap: (){Navigator.pushNamed(context, "/HistoryPage");},
              child: DrawerIteWidget(image: MyImage.historyIcon, title: "History")),
          const SizedBox(height: 16,),
          const Divider(),
          const SizedBox(height: 16,),
          InkWell(
              onTap: (){
                Navigator.pushNamed(context, "/ComplainPage");
                },
              child: DrawerIteWidget(image: MyImage.complainIcon, title: "Complain")),
          const SizedBox(height: 16,),
          const Divider(),
          const SizedBox(height: 16,),
          InkWell(
              onTap: (){
                Navigator.pushNamed(context, "/RefferelPage");
              },
              child: DrawerIteWidget(image: MyImage.refferalIcon, title: "Referral")),
          const SizedBox(height: 16,),
          const Divider(),
          const SizedBox(height: 16,),
          InkWell(
              onTap: (){
                Navigator.pushNamed(context, "/AboutUs");
              },
              child: DrawerIteWidget(image: MyImage.aboutUsIcon, title: "About Us")),
          const SizedBox(height: 16,),
          const Divider(),
          const SizedBox(height: 16,),
          InkWell(
              onTap: (){
                Navigator.pushNamed(context, "/SettingPage");
              },
              child: DrawerIteWidget(image: MyImage.settingIcon, title: "Settings")),
          const SizedBox(height: 16,),
          const Divider(),
          const SizedBox(height: 16,),
          DrawerIteWidget(image: MyImage.helpAndSupportIcon, title: "Help and Support"),
          const SizedBox(height: 16,),
          const Divider(),
          const SizedBox(height: 16,),
          DrawerIteWidget(image: MyImage.logOutIcon, title: "Logout"),
          const SizedBox(height: 16,),

        ],
      ),
    );
  }
}
