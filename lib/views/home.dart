import 'dart:ui';
import 'package:auto_size_text_pk/auto_size_text_pk.dart';
import 'package:chahatjewel/controllers/data_controller.dart';
import 'package:chahatjewel/utils/colors_file.dart';
import 'package:flutter/material.dart';
import 'package:flutter_card_swipper/flutter_card_swiper.dart';
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
                        color: AppColors.fontColor,
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
              color: AppColors.marginColor,
              height: screenHeight * 0.008,
              width: double.infinity,
            ),
            SizedBox(
              height: screenHeight * 0.02,
            ),
            AspectRatio(
              aspectRatio: 16 / 9,
              child: Obx(
                () => dataController.bannerRef.isEmpty
                    ? Container(
                        child: Center(
                          child: CircularProgressIndicator(),
                        ),
                      )
                    : Swiper(
                        autoplay: true,
                        itemCount: dataController.bannerRef.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Card(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.network(
                                dataController.bannerRef[index]['url']
                                    .toString(),
                                fit: BoxFit.fill,
                              ),
                            ),
                          );
                        },
                      ),
              ),
            ),

            // child: CarouselSlider.builder(
            //   itemCount: dataController.bannerRef.length,
            //   itemBuilder: (BuildContext context, int itemIndex, _) =>
            //       Container(
            //     child: Image.network(
            //         dataController.bannerRef[itemIndex].toString()),

            // child: ClipRRect(
            //   borderRadius: BorderRadius.circular(20),
            //   child: Card(
            //     child: Obx(
            //         ()=>
            //       // () => dataController.bannerRef.isEmpty
            //       //     ? Center(
            //       //         child: CircularProgressIndicator(),
            //       //       )
            //       //     : Image.network(
            //       //         '${dataController.bannerRef[0]['url'].toString()}',
            //       //         fit: BoxFit.cover,
            //       //       ),
            //     ),
            //   ),
            // ),

            Container(
              width: double.infinity,
              child: Obx(
                () => MarqueeText(
                  text: dataController.message1.isEmpty
                      ? "Loading"
                      : dataController.message1[0]['messages'].toString(),
                  style: TextStyle(
                    fontSize: screenHeight * 0.026,
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
                    color: AppColors.fontColor,
                    fontSize: screenHeight * 0.022,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: screenHeight * 0.008,
              width: MediaQuery.of(context).size.width / 2,
              color: AppColors.marginColor,
            ),
            Expanded(
              child: Obx(() => ListView.builder(
                    itemCount: dataController.rateRef.isEmpty
                        ? 0
                        : dataController.rateRef.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: dataController.rateRef.isEmpty
                              ? Text("Loading")
                              : Image.asset(
                                  dataController.rateRef[index]['location']
                                      .toString(),
                                  height: screenHeight * 0.04,
                                ),
                        ),
                        title: Column(
                          children: [
                            AutoSizeText(
                              dataController.rateRef.isEmpty
                                  ? "Loading"
                                  : dataController.rateRef[index]['item']
                                      .toString(),
                              maxLines: 1,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: screenHeight * 0.018),
                            ),
                            dataController.rateRef.isEmpty
                                ? Text(
                                    "Loading",
                                    style: TextStyle(
                                        color: AppColors.red,
                                        fontSize: screenHeight * 0.0125),
                                  )
                                : Text(
                                    "Last Updated ${dataController.rateRef[index]['update'].toString()}",
                                    style: TextStyle(
                                        color: AppColors.red,
                                        fontSize: screenHeight * 0.0125),
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
                                '₹ ${dataController.rateRef[index]['price'].toString()}',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: screenHeight * 0.020,
                                ),
                              ),
                      );
                    },
                  )),
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
}
