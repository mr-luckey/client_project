import 'package:client_project/Screens/offers_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';
// import 'package:flutter/widgets.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            appbar('Home'),
            Container(
                width: double.infinity,
                height: Get.height * 0.1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.to(Homescreen());
                        //noavigation to home screen
                      },
                      child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Home"),
                          )),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(offerscreen());
                        //noavigation to offers screen
                      },
                      child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("offers"),
                          )),
                    ),
                  ],
                )),
            // SizedBox(
            //   width: Get.width,
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //     children: [
            //       Text("Home"),
            //       Text("offers"),
            //     ],
            //   ),
            // ),
            Column(
              children: [
                // Tabbar1(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    card('Dark Black', '        + \n Whtie/Red',
                        "https://5.imimg.com/data5/RL/DW/MY-24817566/guill-dor-nagellack-tina-12ml-500x500.jpg"),
                    card('Light Purple', '        + \n Whtie/Red',
                        "https://th.bing.com/th/id/OIP.qcTLBz494k8XFy6CdufFHQHaHa?w=550&h=550&rs=1&pid=ImgDetMain"),
                  ],
                ),
                SizedBox(
                  height: Get.height * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    card('Classic Purple', '        + \n Whtie/Red',
                        'https://th.bing.com/th/id/OIP.jWi60UYYGjPJOREsDXN_HgHaHa?w=500&h=500&rs=1&pid=ImgDetMain'),
                    card('Transparent', '        + \n Whtie/Red',
                        'https://cpimg.tistatic.com/04135856/b/4/Austin-Nail-Paint-Bottle.jpg'),
                  ],
                ),
              ],
            ),
          ]),
        ),
      ),
    ));
  }

  Widget appbar(String title) {
    return AppBar(
      title: Text(title),
    );
  }

  Widget card(String title, String subtitle, String imglink) {
    return Card(
        child: Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Image.network(
            "$imglink",
            height: Get.height * 0.1,
            width: Get.width * 0.3,
          ),

          ///add image here
          Text(
            title,
          ),
          Text(
            subtitle,
          ),
        ],
      ),
    ));
  }

  Widget Tabbar1() {
    return TabBar(
      tabs: [
        Tab(icon: Icon(Icons.directions_car)),
        Tab(icon: Icon(Icons.directions_transit)),
      ],
    );
  }
}
