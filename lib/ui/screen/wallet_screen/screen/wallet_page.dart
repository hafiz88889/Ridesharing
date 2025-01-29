import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rideshare/config/utils/custom_image.dart';
import 'package:rideshare/config/utils/my_color.dart';
import 'package:rideshare/config/utils/text_style.dart';
import 'package:rideshare/ui/screen/wallet_screen/widget/balance_widget.dart';
import 'package:rideshare/ui/screen/wallet_screen/widget/transection_widget.dart';

class WalletPage extends StatelessWidget {
  const WalletPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 40),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 34,
                    width: 34,
                    padding: const  EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: MyColor.buttonColor.withAlpha(100),
                    ),
                    child: Image(
                      image: AssetImage(MyImage.menu),
                      height: 30,
                      width: 30,
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, "/NotificationPage");
                    },
                    child: Container(
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
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: (){Navigator.pushNamed(context, "/AddMoneyPage");},
                    child: Container(
                      alignment: Alignment.center,
                      height: 54,
                      width: 171,
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: MyColor.primaryColor)
                      ),
                      child: Text("Add Money",style: regularTextStyleHintText16.copyWith(color: MyColor.primaryColor),),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 30,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BalanceWidget(title1: "\$500", title2: "Available Balance"),
                  const SizedBox(width: 20,),
                  BalanceWidget(title1: "\$200", title2: "Total Expend"),
                ],
              ),
              const SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 Text("Transections",style: regularTextStyleHintText16.copyWith(color: MyColor.carNaneColor),),
                 Text("See All",style: regularTextStyleHintText16.copyWith(color: MyColor.primaryColor,fontSize: 12),),
                ],
              ),
              const SizedBox(height: 15,),
              TransectionWidget(image: MyImage.sendMoneyIcon, title1: "Walton", title2: "Today at 09:20 am", title3: "\$-570.00",color: MyColor.redColor,),
              TransectionWidget(image: MyImage.recivedMoneyIcon, title1: "Walton", title2: "Today at 09:20 am", title3: "\$+570.00",color: MyColor.primaryColor,),
              TransectionWidget(image: MyImage.sendMoneyIcon, title1: "Walton", title2: "Today at 09:20 am", title3: "\$-570.00",color: MyColor.redColor,),
              TransectionWidget(image: MyImage.sendMoneyIcon, title1: "Walton", title2: "Today at 09:20 am", title3: "\$-570.00",color: MyColor.redColor,),
              TransectionWidget(image: MyImage.recivedMoneyIcon, title1: "Walton", title2: "Today at 09:20 am", title3: "\$+570.00",color: MyColor.primaryColor,),
              TransectionWidget(image: MyImage.recivedMoneyIcon, title1: "Walton", title2: "Today at 09:20 am", title3: "\$+570.00",color: MyColor.primaryColor,),

           ],
          ),
        ),
      ),
    );
  }
}
