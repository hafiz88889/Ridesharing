import 'package:flutter/material.dart';
import 'package:rideshare/config/utils/my_color.dart';
import 'package:rideshare/config/utils/text_style.dart';
import 'package:rideshare/ui/screen/history_screen/widget/card_widget.dart';
import 'package:rideshare/ui/screen/offer_screen/screen/offer_page.dart';

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
        body: const TabBarView(
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


// import 'package:flutter/material.dart';
// import 'package:rideshare/config/utils/my_color.dart';
// import 'package:rideshare/config/utils/text_style.dart';
//
// class HistoryPage extends StatefulWidget {
//   const HistoryPage({super.key});
//
//   @override
//   State<HistoryPage> createState() => _HistoryPageState();
// }
// TabController tabController=TabController(length: 3, vsync: this);
// class _HistoryPageState extends State<HistoryPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           SizedBox(height: 50,),
//           Card(
//             shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//             elevation: 5,
//             child: Container(
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(12),
//                 color: MyColor.blackColor.withAlpha(100)
//               ),
//               child: TabBar(
//                   indicator: BoxDecoration(
//                     borderRadius: BorderRadius.circular(12),
//                     color: MyColor.primaryColor,
//                   ),
//                   controller: tabController,
//                   isScrollable: true,
//                   labelPadding: EdgeInsets.symmetric(horizontal: 30),
//                   tabs: [
//                     Tab(child: Text("Missed",style: regularTextStyleHintText16.copyWith(color: MyColor.blackColor),),),
//                     Tab(child: Text("Missed",style: regularTextStyleHintText16.copyWith(color: MyColor.blackColor),),),
//                     Tab(child: Text("Missed",style: regularTextStyleHintText16.copyWith(color: MyColor.blackColor),),),
//               ]),
//             ),
//           ),
//           TabBarView(
//               controller: tabController,
//               children: [
//                 ListView.builder(
//                     shrinkWrap: true,
//                     itemCount: 15,
//                     itemBuilder: (context,index){
//                       return Card(
//                         margin: EdgeInsets.symmetric(horizontal: 30,vertical: 10),
//                         child: ListTile(
//                           leading: Icon(Icons.call_missed,color: MyColor.redColor,),
//                           title: Text("Person${index+1}"),
//                           subtitle: Text("Missed from person${index=1}"),
//                           trailing: Icon(Icons.phone_callback,color: MyColor.primaryColor,),
//                         ),
//                       );
//                     },
//                 ),
//                 ListView.builder(
//                   shrinkWrap: true,
//                   itemCount: 15,
//                   itemBuilder: (context,index){
//                     return Card(
//                       margin: EdgeInsets.symmetric(horizontal: 30,vertical: 10),
//                       child: ListTile(
//                         leading: Icon(Icons.call_missed,color: MyColor.redColor,),
//                         title: Text("Person${index+1}"),
//                         subtitle: Text("Missed from person${index=1}"),
//                         trailing: Icon(Icons.phone_callback,color: MyColor.primaryColor,),
//                       ),
//                     );
//                   },
//                 ),
//                 ListView.builder(
//                   shrinkWrap: true,
//                   itemCount: 15,
//                   itemBuilder: (context,index){
//                     return Card(
//                       margin: EdgeInsets.symmetric(horizontal: 30,vertical: 10),
//                       child: ListTile(
//                         leading: Icon(Icons.call_missed,color: MyColor.redColor,),
//                         title: Text("Person${index+1}"),
//                         subtitle: Text("Missed from person${index=1}"),
//                         trailing: Icon(Icons.phone_callback,color: MyColor.primaryColor,),
//                       ),
//                     );
//                   },
//                 )
//               ])
//         ],
//       ),
//     );
//   }
// }
