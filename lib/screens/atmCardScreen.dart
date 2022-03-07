import 'package:flutter/material.dart';
import 'package:superbank_app/widgets/atmCardWidget.dart';

class AtmCardScreen extends StatelessWidget {
  const AtmCardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Super Card",
          style: TextStyle(
            color: Colors.black87,
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
        ),
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
        backgroundColor: Colors.white,
        elevation: 0.2,
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.vertical,
            child: Center(
              child: Column(
                children: const [
                  ATMCardWidget(
                    card_background_image: "mastercard_background.png",
                    card_width: 315,
                    card_text_color: Colors.white,
                    card_icon: "images/visa_icon.png",
                    card_balance: "1,260.28",
                    card_number: "**** **** **** 7735",
                    card_expiry_date: "08/28",
                    card_background_color: Colors.black87,
                  ),
                  ATMCardWidget(
                    card_background_image: "mastercard_background.png",
                    card_width: 315,
                    card_text_color: Colors.black87,
                    card_icon: "images/mastercard_icon.png",
                    card_balance: "1,260.28",
                    card_number: "**** **** **** 7735",
                    card_expiry_date: "08/28",
                    card_background_color: Color.fromRGBO(242, 178, 144, 1),
                  ),
                  ATMCardWidget(
                    card_background_image: "mastercard_background.png",
                    card_width: 315,
                    card_text_color: Colors.black87,
                    card_icon: "images/visa_icon.png",
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
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              side: const BorderSide(
                width: 0.2,
                color: Colors.black87,
              ),
              primary: Colors.white,
              textStyle: const TextStyle(fontWeight: FontWeight.bold),
              minimumSize: const Size(315, 50),
              elevation: 0.1,
            ),
            onPressed: () {},
            icon: const Icon(
              Icons.add,
              color: Colors.black87,
            ),
            label: const Text(
              "Add Card",
              style: TextStyle(
                color: Colors.black87,
                fontFamily: "Chirp",
              ),
            ),
          )
        ],
      ),
    );
  }
}
