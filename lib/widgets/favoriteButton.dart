import 'package:flutter/material.dart';

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({Key? key}) : super(key: key);

  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  @override
  Widget build(BuildContext context) {
    bool contact_is_favorite = false;
    Icon favoriteContact = contact_is_favorite
        ? const Icon(Icons.star_rate_rounded)
        : const Icon(
            Icons.star_rounded,
            color: Colors.yellow,
          );
    return IconButton(
      padding: EdgeInsets.all(0.0),
      tooltip: "favorite",
      icon: favoriteContact,
      onPressed: () {
        setState(() {
          contact_is_favorite = !contact_is_favorite;
        });
      },
    );
  }
}
