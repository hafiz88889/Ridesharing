import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rideshare/config/utils/custom_image.dart';
import 'package:rideshare/config/utils/my_color.dart';
import 'package:rideshare/config/utils/text_style.dart';
import 'package:rideshare/ui/global_widget/text_field_widget.dart';
import 'package:rideshare/ui/screen/home_screen/widget/place_location_widget.dart';
import 'package:rideshare/ui/screen/sign_up_screen/widget/text_field_two.dart';

class ModelBottomSheetOne extends StatelessWidget {
  const ModelBottomSheetOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child:SingleChildScrollView(
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Spacer(),
                  Container(
                    height: 5,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: MyColor.greyColor
                    ),
                  ),
                  const Spacer(),
                  IconButton(onPressed: (){Navigator.pop(context);}, icon: SvgPicture.asset(MyImage.closeIocn))
                ],
              ),
              const SizedBox(height: 30,),
              Text("Select address",style: regularTextStyleHintText16.copyWith(color: MyColor.blackColor,fontSize: 20),),
              const SizedBox(height: 12,),
              const Divider(),
              const SizedBox(height: 16,),
              GlobalTextFieldWidget(
                hintText: "From",prefix: Padding(
                padding: const EdgeInsets.all(15.0),
                child: SvgPicture.asset(MyImage.directionIcon),
              ),),
              const SizedBox(height: 16,),
              GlobalTextFieldWidget(
                hintText: "To",prefix: Padding(
                padding: const EdgeInsets.all(15.0),
                child: SvgPicture.asset(MyImage.locationIconTwo),
              ),),
              const SizedBox(height: 16,),
              const Divider(),
              const SizedBox(height: 20,),
              Text("Recent places",style: regularTextStyleHintText16.copyWith(color: MyColor.carNaneColor),),
              const SizedBox(height: 10,),
              const PlaceLocationWidget(title1: "Office", title2: "2972 Westheimer Rd. Santa Ana, Illinois 85486 ", title3: "2.7km"),
              const SizedBox(height: 15,),
              PlaceLocationWidget(title1: "Office", title2: "2972 Westheimer Rd. Santa Ana, Illinois 85486 ", title3: "2.7km"),
              const SizedBox(height: 15,),
              PlaceLocationWidget(title1: "Office", title2: "2972 Westheimer Rd. Santa Ana, Illinois 85486 ", title3: "2.7km"),
              const SizedBox(height: 15,),
              PlaceLocationWidget(title1: "Office", title2: "2972 Westheimer Rd. Santa Ana, Illinois 85486 ", title3: "2.7km"),
              const SizedBox(height: 15,),
              PlaceLocationWidget(title1: "Office", title2: "2972 Westheimer Rd. Santa Ana, Illinois 85486 ", title3: "2.7km"),


            ],
          ),
        )
      ),
    );
  }
}
