import 'package:flutter/material.dart';

import 'package:postloader_fl/api/API.dart';
import 'package:postloader_fl/model/data_model.dart';
import 'package:postloader_fl/page/post_list_page.dart';

import 'package:http/http.dart' as http;
import 'package:postloader_fl/page/shimmer_list_page.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<PhotoData>>(
        future: fetchPhotos(http.Client()),
        builder: (context, snapshot) {
          if (snapshot.hasError) print(snapshot.error);
          return snapshot.hasData
              ? PostList(photos: snapshot.data)
              : ShimmerList();
        },
      ),
    );
  }
}