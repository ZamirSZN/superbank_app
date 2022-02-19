import 'package:flutter/material.dart';

class ATMCardWidget extends StatelessWidget {
  final String card_icon;
  final String card_balance;
  final String card_number;
  final String card_expiry_date;
  final Color card_background_color;
  final Color card_text_color;
  final double card_width;
  final String card_background_image;

  const ATMCardWidget(
      {Key? key,
      required this.card_icon,
      required this.card_balance,
      required this.card_number,
      required this.card_expiry_date,
      required this.card_background_color,
      required this.card_text_color,
      required this.card_width,
      required this.card_background_image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: card_width,
      height: 150,
      color: Colors.white,
      margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          primary: card_background_color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(11),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  card_icon,
                  height: 40,
                ),
                Text(
                  card_expiry_date,
                  style: const TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "\$  ",
                  style: TextStyle(color: card_text_color),
                ),
                Text(
                  card_balance,
                  style: TextStyle(color: card_text_color, fontSize: 25),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  card_number,
                  style: TextStyle(
                    color: card_text_color,
                    letterSpacing: 9,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
