import 'package:flutter/material.dart';
import 'package:rideshare/config/utils/custom_image.dart';
import 'package:rideshare/config/utils/my_color.dart';
import 'package:rideshare/config/utils/text_style.dart';
import 'package:rideshare/ui/screen/offer_screen/widget/offer_card_widget.dart';

class OfferPage extends StatelessWidget {
  const OfferPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.whiteColor,
      appBar: AppBar(
        backgroundColor: MyColor.whiteColor,
        automaticallyImplyLeading: false,
        leading:Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            padding: const  EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: MyColor.buttonColor.withAlpha(100),
            ),
            child: Image(
              image: AssetImage(MyImage.menu),
              height: 25,
              width: 25,
            ),
          ),
        ),
        centerTitle: true,
        title: Text("Offer",style: regularTextStyleHintText16.copyWith(color: MyColor.carNaneColor,fontSize: 20),),
      ),
      body: Padding(padding: EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10,),
            OfferCardWidget(title1: "15% off", title2: "Black Friday"),
            OfferCardWidget(title1: "5% off", title2: "Crismus"),
            OfferCardWidget(title1: "10% off", title2: "Happy New Year"),
            OfferCardWidget(title1: "50% off", title2: "Black Friday"),
            OfferCardWidget(title1: "15% off", title2: "Black Friday"),
            OfferCardWidget(title1: "15% off", title2: "Black Friday"),
            OfferCardWidget(title1: "15% off", title2: "Black Friday"),
            OfferCardWidget(title1: "15% off", title2: "Black Friday"),
            OfferCardWidget(title1: "15% off", title2: "Black Friday"),
            OfferCardWidget(title1: "15% off", title2: "Black Friday"),
            OfferCardWidget(title1: "15% off", title2: "Black Friday"),
            OfferCardWidget(title1: "15% off", title2: "Black Friday"),
          ],
        ),
      ),),
    );
  }
}
