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
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                "BANK DETAILS",
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
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  Image.asset(
                    'assets/bank.png',
                    height: screenHeight * 0.12,
                    color: Color(0xfffbc02d),
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
                              BankText(text: "Bank", sH: screenHeight),
                              BankText(text: "A/C Name", sH: screenHeight),
                              BankText(text: "A/C Number", sH: screenHeight),
                              BankText(text: "IFSC Code", sH: screenHeight),
                              BankText(text: "Branch", sH: screenHeight),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              BankDetail(detail: "HDFC", sH: screenHeight),
                              BankDetail(
                                  detail: "Chahat Ornaments", sH: screenHeight),
                              BankDetail(
                                  detail: "50200053718511", sH: screenHeight),
                              BankDetail(
                                  detail: "HDFC0009136", sH: screenHeight),
                              BankDetail(detail: "Nichibagh", sH: screenHeight),
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
                              BankText(text: "Bank", sH: screenHeight),
                              BankText(text: "A/C Name", sH: screenHeight),
                              BankText(text: "A/C Number", sH: screenHeight),
                              BankText(text: "IFSC Code", sH: screenHeight),
                              BankText(text: "Branch", sH: screenHeight),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              BankDetail(detail: "PNB", sH: screenHeight),
                              BankDetail(
                                  detail: "Chahat Ornaments", sH: screenHeight),
                              BankDetail(
                                  detail: "0464002100102020", sH: screenHeight),
                              BankDetail(
                                  detail: "PUNB00046400", sH: screenHeight),
                              BankDetail(detail: "Nichibagh", sH: screenHeight),
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
  const BankDetail({Key? key, required this.sH, required this.detail})
      : super(key: key);

  final double sH;
  final String detail;

  @override
  Widget build(BuildContext context) {
    return Text(
      "$detail",
      style: TextStyle(
        color: Color(0xff2c5530),
        fontSize: sH * 0.024,
      ),
    );
  }
}

class BankText extends StatelessWidget {
  const BankText({Key? key, required this.sH, required this.text})
      : super(key: key);

  final double sH;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      "$text",
      style: TextStyle(
        color: Color(0xff2c5530),
        fontSize: sH * 0.024,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
