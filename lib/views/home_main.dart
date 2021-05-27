import 'package:chahatjewel/utils/colors_file.dart';
import 'package:chahatjewel/views/bank.dart';
import 'package:chahatjewel/views/contact.dart';
import 'package:chahatjewel/views/gallery.dart';
import 'package:chahatjewel/views/home.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class HomeMain extends StatefulWidget {
  @override
  _HomeMainState createState() => _HomeMainState();
}

class _HomeMainState extends State<HomeMain> {
  var _currentIndex = 0;
  List pages = [Home(), Gallery(), ContactUs(), BankDetails()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(
              Icons.menu,
              color: AppColors.goldDark,
            ),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 15,
                  backgroundColor: Color(0xffD1AF68),
                  child: Image.asset('assets/namaste.png'),
                ),
                Text(
                  "नमस्ते",
                  style: TextStyle(
                      color: AppColors.fontColor,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ],
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      bottomNavigationBar: Container(
        height: MediaQuery.of(context).size.height * 0.08,
        color: Colors.white,
        child: SalomonBottomBar(
          selectedItemColor: AppColors.goldDark,
          unselectedItemColor: AppColors.goldLite,
          currentIndex: _currentIndex,
          onTap: (i) => setState(() => _currentIndex = i),
          items: [
            SalomonBottomBarItem(
                icon: Icon(FontAwesomeIcons.home), title: Text('Home')),
            SalomonBottomBarItem(
                icon: Icon(FontAwesomeIcons.photoVideo),
                title: Text('Gallery')),
            SalomonBottomBarItem(
                icon: Icon(FontAwesomeIcons.addressBook),
                title: Text('Contact')),
            SalomonBottomBarItem(
                icon: Icon(FontAwesomeIcons.wallet), title: Text('Account'))
          ],
        ),
      ),
      body: pages[_currentIndex],
    );
  }
}
