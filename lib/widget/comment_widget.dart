import 'package:flutter/material.dart';
import 'package:postloader_fl/api/API.dart';
import 'package:postloader_fl/model/data_model.dart';
import 'package:http/http.dart' as http;
import 'package:postloader_fl/widget/shimmer_comments_widget.dart';

class Comments extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      height: MediaQuery.of(context).size.height - 435,
      width: double.infinity,
      child: FutureBuilder<List<CommentsData>>(
        future: fetchComments(http.Client()),
        builder: (context, snapshot) {
          if (snapshot.hasError) print(snapshot.error);
          return snapshot.hasData
              ? CommentList(comments: snapshot.data)
              : ShimmerCommentList();
        },
      ),
    );
  }
}

class CommentList extends StatelessWidget {
  final List<CommentsData> comments;

  CommentList({this.comments});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: comments.length,
        itemBuilder: (context, index) => ListTile(
          leading: CircleAvatar(
            child: Text(comments[index].email[0]),
          ),
          title: Text(
            comments[index].name,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 18,
              color: Colors.black,
            ),
          ),
          subtitle: Text(
            comments[index].body,
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }
}

