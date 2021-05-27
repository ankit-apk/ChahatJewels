import 'package:chahatjewel/controllers/data_controller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class ContactUs extends StatefulWidget {
  @override
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  DataController dataController = Get.put(DataController());
  double screenHeight = 0;
  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Obx(
        () => SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 0, right: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      "OUR ADDRESS",
                      style: TextStyle(
                          color: Color(0xff2c5530),
                          fontSize: screenHeight * 0.022,
                          fontWeight: FontWeight.bold),
                    ),
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
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        Icon(
                          FontAwesomeIcons.mapMarked,
                          size: screenHeight * 0.1,
                          color: Color(0xfffbc02d),
                        ),
                        SizedBox(
                          height: screenHeight * 0.018,
                        ),
                        Text(
                          "26, Thatheri Nazar, Ghasi Tola, Varanasi, Uttar Pradesh\n221001",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xff2c5530),
                            fontSize: screenHeight * 0.03,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      "CONTACT US",
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
                  ListView.builder(
                      shrinkWrap: true,
                      itemCount: dataController.contactsRef.isEmpty
                          ? 0
                          : dataController.contactsRef.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            buildContainer(index),
                          ],
                        );
                      })
                  // buildContainer(0, 1),
                  // buildContainer(2, 3),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Container buildContainer(int index) {
    return Container(
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
                    dataController.contactsRef[index]['name'].toString(),
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: screenHeight * 0.026),
                  ),
                  Text(
                    dataController.contactsRef[index]['number'].toString(),
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: screenHeight * 0.024),
                  ),
                ],
              ),
              Container(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextButton(
                      onPressed: () {
                        dataController.launchWhatsapp(
                          dataController.contactsRef[index]['number']
                              .toString(),
                        );
                      },
                      child:
                          Icon(FontAwesomeIcons.whatsapp, color: Colors.green),
                    ),
                    SizedBox(
                      width: screenHeight * 0.028,
                    ),
                    TextButton(
                      onPressed: () {
                        dataController.launchPhone(
                          dataController.contactsRef[index]['number']
                              .toString(),
                        );
                      },
                      child: Icon(FontAwesomeIcons.phone, color: Colors.blue),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
