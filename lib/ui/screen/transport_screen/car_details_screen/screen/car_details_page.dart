import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rideshare/config/utils/custom_image.dart';
import 'package:rideshare/config/utils/my_color.dart';
import 'package:rideshare/config/utils/text_style.dart';
import 'package:rideshare/ui/screen/transport_screen/car_details_screen/widget/car_features_widget.dart';
import 'package:rideshare/ui/screen/transport_screen/car_details_screen/widget/row_widget.dart';

class CarDetailsPage extends StatefulWidget {
  const CarDetailsPage({super.key});

  @override
  State<CarDetailsPage> createState() => _CarDetailsPageState();
}
List<String>imageList=[
 " assets/images/Apple.png"
 " assets/images/backIcon.png"
  "assets/images/backIconarrow.png"
  "assets/images/backIcondown.png"
  "assets/images/bdflag.png"
];
class _CarDetailsPageState extends State<CarDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.whiteColor,
      appBar: AppBar(
        backgroundColor: MyColor.whiteColor,
        scrolledUnderElevation: 0,
        title: Text("Back",style: regularTextStyleHintText16.copyWith(color: MyColor.textColor),),
        leading: IconButton(onPressed: (){}, icon: Image(image: AssetImage(MyImage.backIcontop)),
        ),
      ),
      bottomNavigationBar:  Padding(
        padding: const EdgeInsets.only(left: 10,right: 10,bottom: 10),
        child: Row(
          children: [
            Expanded(
              child: SizedBox(
                height: 54,
                child: OutlinedButton(onPressed: (){
                  //Navigator.pushNamed(context, "/SetNewPassword");
                },
                    style: ButtonStyle(

                        shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)))
                    ),
                    child: Text("Book later",style: regularTextStyleHintText16.copyWith(color: MyColor.primaryColor),)),
              ),
            ),
            const SizedBox(width: 10,),
            Expanded(
              child: SizedBox(
                height: 54,
                child: ElevatedButton(onPressed: (){
                  Navigator.pushNamed(context, "/RequestRent");
                },
                    style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(MyColor.buttonColor),
                        shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)))
                    ),
                    child: Text("Ride Now",style: regularTextStyleHintText16.copyWith(color: MyColor.whiteColor),)),
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Padding(padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10,),
              Text("Mustang Shelby GT",style: regularTextStyle24,),
              const SizedBox(height: 10,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SvgPicture.asset(MyImage.starIcon),
                  const SizedBox(width: 10,),
                  Text("4.9 (531 reviews)",style: regularTextStyle14,),
                ],
              ),
              SizedBox(
                height: 180,
                child: CarouselView(
                  shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                    itemExtent: MediaQuery.of(context).size.width-32,
                    itemSnapping: true,
                    elevation: 0,
                    padding:  const EdgeInsets.all(10),
                    children: [
                      Image(image: AssetImage(MyImage.redCarSmall),fit: BoxFit.cover,),
                      Image(image: AssetImage(MyImage.whiteCar),fit: BoxFit.cover,),
                      Image(image: AssetImage(MyImage.sendMoneyIcon),fit: BoxFit.cover,),
                      Image(image: AssetImage(MyImage.redCarSmall),fit: BoxFit.cover,),
                      Image(image: AssetImage(MyImage.redCarSmall),fit: BoxFit.cover,),
                    ],
                ),
              ),
              Text("Specifications",style: regularTextStyleHintText16.copyWith(fontSize: 18,color: MyColor.carNaneColor),),
              const SizedBox(height: 16,),
              Row(
                children: [
                  RowWidget(image: MyImage.batteryIcon, title1: "Max Power", title2: "2500hp"),
                  RowWidget(image: MyImage.batteryIcon, title1: "Fuel", title2: "10km per litre"),
                  RowWidget(image: MyImage.batteryIcon, title1: "Max. speed", title2: "230kph"),
                  RowWidget(image: MyImage.kiloMeterIcon, title1: "0-60mph", title2: "2.5sec"),
                ],
              ),
              const SizedBox(height: 30,),
              Text("Car features",style: regularTextStyleHintText16.copyWith(fontSize: 18,color: MyColor.carNaneColor),),
              const SizedBox(height: 16,),
              const CarFeaturesWidget(title1: "Model", title2: "GT5000"),
              const CarFeaturesWidget(title1: "Capacity", title2: "760hp"),
              const CarFeaturesWidget(title1: "Color", title2: "Red"),
              const CarFeaturesWidget(title1: "Fuel type", title2: "Octane"),
              const CarFeaturesWidget(title1: "Gear type", title2: "Automatic"),

            ],
          ),
        ),
        ),
      ),
    );
  }
}
