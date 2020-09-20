import 'package:flutter/material.dart';

import '../util.dart';

class ShimmerList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) => Container(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 20, right: 20, left: 20, bottom: 15),
                child: onShim(300, 300, null),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: onShim(20, 280, null),
              ),
            ],
          ),
        ),
      ),
    );
  }
}