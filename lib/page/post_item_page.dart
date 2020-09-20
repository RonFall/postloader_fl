import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:postloader_fl/model/data_model.dart';
import 'package:postloader_fl/widget/comment_widget.dart';

class PostItem extends StatelessWidget {
  final num index;
  final List<PhotoData> photos;

  PostItem({Key key, this.index, this.photos}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 20, right: 20, left: 20, bottom: 5),
              child: Image.network(photos[index].url),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                photos[index].title,
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                textAlign: TextAlign.center,
              ),
            ),
            Comments(),
          ],
        ),
      ),
    );
  }
}