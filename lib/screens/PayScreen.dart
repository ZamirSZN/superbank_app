// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:superbank_app/screens/confirmPayScreen.dart';
import 'package:superbank_app/widgets/favoriteButton.dart';

class PayScreen extends StatelessWidget {
  const PayScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.black87,
            )),
        title: Text(
          "Send to Personal",
          style: TextStyle(color: Colors.black87),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          // ignore: prefer_const_literals_to_create_immutables
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Center(
                child: Column(
                  children: [
                    Image(
                      image: AssetImage("images/aeesha.png"),
                      height: 150,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "Aeesha Sabiu",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        FavoriteButton(),
                      ],
                    ),
                    Text(
                      "aeeshasabiu@gmail.com",
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Amount",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15.0),
                    child: TextField(
                      autofocus: false,
                      decoration: InputDecoration(
                        focusColor: Colors.black,
                        contentPadding: EdgeInsets.all(15.0),
                        suffixIconColor: Colors.black87,
                        hintText: "\$ 0.00",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Note",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "0/50",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 15,
                    ),
                    child: TextField(
                      autofocus: false,
                      decoration: InputDecoration(
                        focusColor: Colors.black,
                        contentPadding: EdgeInsets.all(15.0),
                        suffixIconColor: Colors.black87,
                        hintText: "Notes",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 80,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ConfirmPayScreen(),
                      ),
                    );
                  },
                  child: Text("Continue"),
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(480, 55),
                      primary: Colors.grey.withAlpha(225),
                      shadowColor: Colors.black87,
                      textStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                        fontFamily: "Chirp",
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
