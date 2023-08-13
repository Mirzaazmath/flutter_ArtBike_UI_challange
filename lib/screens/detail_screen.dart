import 'package:flutter/material.dart';
import 'package:flutter_vector_bike/utils/text_utlis.dart';
class DetailScreen extends StatelessWidget {
   DetailScreen({super.key});

   List<String>items=["top speed","engine","weight"];
   List<String>items2=["120 mph","350 cc","150 kg"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
         Expanded(
           child: Stack(
             children: [
               Row(
                 children: [
                   Expanded(child: SafeArea(child:  Padding(
                     padding: const EdgeInsets.all(20),
                     child: TextUtil(text: "ART\nBIKE",size: 60,weight: true,color:const  Color(0xff6e8280),),
                   )),
                   ),
                   Container(
                     width: 100,
                     height: 260,
                     decoration: BoxDecoration(
                       color: Theme.of(context).primaryColor,
                       borderRadius: const BorderRadius.only(topLeft: Radius.circular(20))
                     ),
                   )
                 ],
               ),
              Positioned(
                bottom: 0,
                  right: -160,
                  child: SizedBox(
                    height: 270,
                      child: Hero(
                        tag: "0",
                          child: Image.asset("assets/bike.png",scale: 1,))))
             ],
           ),
         ),
            Expanded(
            child: Padding(
              padding:const  EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextUtil(text: "THE ART BIKE",weight: true,size: 25,),
                const Spacer(),
                  TextUtil(text: "A MOTORCYCLE,OFTEN CALLED A MOTERBIKE,BIKE OR CYCLE, IS A TW0-OR THREE-WHEELED MOTOR VEHICLE.[1] MOTORCYCLE DESIGN VARIES GREATLY TO SUIT A RANGE OF DIFFERENT PURPOSES",weight: true,color:const  Color(0xffabb6b6),size: 15,),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                      for(int i=0;i<items.length;i++)...[
                        Container(
                          height: 55,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              boxShadow:const  [
                                BoxShadow(
                                    color: Color(0xff4f6361),
                                    offset: Offset(0,10),
                                    blurRadius: 10
                                )
                              ],
                              color: Theme.of(context).primaryColor
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextUtil(text: items[i].toUpperCase(),size: 11,weight: true,),
                             const  SizedBox(height: 2,),
                              TextUtil(text: items2[i].toUpperCase(),size: 15,weight: true,)
                            ],
                          ),

                        ),

                      ]
                    ],
                  ),
                  const Spacer(),
                  Row(
                    children: [



                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(color: Colors.white),


                            color:const  Color(0xffe8e4e3)
                        ),
                        child:  Icon(Icons.lock_outline,color: Theme.of(context).primaryColor),
                      ),
                      const SizedBox(width: 20,),
                      Expanded(
                        child: Container(
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              boxShadow:const  [
                                BoxShadow(
                                    color: Color(0xff4f6361),
                                    offset: Offset(0,10),
                                    blurRadius: 10
                                )
                              ],
                              color: Theme.of(context).primaryColor
                          ),
                          alignment: Alignment.center,
                          child: TextUtil(text: "ADD TO CART",weight: true,),


                        ),
                      ),

                    ],
                  ),

                ],
              ),
            ),

          )
        ],

      )

    );
  }
}
