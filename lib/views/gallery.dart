import 'package:auto_size_text_pk/auto_size_text_pk.dart';
import 'package:chahatjewel/controllers/data_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Gallery extends StatefulWidget {
  @override
  _GalleryState createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {
  double screenHeight = 0;
  DataController dataController = Get.put(DataController());
  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Obx(
            () => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    "PRODUCT GALLERY",
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
                GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 0.8, crossAxisCount: 2),
                  itemCount: dataController.galleryRef.isEmpty
                      ? 0
                      : dataController.galleryRef.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Image.network(
                          dataController.galleryRef[index]['url'].toString(),
                          height: screenHeight * 0.2,
                        ),
                        AutoSizeText(
                          dataController.galleryRef[index]['name'].toString(),
                          maxLines: 2,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xff2c5530),
                            fontSize: screenHeight * 0.022,
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
