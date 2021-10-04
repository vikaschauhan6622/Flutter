import 'package:flutter/material.dart';

class LikeDislike extends StatefulWidget {
  const LikeDislike({Key? key}) : super(key: key);

  @override
  _LikeDislikeState createState() => _LikeDislikeState();
}

class _LikeDislikeState extends State<LikeDislike> {
  bool _isFavorited = true;
  int _favoriteCount = 41;

  void _toggleFavorite() {
    setState(() {
      if (_isFavorited) {
        _favoriteCount -= 1;
        _isFavorited = false;
      } else {
        _favoriteCount += 1;
        _isFavorited = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.all(0),
              child: IconButton(
                padding: const EdgeInsets.all(0),
                alignment: Alignment.centerRight,
                icon: (_isFavorited
                    ? const Icon(Icons.star)
                    : const Icon(Icons.star_border)),
                color: Colors.red[500],
                onPressed: _toggleFavorite,
              ),
            ),
            SizedBox(
              width: 18,
              child: SizedBox(
                child: Text('$_favoriteCount'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
