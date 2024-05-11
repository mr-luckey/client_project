import 'package:client_project/Screens/mainscree.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:get/utils.dart';

class offerscreen extends StatefulWidget {
  const offerscreen({super.key});

  @override
  State<offerscreen> createState() => _offerscreenState();
}

class _offerscreenState extends State<offerscreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Center(
                child: Column(
      children: [
        appbar('Offers'),
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
        offers(
            'Red Hot Nails',
            '3 in one Special Discount Offer',
            'Red With white combination',
            '50% off',
            'https://th.bing.com/th/id/OIP.jjMUaIW1GG-qhbvleEjpFwHaHa?rs=1&pid=ImgDetMain')
      ],
    ))));
  }

  Widget offers(String title1, title2, title3, title4, imglink) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(10),
        ),
        width: Get.width,
        height: Get.height * 0.15,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: Get.height * 0.02,
                ),
                Text("$title1"),
                Text("$title2"),
                Text("$title3"),
                Text('$title4'),
              ],
            ),
            Image.network(
              "$imglink",
              height: Get.height * 0.1,
              width: Get.width * 0.3,
            ),
          ],
        ),
      ),
    );
  }

  Widget appbar(String title) {
    return AppBar(
      title: Text(title),
    );
  }
}
