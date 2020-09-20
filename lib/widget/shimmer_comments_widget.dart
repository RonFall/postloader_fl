import 'package:flutter/material.dart';

import '../util.dart';

class ShimmerCommentList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) => ListTile(
          leading: onShim(60, 60, null),
          title: onShim(20, 0, null),
          subtitle: onShim(60, 0, const EdgeInsets.only(top: 10, bottom: 5))
        ),
      ),
    );
  }
}