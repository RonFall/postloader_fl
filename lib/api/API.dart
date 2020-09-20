import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:postloader_fl/model/data_model.dart';

Future<List<PhotoData>> fetchPhotos(http.Client client) async {
  final response = await client.get('https://jsonplaceholder.typicode.com/albums/1/photos');
  return compute(parsePhotos, response.body);
}

List<PhotoData> parsePhotos(String responseBody) {
  final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();
  return parsed.map<PhotoData>((json) => PhotoData.fromJson(json)).toList();
}