import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rideshare/config/utils/custom_image.dart';
import 'package:rideshare/config/utils/my_color.dart';
import 'package:rideshare/config/utils/text_style.dart';
import 'package:rideshare/ui/screen/home_screen/screen/drawer_option.dart';
import 'package:rideshare/ui/screen/home_screen/screen/model_bottom_sheet_one.dart';
import 'package:rideshare/ui/screen/home_screen/screen/select_address_bottomsheet.dart';
import 'package:rideshare/ui/screen/home_screen/widget/navigation_design.dart';
import 'package:rideshare/ui/screen/home_screen/widget/text_field.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Map<String, dynamic>> _navItems = [
    {'icon':MyImage.homeIcon, 'label': 'Home'},
    {'icon': MyImage.loveIcon, 'label': 'Favourite'},
    {'icon': MyImage.offerIcon, 'label': 'Offer'},
    {'icon':MyImage.profileIcon, 'label': 'Profile'},
  ];
  var scaffoldKey=GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: MyColor.whiteColor,
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.only(topRight: Radius.circular(100),bottomRight: Radius.circular(100))),
          child: const DrawerOption(),
      ),
      key: scaffoldKey,
      backgroundColor: MyColor.whiteColor,
      bottomNavigationBar: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          // Bottom Navigation Bar
          BottomNavigationBar(
            currentIndex: _selectedIndex,
            onTap: (value) => {

            },
            items: _navItems.map((item) {
              print(item['icon']);
              return BottomNavigationBarItem(
                icon: SvgPicture.asset(item['icon']),
                label: item['label'],
              );
            }).toList(),
            selectedItemColor: MyColor.primaryColor,
            unselectedItemColor: MyColor.textColor,
            showUnselectedLabels: true,
          ),
          // Center Elevated Button (Hexagonal Shape)
          Positioned(
            top: -30, // Adjust the position above the BottomNavigationBar
            child: GestureDetector(
              onTap: () {
                // Center button tapped
                setState(() {
                  _selectedIndex = 2;
                });
              },
              child: ClipPath(
                clipper: HexagonClipper(),
                child: InkWell(
                  onTap: () {Navigator.pushNamed(context, "/OfferPage");},
                  child: Container(
                    padding: EdgeInsets.all(15),
                    color: Colors.green,
                    height: 60,
                    width: 60,
                    child: SvgPicture.asset(MyImage.walletIon)
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(MyImage.map), fit: BoxFit.cover)),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: (){
                        scaffoldKey.currentState?.openDrawer();
                      },
                      child: Container(
                        height: 34,
                        width: 34,
                        padding: const  EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: MyColor.buttonColor.withAlpha(150),
                        ),
                        child: Image(
                          image: AssetImage(MyImage.menu),
                          height: 30,
                          width: 30,
                        ),
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
                const SizedBox(
                  height: 140,
                ),
                Container(
                  padding: const EdgeInsets.all(7),
                  height: 224,
                  width: 224,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: MyColor.primaryColor.withAlpha(15)),
                  child: SizedBox(
                    height: 150,
                    width: 150,
                    child: Container(
                      padding: const EdgeInsets.all(7),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: MyColor.primaryColor.withAlpha(25)),
                      child: Container(
                        padding: const EdgeInsets.all(7),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: MyColor.primaryColor.withAlpha(35)),
                        child: Container(
                            padding: const EdgeInsets.all(7),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: MyColor.primaryColor.withAlpha(50)),
                            child: Image(
                              image: AssetImage(MyImage.location),
                              height: 15,
                              width: 15,
                              color: MyColor.textColor,
                            )),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 70,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 54,
                      width: 172,
                      child: ElevatedButton(
                          onPressed: () {
                             Navigator.pushNamed(context, "/SelectTransportScreen");
                          },
                          style: ButtonStyle(
                              backgroundColor:
                              WidgetStateProperty.all(MyColor.buttonColor),
                              shape: WidgetStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8)))),
                          child: Text(
                            "Rental",
                            style: regularTextStyleHintText16.copyWith(
                                color: MyColor.whiteColor),
                          )),
                    ),
                    Container(
                        height: 34,
                        width: 34,
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: MyColor.whiteColor),
                        child: Image(
                          image: AssetImage(MyImage.direction),
                          height: 30,
                          width: 30,
                        )),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: MyColor.buttonColor.withAlpha(50)),
                  child: Column(
                    children: [
                      HomeTextField(
                          title: "Where would you go?",
                          icons: Image(image: AssetImage(MyImage.search)),
                          icon: Image(image: AssetImage(MyImage.love))),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: SizedBox(
                              height: 48,
                              child: ElevatedButton(
                                  onPressed: () {
                                    showModalBottomSheet(
                                        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20))),
                                        isScrollControlled: true,
                                        context: context, builder: (BuildContext context){
                                      return const FractionallySizedBox(
                                        heightFactor: 0.75,
                                        child: ModelBottomSheetOne(),
                                      );
                                    });
                                  },
                                  style: ButtonStyle(
                                      backgroundColor: WidgetStateProperty.all(
                                          MyColor.buttonColor),
                                      shape: WidgetStateProperty.all(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                              BorderRadius.circular(8)))),
                                  child: Text(
                                    "Transport",
                                    style: regularTextStyleHintText16.copyWith(
                                        color: MyColor.whiteColor),
                                  )),
                            ),
                          ),
                          Expanded(
                            child: SizedBox(
                              height: 48,
                              child: OutlinedButton(
                                  onPressed: () {
                                    showModalBottomSheet(context: context, builder: (BuildContext context){
                                      return FractionallySizedBox(
                                        heightFactor: 0.75,
                                      // child:  Container(
                                      //   height: double.infinity,
                                      //   width: double.infinity,
                                      //   //color: MyColor.whiteColor,
                                      // ),
                                        child: SelectAddressBottomsheet(),
                                      );

                                    });
                                  },
                                  style: ButtonStyle(
                                      shape: WidgetStateProperty.all(
                                          RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(8)))),
                                  child: Text(
                                    "Delivery",
                                    style: regularTextStyleHintText16.copyWith(
                                        color: MyColor.textColor),
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      )
    );
  }
}
