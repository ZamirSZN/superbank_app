import 'package:flutter/material.dart';
import 'package:superbank_app/screens/homeScreenContent.dart';
import 'package:superbank_app/screens/atmCardScreen.dart';
import 'package:superbank_app/screens/qrcodeScreen.dart';
import 'package:superbank_app/screens/settingScreen.dart';
import 'package:superbank_app/screens/contactScreen.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  _homeScreenState createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  List pages = [
    const HomeScreenContent(),
    const AtmCardScreen(),
    const QRCodeScreen(),
    TransactionScreen(),
    const SettingsScreen(),
  ];
  int currentPageIndex = 0;

  void onTapBottomNavButton(int index) {
    setState(() {
      currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentPageIndex],
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTapBottomNavButton,
        currentIndex: currentPageIndex,
        selectedItemColor: Colors.black87,
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        selectedFontSize: 0,
        unselectedFontSize: 0,
        items: const [
          BottomNavigationBarItem(
            label: "",
            icon: Icon(Icons.home_rounded),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(Icons.payment_rounded),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(Icons.qr_code_2_rounded),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(Icons.compare_arrows_rounded),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(Icons.settings_rounded),
          ),
        ],
      ),
    );
  }
}
