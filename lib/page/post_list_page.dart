import 'package:flutter/material.dart';
import 'package:postloader_fl/model/data_model.dart';

class PostList extends StatelessWidget {
  final List<PhotoData> photos;

  const PostList({Key key, this.photos}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: photos.length,
        itemBuilder: (context, index) => Container(
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
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}