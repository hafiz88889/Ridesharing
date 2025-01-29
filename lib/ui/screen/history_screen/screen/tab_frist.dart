import 'package:flutter/material.dart';


class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            child:Column(
              children: [
                CardWidget(),
                const SizedBox(height: 10,),
                CardWidget(),
                const SizedBox(height: 10,),
                CardWidget(),
                const SizedBox(height: 10,),
                CardWidget(),
                const SizedBox(height: 10,),
                CardWidget(),
                const SizedBox(height: 10,),
                CardWidget(),const SizedBox(height: 10,),
                CardWidget(),


              ],
            ),
          ),
        ],
      ),
    );
  }
}
