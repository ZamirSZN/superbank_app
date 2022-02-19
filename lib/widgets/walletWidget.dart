import 'package:flutter/material.dart';

class WalletWidget extends StatelessWidget {
  final String walletName;
  final String walletBalance;
  final String walletIcon;

  // final BorderRadius borderRadius;

  WalletWidget({
    Key? key,
    required this.walletName,
    required this.walletBalance,
    required this.walletIcon,

    // required this.borderRadius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 150,
      margin: const EdgeInsets.fromLTRB(10, 10, 5, 10),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.grey.shade50,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: () {},
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                walletIcon,
                height: 25,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                walletName,
                style: const TextStyle(color: Colors.grey),
              ),
              Row(
                children: [
                  const Text(
                    "\$ ",
                    style: TextStyle(color: Colors.black87),
                  ),
                  Text(
                    walletBalance,
                    style: const TextStyle(fontSize: 18, color: Colors.black87),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
