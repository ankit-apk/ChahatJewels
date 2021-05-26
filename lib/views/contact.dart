import 'package:chahatjewel/controllers/data_controller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class ContactUs extends StatefulWidget {
  @override
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  DataController d = Get.put(DataController());
  double sH = 0;
  @override
  Widget build(BuildContext context) {
    sH = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "OUR ADDRESS",
                style: TextStyle(
                    color: Color(0xff2c5530),
                    fontSize: sH * 0.022,
                    fontWeight: FontWeight.bold),
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
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    Icon(
                      FontAwesomeIcons.mapMarked,
                      size: sH * 0.1,
                      color: Color(0xfffbc02d),
                    ),
                    SizedBox(
                      height: sH * 0.018,
                    ),
                    Text(
                      "26, Thatheri Nazar, Ghasi Tola, Varanasi, Uttar Pradesh\n221001",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xff2c5530),
                        fontSize: sH * 0.03,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "CONTACT US",
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
              Container(
                // height: sH * 0.12,
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Obx(
                          () => Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                d.contactsRef[0]['contacts'][0].toString(),
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: sH * 0.026),
                              ),
                              Text(
                                d.contactsRef[0]['contacts'][1].toString(),
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: sH * 0.024),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              TextButton(
                                onPressed: () {
                                  d.launchWhatsapp(d.contactsRef[0]['contacts']
                                          [1]
                                      .toString());
                                },
                                child: Icon(FontAwesomeIcons.whatsapp,
                                    color: Colors.green),
                              ),
                              SizedBox(
                                width: sH * 0.028,
                              ),
                              TextButton(
                                onPressed: () {
                                  d.launchPhone(d.contactsRef[0]['contacts'][1]
                                      .toString());
                                },
                                child: Icon(FontAwesomeIcons.phone,
                                    color: Colors.blue),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                // height: sH * 0.12,
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              d.contactsRef[0]['contacts'][2].toString(),
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: sH * 0.026),
                            ),
                            Text(
                              d.contactsRef[0]['contacts'][3].toString(),
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: sH * 0.024),
                            ),
                          ],
                        ),
                        Container(
                          child: Row(
                            // mainAxisSize: MainAxisSize.min,
                            children: [
                              TextButton(
                                onPressed: () {
                                  d.launchWhatsapp(d.contactsRef[0]['contacts']
                                          [3]
                                      .toString());
                                },
                                child: Icon(FontAwesomeIcons.whatsapp,
                                    color: Colors.green),
                              ),
                              SizedBox(
                                width: sH * 0.028,
                              ),
                              TextButton(
                                onPressed: () {
                                  d.launchPhone(d.contactsRef[0]['contacts'][3]
                                      .toString());
                                },
                                child: Icon(FontAwesomeIcons.phone,
                                    color: Colors.blue),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
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
