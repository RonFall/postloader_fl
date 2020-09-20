import 'package:shimmer/shimmer.dart';
import 'package:flutter/material.dart';

onShim(double height, double width, EdgeInsets margin) => Shimmer.fromColors(
  baseColor: Colors.grey,
  highlightColor: Colors.grey[200],
  child: Container(
    margin: margin,
    height: height,
    width: width,
    color: Colors.white,
  ),
);