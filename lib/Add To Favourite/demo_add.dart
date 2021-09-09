import 'package:badges/badges.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

import 'add_to_fevourite_list.dart';

class DemoFav extends StatefulWidget {
  @override
  _DemoFavState createState() => _DemoFavState();
}

class _DemoFavState extends State<DemoFav> {
  List<String> words = nouns.take(40).toList();
  List<String> savedWords = <String>[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo'),
        actions: <Widget>[
          Badge(
            badgeContent: Text('${savedWords.length}'),
            toAnimate: false,
            position: BadgePosition.topStart(top: 0, start: 0),
            child: IconButton(
              icon: Icon(Icons.bookmark),
              onPressed: () => pushToFavoriteWordsRoute(context),
            ),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: words.length,
        // separatorBuilder: (BuildContext context, int index) => Divider(),
        itemBuilder: (BuildContext context, int index) {
          String word = words[index];
          bool isSaved = savedWords.contains(word);

          return ListTile(
            title: Text(word),
            trailing: Icon(
              isSaved ? Icons.favorite : Icons.favorite_border,
              color: isSaved ? Colors.red : null,
            ),
            onTap: () {
              setState(() {
                if (isSaved) {
                  savedWords.remove(word);
                } else {
                  savedWords.add(word);
                }
              });
            },
          );
        },
      ),
    );
  }

  pushToFavoriteWordsRoute(BuildContext context) {
    return Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) => FavoriteWordsRoute(
          favoriteItems: savedWords,
        ),
      ),
    );
  }
}
