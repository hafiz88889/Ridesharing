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
          "Offer",
          style: regularTextStyleHintText16.copyWith(color: MyColor.textColor,fontSize: 18),
        ),
      ),
      body: const Padding(padding: EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10,),
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
