import 'package:flutter/material.dart';

class BankDetails extends StatefulWidget {
  @override
  _BankDetailsState createState() => _BankDetailsState();
}

class _BankDetailsState extends State<BankDetails> {
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
                "BANK DETAILS",
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
                    Image.asset(
                      'assets/bank.png',
                      height: sH * 0.12,
                      color: Color(0xfffbc02d),
                    ),
                    SizedBox(
                      height: sH * 0.10,
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
                                Text(
                                  "Bank",
                                  style: TextStyle(
                                    color: Color(0xff2c5530),
                                    fontSize: sH * 0.024,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "A/C Name",
                                  style: TextStyle(
                                    color: Color(0xff2c5530),
                                    fontSize: sH * 0.024,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "A/C Number",
                                  style: TextStyle(
                                    color: Color(0xff2c5530),
                                    fontSize: sH * 0.024,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "IFSC Code",
                                  style: TextStyle(
                                    color: Color(0xff2c5530),
                                    fontSize: sH * 0.024,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "Branch",
                                  style: TextStyle(
                                    color: Color(0xff2c5530),
                                    fontSize: sH * 0.024,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "HDFC",
                                  style: TextStyle(
                                    color: Color(0xff2c5530),
                                    fontSize: sH * 0.024,
                                  ),
                                ),
                                Text(
                                  "Chahat Ornaments",
                                  style: TextStyle(
                                    color: Color(0xff2c5530),
                                    fontSize: sH * 0.024,
                                  ),
                                ),
                                Text(
                                  "50200053718511",
                                  style: TextStyle(
                                    color: Color(0xff2c5530),
                                    fontSize: sH * 0.024,
                                  ),
                                ),
                                Text(
                                  "HDFC0009136",
                                  style: TextStyle(
                                    color: Color(0xff2c5530),
                                    fontSize: sH * 0.024,
                                  ),
                                ),
                                Text(
                                  "Nichibagh",
                                  style: TextStyle(
                                    color: Color(0xff2c5530),
                                    fontSize: sH * 0.024,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: sH * 0.018,
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
                                Text(
                                  "Bank",
                                  style: TextStyle(
                                    color: Color(0xff2c5530),
                                    fontSize: sH * 0.024,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "A/C Name",
                                  style: TextStyle(
                                    color: Color(0xff2c5530),
                                    fontSize: sH * 0.024,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "A/C Number",
                                  style: TextStyle(
                                    color: Color(0xff2c5530),
                                    fontSize: sH * 0.024,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "IFSC Code",
                                  style: TextStyle(
                                    color: Color(0xff2c5530),
                                    fontSize: sH * 0.024,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "Branch",
                                  style: TextStyle(
                                    color: Color(0xff2c5530),
                                    fontSize: sH * 0.024,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "PNB",
                                  style: TextStyle(
                                    color: Color(0xff2c5530),
                                    fontSize: sH * 0.024,
                                  ),
                                ),
                                Text(
                                  "Chahat Ornaments",
                                  style: TextStyle(
                                    color: Color(0xff2c5530),
                                    fontSize: sH * 0.024,
                                  ),
                                ),
                                Text(
                                  "0464002100102020",
                                  style: TextStyle(
                                    color: Color(0xff2c5530),
                                    fontSize: sH * 0.024,
                                  ),
                                ),
                                Text(
                                  "PUNB00046400",
                                  style: TextStyle(
                                    color: Color(0xff2c5530),
                                    fontSize: sH * 0.024,
                                  ),
                                ),
                                Text(
                                  "Nichibagh",
                                  style: TextStyle(
                                    color: Color(0xff2c5530),
                                    fontSize: sH * 0.024,
                                  ),
                                )
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
      ),
    );
  }
}
