import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:postloader_fl/page/home_page.dart';

void main() => runApp(PostLoaderApp());

class PostLoaderApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return MaterialApp(
      title: 'PostLoader',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
