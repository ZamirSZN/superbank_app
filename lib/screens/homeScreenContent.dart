import "package:flutter/material.dart";
import 'package:flutter/services.dart';
import 'package:superbank_app/widgets/atmCardWidget.dart';
import 'package:superbank_app/widgets/walletWidget.dart';

class HomeScreenContent extends StatefulWidget {
  const HomeScreenContent({Key? key}) : super(key: key);

  @override
  _HomeScreenContentState createState() => _HomeScreenContentState();
}

class _HomeScreenContentState extends State<HomeScreenContent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarBrightness: Brightness.light,
          statusBarColor: Colors.white,
          statusBarIconBrightness: Brightness.dark,
        ),
        backgroundColor: Colors.white,
        elevation: 0.2,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
            ),
            padding: const EdgeInsets.only(
              right: 10,
            ),
          )
        ],
        title: RichText(
          text: TextSpan(
            text: 'Hi, ',
            style: DefaultTextStyle.of(context).style,
            children: const <TextSpan>[
              TextSpan(
                  text: 'Zamir!',
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              color: Colors.white,
              height: 150.0,
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    WalletWidget(
                      walletIcon: "images/paypal_icon.png",
                      walletName: "PayPal Balance",
                      walletBalance: "1,260.28",
                    ),
                    WalletWidget(
                      walletIcon: "images/amazon_icon.png",
                      walletName: "Amazon",
                      walletBalance: "2,450.78",
                    ),
                    WalletWidget(
                      walletIcon: "images/google_pay_icon.png",
                      walletName: "Google Pay",
                      walletBalance: "260.28",
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18, right: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Super Card",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                      size: 18,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              color: Colors.white,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                child: Row(
                  children: const [
                    ATMCardWidget(
                      card_background_image: "mastercard_background.png",
                      card_width: 300,
                      card_text_color: Colors.white,
                      card_icon: "images/visa_icon.png",
                      card_balance: "1,260.28",
                      card_number: "**** **** **** 7735",
                      card_expiry_date: "08/28",
                      card_background_color: Colors.black87,
                    ),
                    ATMCardWidget(
                      card_background_image: "mastercard_background.png",
                      card_width: 300,
                      card_text_color: Colors.black87,
                      card_icon: "images/mastercard_icon.png",
                      card_balance: "1,260.28",
                      card_number: "**** **** **** 7735",
                      card_expiry_date: "08/28",
                      card_background_color: Color.fromRGBO(242, 178, 144, 1),
                    ),
                    ATMCardWidget(
                      card_background_image: "mastercard_background.png",
                      card_width: 300,
                      card_text_color: Colors.black87,
                      card_icon: "images/mastercard_icon.png",
                      card_balance: "1,260.28",
                      card_number: "**** **** **** 7735",
                      card_expiry_date: "08/28",
                      card_background_color: Color.fromRGBO(237, 243, 251, 1),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18, right: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Super ATM",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                      size: 18,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: Container(),
            ),
          ],
        ),
      ),
    );
  }
}
