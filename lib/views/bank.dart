import 'package:chahatjewel/utils/colors_file.dart';
import 'package:flutter/material.dart';

class BankDetails extends StatefulWidget {
  @override
  _BankDetailsState createState() => _BankDetailsState();
}

class _BankDetailsState extends State<BankDetails> {
  double screenHeight = 0;
  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                "BANK DETAILS",
                style: TextStyle(
                    color: AppColors.fontColor,
                    fontSize: screenHeight * 0.022,
                    fontWeight: FontWeight.bold),
              ),
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
            Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  Image.asset(
                    'assets/bank.png',
                    height: screenHeight * 0.12,
                    color: AppColors.goldDark,
                  ),
                  SizedBox(
                    height: screenHeight * 0.10,
                  ),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              BankText(
                                  text: "Bank", screenHeight: screenHeight),
                              BankText(
                                  text: "A/C Name", screenHeight: screenHeight),
                              BankText(
                                  text: "A/C Number",
                                  screenHeight: screenHeight),
                              BankText(
                                  text: "IFSC Code",
                                  screenHeight: screenHeight),
                              BankText(
                                  text: "Branch", screenHeight: screenHeight),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              BankDetail(
                                  detail: "HDFC", screenHeight: screenHeight),
                              BankDetail(
                                  detail: "Chahat Ornaments",
                                  screenHeight: screenHeight),
                              BankDetail(
                                  detail: "50200053718511",
                                  screenHeight: screenHeight),
                              BankDetail(
                                  detail: "HDFC0009136",
                                  screenHeight: screenHeight),
                              BankDetail(
                                  detail: "Nichibagh",
                                  screenHeight: screenHeight),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.018,
                  ),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              BankText(
                                  text: "Bank", screenHeight: screenHeight),
                              BankText(
                                  text: "A/C Name", screenHeight: screenHeight),
                              BankText(
                                  text: "A/C Number",
                                  screenHeight: screenHeight),
                              BankText(
                                  text: "IFSC Code",
                                  screenHeight: screenHeight),
                              BankText(
                                  text: "Branch", screenHeight: screenHeight),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              BankDetail(
                                  detail: "PNB", screenHeight: screenHeight),
                              BankDetail(
                                  detail: "Chahat Ornaments",
                                  screenHeight: screenHeight),
                              BankDetail(
                                  detail: "0464002100102020",
                                  screenHeight: screenHeight),
                              BankDetail(
                                  detail: "PUNB00046400",
                                  screenHeight: screenHeight),
                              BankDetail(
                                  detail: "Nichibagh",
                                  screenHeight: screenHeight),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BankDetail extends StatelessWidget {
  const BankDetail({Key? key, required this.screenHeight, required this.detail})
      : super(key: key);

  final double screenHeight;
  final String detail;

  @override
  Widget build(BuildContext context) {
    return Text(
      "$detail",
      style: TextStyle(
        color: AppColors.fontColor,
        fontSize: screenHeight * 0.024,
      ),
    );
  }
}

class BankText extends StatelessWidget {
  const BankText({Key? key, required this.screenHeight, required this.text})
      : super(key: key);

  final double screenHeight;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      "$text",
      style: TextStyle(
        color: AppColors.fontColor,
        fontSize: screenHeight * 0.024,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
