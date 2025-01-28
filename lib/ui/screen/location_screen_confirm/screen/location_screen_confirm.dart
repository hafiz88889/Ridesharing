import 'package:flutter/material.dart';
import 'package:rideshare/config/utils/custom_image.dart';
import 'package:rideshare/ui/screen/home_screen/screen/model_bottom_sheet_one.dart';
import 'package:rideshare/ui/screen/location_screen_confirm/screen/model_bottom_sheet.dart';

class LocationScreenConfirm extends StatelessWidget {
  const LocationScreenConfirm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: (){
          showModalBottomSheet(
            shape:const RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(50),topRight: Radius.circular(50))),
            isScrollControlled: true,
              context: context, builder: (BuildContext context){
            return const FractionallySizedBox(
                 heightFactor: 0.55,
                child: ModelBottomSheetLocationScreen(),

            );
          });
        },
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(MyImage.map), fit: BoxFit.cover)),
        ),
      ),
    );
  }
}
