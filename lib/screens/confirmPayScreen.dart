import 'package:lottie/lottie.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ConfirmPayScreen extends StatelessWidget {
  const ConfirmPayScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarBrightness: Brightness.light,
          statusBarColor: Color.fromRGBO(38, 41, 46, 1),
          statusBarIconBrightness: Brightness.dark,
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
            )),
        title: const Text(
          "Send to Personal",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromRGBO(38, 41, 46, 1),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Container(
        color: const Color.fromRGBO(38, 41, 46, 1),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Column(
                  children: [
                    const Image(
                      image: AssetImage("images/aeesha.png"),
                      height: 150,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "Aeesha Sabiu",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    const Text(
                      "aeeshasabiu@gmail.com",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 70,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                    child: Text(
                      "\$ ",
                      style: TextStyle(color: Colors.white, fontSize: 19),
                    ),
                  ),
                  Text(
                    "100.00",
                    style: TextStyle(fontSize: 40, color: Colors.white),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text("Transfer on 28 Aug, 2021",
                    style: TextStyle(
                      color: Color.fromRGBO(242, 178, 144, 10),
                      fontSize: 15,
                      fontFamily: "Chirp",
                    )),
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(30, 30),
                  primary: const Color.fromRGBO(242, 178, 144, 224),
                  elevation: 0,
                ),
              ),
              const SizedBox(
                height: 140,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.pop(context);
                  // fix this to make it the app navigate  back to home screen after money is sent

                  Navigator.of(context).restorablePush(_dialogBuilder);
                },
                child: const Text("Send Money",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 15,
                      fontFamily: "Chirp",
                    )),
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(480, 55),
                  primary: const Color.fromRGBO(242, 178, 144, 1),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  static Route<Object?> _dialogBuilder(
      BuildContext context, Object? arguments) {
    return DialogRoute<void>(
      context: context,
      builder: (BuildContext context) => SimpleDialog(
        children: [
          Container(
            child: Lottie.asset(
              "lottie/sent.json",
            ),
          ),
        ],
      ),
    );
  }
}
//penkele messi