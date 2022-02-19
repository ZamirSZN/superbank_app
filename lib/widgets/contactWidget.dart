import 'package:flutter/material.dart';
import 'package:superbank_app/screens/PayScreen.dart';

import 'favoriteButton.dart';

class ContactListTile extends StatefulWidget {
  const ContactListTile(
      {Key? key,
      required this.is_favorite,
      required this.contact_name,
      required this.contact_email,
      required this.contact_image})
      : super(key: key);

  final String contact_name;
  final String contact_email;
  final String contact_image;
  final bool is_favorite;

  @override
  _ContactListTileState createState() => _ContactListTileState();
}

class _ContactListTileState extends State<ContactListTile> {
  @override
  Widget build(BuildContext context) {
    goto_payscreen(BuildContext context) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (BuildContext context) {
            return const PayScreen();
          },
        ),
      );
    }

    return ListTile(
      contentPadding: const EdgeInsets.symmetric(vertical: 0.0),
      leading: Image(
        image: AssetImage(widget.contact_image),
      ),
      title: Text(widget.contact_name),
      onTap: () {
        goto_payscreen(context);
      },
      subtitle: Text(widget.contact_email),
      trailing: FavoriteButton(),
    );
  }
}
