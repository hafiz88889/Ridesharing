import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rideshare/config/utils/custom_image.dart';
import 'package:rideshare/config/utils/my_color.dart';
import 'package:rideshare/config/utils/text_style.dart';

class OutlineButtonWidget extends StatelessWidget {
  final String image;
  final String title;
  const OutlineButtonWidget({super.key,
  required this.image,
  required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return    OutlinedButton(onPressed: (){},
      style: ButtonStyle(
          shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)))
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           SvgPicture.asset(image),
            const SizedBox(width: 10,),
            Text(title,style: regularTextStyleHintText16.copyWith(color: MyColor.carNaneColor),)

          ],),
      ),
    );
  }
}
