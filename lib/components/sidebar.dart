import 'package:flutter/material.dart';

import '../utils/text_utlis.dart';
class SideBarWidget extends StatelessWidget {
   SideBarWidget({super.key});


  List<String> categorylist=["Best Sale","Popular","New Arrival"];

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding:const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
      height: double.infinity,
      width: 100,
      decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius:const  BorderRadius.only(topRight: Radius.circular(30),
              bottomRight: Radius.circular(30))
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 180,),
          for(int i=0;i<categorylist.length;i++)...[
          RotatedBox(

              quarterTurns: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextUtil(text: categorylist[i],weight: true,color: i==1?Colors.white: const  Color(0xffa3bab6),size: 16,),
                  const   SizedBox(height: 8,),
                  Container(
                      width: 20,
                      height: 4,
                      color: i==1? const Color(0xffa3bab6):Colors.transparent
                  )
                ],
              ))],
          const SizedBox(height: 20,),

        ],

      ),
    );
  }
}
