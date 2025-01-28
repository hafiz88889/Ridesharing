import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rideshare/config/utils/custom_image.dart';
import 'package:rideshare/config/utils/my_color.dart';
import 'package:rideshare/config/utils/text_style.dart';
import 'package:rideshare/ui/screen/transport_screen/available_car_screen/widget/available_car_two_widget.dart';
import 'package:rideshare/ui/screen/transport_screen/available_car_screen/widget/card_widget.dart';

class AvaiablePageTwo extends StatelessWidget {
  const AvaiablePageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Back",style: regularTextStyleHintText16.copyWith(color: MyColor.textColor),),
        leading: IconButton(onPressed: (){}, icon: Image(image: AssetImage(MyImage.backIcontop)),
        ),
      ),
      body: Padding(padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              Text("Avaiable cars for ride",style: regularTextStyle24,),
              const SizedBox(height: 5,),
              Text("18 cars found",style: regularTextStyleHintText16,),
              const SizedBox(height: 30,),
              InkWell(
                  onTap: (){Navigator.pushNamed(context,"/CarDetailsPage");},
                  child: CardWidgetTwo(image: MyImage.whiteCar, title1: "BMW Cabrio", title2: "Automatic   |   3 seats   |   Octane", title3: "800m (5mins away)")),
              const SizedBox(height: 20,),
              CardWidgetTwo(image: MyImage.whiteCar, title1: "BMW Cabrio", title2: "Automatic   |   3 seats   |   Octane", title3: "800m (5mins away)"),
              const SizedBox(height: 20,),
              CardWidgetTwo(image: MyImage.whiteCar, title1: "BMW Cabrio", title2: "Automatic   |   3 seats   |   Octane", title3: "800m (5mins away)"),
              const SizedBox(height: 20,),
              CardWidgetTwo(image: MyImage.whiteCar, title1: "BMW Cabrio", title2: "Automatic   |   3 seats   |   Octane", title3: "800m (5mins away)"),
              const SizedBox(height: 20,),
              CardWidgetTwo(image: MyImage.whiteCar, title1: "BMW Cabrio", title2: "Automatic   |   3 seats   |   Octane", title3: "800m (5mins away)"),
              const SizedBox(height: 20,),
              CardWidgetTwo(image: MyImage.whiteCar, title1: "BMW Cabrio", title2: "Automatic   |   3 seats   |   Octane", title3: "800m (5mins away)")

            ],
          ),
        ),
      ),
    );
  }
}
