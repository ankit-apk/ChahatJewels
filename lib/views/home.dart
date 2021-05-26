import 'dart:ui';
import 'package:chahatjewel/controllers/data_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marquee_text/marquee_text.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  DataController d = Get.put(DataController());
  double sH = 0;
  @override
  Widget build(BuildContext context) {
    sH = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 8, right: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "CHAHAT PRECIOUS JEWELS",
                    style: TextStyle(
                        color: Color(0xff2c5530),
                        fontSize: sH * 0.022,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: sH * 0.012,
              ),
              Container(
                color: Color(0xffD1AF68),
                height: sH * 0.008,
                width: double.infinity,
              ),
              SizedBox(
                height: sH * 0.02,
              ),
              AspectRatio(
                aspectRatio: 16 / 9,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: Card(
                      color: Colors.black,
                      child: ClipRRect(
                        child: Obx(
                          () => d.bannerRef.isEmpty
                              ? Center(
                                  child: CircularProgressIndicator(),
                                )
                              : Image.network(
                                  '${d.bannerRef[0]['url'].toString()}',
                                  fit: BoxFit.fill,
                                ),
                          // () => d.bannerRef.isEmpty
                          //     ? Center(
                          //         child: CircularProgressIndicator(),
                          //       )
                          //     : CachedNetworkImage(
                          //         imageUrl: d.bannerRef[0]['url'].toString(),
                          //         placeholder: (context, url) =>
                          //             Image.asset('assets/ph.png'),
                          //         errorWidget: (context, url, error) =>
                          //             Icon(Icons.error),
                          //         fit: BoxFit.fill,
                          //       ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                child: Obx(
                  () => MarqueeText(
                    text: d.message1.isEmpty
                        ? "Loading"
                        : d.message1[0]['messages'].toString(),
                    style: TextStyle(
                      fontSize: sH * 0.026,
                      color: Colors.black,
                    ),
                    speed: 15,
                  ),
                ),
              ),
              SizedBox(
                height: sH * 0.01,
              ),
              Text(
                "Live Price",
                style: TextStyle(
                    color: Color(0xff2c5530),
                    fontSize: sH * 0.022,
                    fontWeight: FontWeight.bold),
              ),
              Container(
                height: sH * 0.008,
                width: MediaQuery.of(context).size.width / 2,
                color: Color(0xffD1AF68),
              ),
              Expanded(
                child: Obx(
                  () => ListView(
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      Container(
                        height: sH * 0.075,
                        child: Card(
                          child: ListTile(
                            leading: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                  'assets/goldneck.png',
                                  height: sH * 0.04,
                                )),
                            title: Column(
                              children: [
                                Text(
                                  'Gold Number/सोना नंबर',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: sH * 0.02),
                                ),
                                d.rateRef.isEmpty
                                    ? Text(
                                        "Loading",
                                        style: TextStyle(
                                            color: Colors.red,
                                            fontSize: sH * 0.013),
                                      )
                                    : Text(
                                        "Last Updated ${d.rateRef[0]['lastupdated'].toString()}",
                                        style: TextStyle(
                                            color: Colors.red,
                                            fontSize: sH * 0.013),
                                      )
                              ],
                            ),
                            trailing: d.rateRef.isEmpty
                                ? Text(
                                    "Loading..",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: sH * 0.026,
                                    ),
                                  )
                                : Text(
                                    '₹ ${d.rateRef[0]['rates'][0].toString()}',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: sH * 0.026,
                                    ),
                                  ),
                          ),
                        ),
                      ),
                      Container(
                        height: sH * 0.075,
                        child: Card(
                          child: ListTile(
                            leading: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                  'assets/goldbar.png',
                                  height: sH * 0.04,
                                )),
                            title: Column(
                              children: [
                                Text(
                                  'Gold Bar/सोना ब्रेड',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: sH * 0.02),
                                ),
                                d.rateRef.isEmpty
                                    ? Text(
                                        "Loading",
                                        style: TextStyle(
                                            color: Colors.red,
                                            fontSize: sH * 0.013),
                                      )
                                    : Text(
                                        "Last Updated ${d.rateRef[0]['lastupdated'].toString()}",
                                        style: TextStyle(
                                            color: Colors.red,
                                            fontSize: sH * 0.013),
                                      )
                              ],
                            ),
                            trailing: d.rateRef.isEmpty
                                ? Text(
                                    "Loading..",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: sH * 0.026,
                                    ),
                                  )
                                : Text(
                                    '₹ ${d.rateRef[0]['rates'][1].toString()}',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: sH * 0.026,
                                    ),
                                  ),
                          ),
                        ),
                      ),
                      Container(
                        height: sH * 0.075,
                        child: Card(
                          child: ListTile(
                            leading: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                  'assets/silverbar.png',
                                  color: Colors.grey.shade600,
                                  height: sH * 0.04,
                                )),
                            title: Column(
                              children: [
                                Text(
                                  'Silver Bar/चांदी ब्रेड',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: sH * 0.02),
                                ),
                                d.rateRef.isEmpty
                                    ? Text(
                                        "Loading",
                                        style: TextStyle(
                                            color: Colors.red,
                                            fontSize: sH * 0.013),
                                      )
                                    : Text(
                                        "Last Updated ${d.rateRef[0]['lastupdated'].toString()}",
                                        style: TextStyle(
                                            color: Colors.red,
                                            fontSize: sH * 0.013),
                                      )
                              ],
                            ),
                            trailing: d.rateRef.isEmpty
                                ? Text(
                                    "Loading..",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: sH * 0.026,
                                    ),
                                  )
                                : Text(
                                    '₹ ${d.rateRef[0]['rates'][2].toString()}',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: sH * 0.026,
                                    ),
                                  ),
                          ),
                        ),
                      ),
                      Container(
                        height: sH * 0.075,
                        child: Card(
                          child: ListTile(
                            leading: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                  'assets/upi.png',
                                  height: sH * 0.04,
                                )),
                            title: Column(
                              children: [
                                Text(
                                  'RTGS/UPI/सोना ब्रेड',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: sH * 0.02),
                                ),
                                d.rateRef.isEmpty
                                    ? Text(
                                        "Loading",
                                        style: TextStyle(
                                            color: Colors.red,
                                            fontSize: sH * 0.013),
                                      )
                                    : Text(
                                        "Last Updated ${d.rateRef[0]['lastupdated'].toString()}",
                                        style: TextStyle(
                                            color: Colors.red,
                                            fontSize: sH * 0.013),
                                      )
                              ],
                            ),
                            trailing: d.rateRef.isEmpty
                                ? Text(
                                    "Loading..",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: sH * 0.026,
                                    ),
                                  )
                                : Text(
                                    '₹ ${d.rateRef[0]['rates'][3].toString()}',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: sH * 0.026,
                                    ),
                                  ),
                          ),
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
                    text: d.message2.isEmpty
                        ? "Loading"
                        : d.message2[0]['messages'].toString(),
                    style: TextStyle(
                      fontSize: sH * 0.026,
                      color: Colors.black,
                    ),
                    speed: 15,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
