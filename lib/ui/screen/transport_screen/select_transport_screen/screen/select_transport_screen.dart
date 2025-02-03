import 'package:flutter/material.dart';
import 'package:rideshare/config/utils/custom_image.dart';
import 'package:rideshare/config/utils/my_color.dart';
import 'package:rideshare/config/utils/text_style.dart';

class SelectTransportScreen extends StatefulWidget {
  const SelectTransportScreen({super.key});
  @override
  State<SelectTransportScreen> createState() => _SelectTransportScreenState();
}
List<Product>productList=[
  Product(image: MyImage.vectorCar, title: "Car"),
  Product(image: MyImage.vectorBike, title: "Bike"),
  Product(image: MyImage.cycle, title: "Cycle"),
  Product(image: MyImage.taxi, title: "Taxi"),
];
class _SelectTransportScreenState extends State<SelectTransportScreen> {
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
            "Select Transport                                                                                                                                      ",
            style: regularTextStyleHintText16.copyWith(color: MyColor.textColor,fontSize: 18),
          ),
        ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
        ),
        itemCount:productList.length,
        itemBuilder: (context, index) {
          Product product=productList[index];
          return InkWell(
            onTap: (){
              Navigator.pushNamed(context, "/AvaiablePage");
            },
            child: Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
              color: MyColor.containColor,
                border: Border.all(color: MyColor.primaryColor)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(image: AssetImage(product.image)),
                  Text(product.title,style: regularTextStyleHintText16.copyWith(color: MyColor.textColor),)
                ],
              )
            ),
          );
        },
      )
    );
  }
}
class Product {
  final String image;
  final String title;

  Product({ required this.image,required this.title});
}
