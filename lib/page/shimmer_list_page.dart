import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

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
                margin: const EdgeInsets.only(top: 20, right: 20, left: 20, bottom: 5),
                child: Shimmer.fromColors(
                  baseColor: Colors.grey,
                  highlightColor: Colors.grey[200],
                    child: Container(
                      height: 300,
                      width: 300,
                      color: Colors.white,
                    ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: Shimmer.fromColors(
                  baseColor: Colors.grey,
                  highlightColor: Colors.grey[200],
                  child: Container(
                    margin: const EdgeInsets.only(top: 10),
                    height: 20,
                    width: 280,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}