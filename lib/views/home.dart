import 'dart:ui';
import 'package:auto_size_text_pk/auto_size_text_pk.dart';
import 'package:chahatjewel/controllers/data_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marquee_text/marquee_text.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  DataController dataController = Get.put(DataController());
  double screenHeight = 0;
  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    "CHAHAT PRECIOUS JEWELS",
                    style: TextStyle(
                        color: Color(0xff2c5530),
                        fontSize: screenHeight * 0.022,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: screenHeight * 0.012,
            ),
            Container(
              color: Color(0xffD1AF68),
              height: screenHeight * 0.008,
              width: double.infinity,
            ),
            SizedBox(
              height: screenHeight * 0.02,
            ),
            AspectRatio(
              aspectRatio: 16 / 9,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Card(
                  color: Colors.black,
                  child: Obx(
                    () => dataController.bannerRef.isEmpty
                        ? Center(
                            child: CircularProgressIndicator(),
                          )
                        : Image.network(
                            '${dataController.bannerRef[0]['url'].toString()}',
                            fit: BoxFit.cover,
                          ),
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              child: Obx(
                () => MarqueeText(
                  text: dataController.message1.isEmpty
                      ? "Loading"
                      : dataController.message1[0]['messages'].toString(),
                  style: TextStyle(
                    fontSize: screenHeight * 0.026,
                    color: Colors.black,
                  ),
                  speed: 15,
                ),
              ),
            ),
            SizedBox(
              height: screenHeight * 0.01,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                "Live Price",
                style: TextStyle(
                    color: Color(0xff2c5530),
                    fontSize: screenHeight * 0.022,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: screenHeight * 0.008,
              width: MediaQuery.of(context).size.width / 2,
              color: Color(0xffD1AF68),
            ),
            Expanded(
              child: Obx(
                () => ListView(
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    Container(
                      height: screenHeight * 0.077,
                      child: Card(
                        child: buildListTile(
                            'Gold Number/सोना नंबर', 'assets/goldneck.png', 0),
                      ),
                    ),
                    Container(
                      height: screenHeight * 0.077,
                      child: Card(
                        child: buildListTile(
                            'Gold Bar/सोना ब्रेड', 'assets/goldbar.png', 1),
                      ),
                    ),
                    Container(
                      height: screenHeight * 0.077,
                      child: Card(
                        child: buildListTile('Silver Bar/चांदी ब्रेड',
                            'assets/silverbar.png', 2),
                      ),
                    ),
                    Container(
                      height: screenHeight * 0.077,
                      child: Card(
                        child: buildListTile(
                            'RTGS/UPI/सोना ब्रेड', 'assets/upi.png', 3),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              child: Obx(
                () => MarqueeText(
                  text: dataController.message2.isEmpty
                      ? "Loading"
                      : dataController.message2[0]['messages'].toString(),
                  style: TextStyle(
                    fontSize: screenHeight * 0.026,
                    color: Colors.black,
                  ),
                  speed: 15,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  ListTile buildListTile(String item, String location, int index) {
    return ListTile(
      leading: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(
            '$location',
            height: screenHeight * 0.04,
          )),
      title: Column(
        children: [
          AutoSizeText(
            '$item',
            maxLines: 1,
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: screenHeight * 0.018),
          ),
          dataController.rateRef.isEmpty
              ? Text(
                  "Loading",
                  style: TextStyle(
                      color: Colors.red, fontSize: screenHeight * 0.0125),
                )
              : Text(
                  "Last Updated ${dataController.rateRef[0]['lastupdated'].toString()}",
                  style: TextStyle(
                      color: Colors.red, fontSize: screenHeight * 0.0125),
                )
        ],
      ),
      trailing: dataController.rateRef.isEmpty
          ? Text(
              "Loading..",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: screenHeight * 0.026,
              ),
            )
          : Text(
              '₹ ${dataController.rateRef[0]['rates'][index].toString()}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: screenHeight * 0.020,
              ),
            ),
    );
  }
}
