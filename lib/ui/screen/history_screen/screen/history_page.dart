import 'package:flutter/material.dart';
import 'package:rideshare/config/utils/my_color.dart';
import 'package:rideshare/config/utils/text_style.dart';
import 'package:rideshare/ui/screen/history_screen/widget/card_widget.dart';
import 'package:rideshare/ui/screen/offer_screen/screen/offer_page.dart';
import 'package:rideshare/ui/screen/offer_screen/widget/offer_card_widget.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title:  Text(
            'History',
            style: regularTextStyleHintText16.copyWith(color: MyColor.carNaneColor),
          ),
          centerTitle: true,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(40),
            child: Container(
              height: 48,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                border: Border.all(color: MyColor.primaryColor),
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                color: MyColor.containColor
              ),
              child:  TabBar(
                indicatorSize: TabBarIndicatorSize.tab,
                dividerColor: Colors.transparent,
                indicator: BoxDecoration(
                  color: MyColor.primaryColor,
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                labelColor: Colors.white,
                unselectedLabelColor: MyColor.carNaneColor,
                tabs: const [
                  Text("Upcoming"),
                  Text("Completed"),
                  Text("Cancelled"),
                ],
              ),
            ),
          ),
        ),
        body:  const TabBarView(
          children: [
            OfferPage(),
            OfferPage(),
            OfferPage(),
          ],
        ),
      ),
    );
  }
}

