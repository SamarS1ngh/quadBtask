import 'dart:developer';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:fluttemp/Models/score.dart';
import 'package:fluttemp/Models/show.dart';

class ApiService {
  Future<List<Show>> fetchShows(String url) async {
    final Dio dio = Dio();
    List<Show> list = [];
    try {
      print('inititating api call');
      print(url);

      final response = await dio.get(url);
      //  print(response.data.toString());
      if (response.statusCode == 200) {
        log('api call succesfull');

        final List data = response.data;
        for (int i = 0; i < data.length; i++) {
          final Show show = Show.fromJson(data[i]['show']);
          list.add(show);
        }
        return list;
      } else {
        print('error code ${response.statusCode}');
      }
    } catch (e) {
      log('Error $e');
    }
    return [];
  }
}
