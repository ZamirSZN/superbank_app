import 'package:flutter/material.dart';
import 'package:superbank_app/widgets/contactWidget.dart';

class TransactionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              toolbarHeight: 5,
              elevation: 0,
              bottom: const TabBar(
                labelColor: Colors.black87,
                indicatorColor: Colors.black87,
                tabs: [
                  Tab(text: "Send/Pay", icon: null, child: null),
                  Tab(text: "Top Up", icon: null, child: null),
                  Tab(text: "Request", icon: null, child: null),
                ],
              ),
            ),
            body: TabBarView(
              physics: const BouncingScrollPhysics(),
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    TextField(
                      autofocus: false,
                      decoration: InputDecoration(
                        focusColor: Colors.black,
                        suffixIcon: Icon(Icons.search),
                        contentPadding: EdgeInsets.all(15.0),
                        suffixIconColor: Colors.black87,
                        hintText: "Search contact",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: const BorderSide(
                            width: 0.05,
                            style: BorderStyle.none,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Last Transactions",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      child: Column(
                        children: const [
                          ContactListTile(
                            is_favorite: true,
                            contact_email: "aeeshasabiu@gmail.com",
                            contact_image: "images/aeesha.png",
                            contact_name: 'Aeesha Sabiu',
                          ),
                          ContactListTile(
                            is_favorite: true,
                            contact_email: "sewa@gmail.com",
                            contact_image: "images/sewa.png",
                            contact_name: 'Sewa Adesewa',
                          ),
                          ContactListTile(
                            is_favorite: false,
                            contact_email: "nikoarthur@gmail.com",
                            contact_image: "images/hair_guy.png",
                            contact_name: 'Niko Arthur',
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "All Contacts",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      physics: const BouncingScrollPhysics(),
                      child: Column(
                        children: const [
                          ContactListTile(
                            is_favorite: true,
                            contact_email: "mohammadidi@gmail.com",
                            contact_image: "images/armfold_guy.png",
                            contact_name: 'Mohammad Idi',
                          ),
                          ContactListTile(
                            is_favorite: true,
                            contact_email: "zamirszn@gmail.com",
                            contact_image: "images/nerd_guy.png",
                            contact_name: 'Mubarak Mundi',
                          ),
                        ],
                      ),
                    ),
                  ],
                ), //tab 1
                Column(), //tab 2
                Column(), //tab 3
              ],
            ),
          )),
    );
  }
}
