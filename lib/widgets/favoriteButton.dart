import 'package:flutter/material.dart';

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({Key? key}) : super(key: key);

  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool is_favorite = false;
  @override
  Widget build(BuildContext context) {
    Icon favorite_icon = is_favorite
        ? const Icon(Icons.star_rate_rounded)
        : const Icon(
            Icons.star_rounded,
            color: Colors.yellow,
          );
    return IconButton(
      padding: EdgeInsets.all(0.0),
      tooltip: "favorite",
      icon: favorite_icon,
      onPressed: () {
        setState(() {
          is_favorite = !is_favorite;
        });
      },
    );
  }
}
