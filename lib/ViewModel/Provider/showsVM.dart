import 'package:fluttemp/Models/show.dart';
import 'package:fluttemp/Services/api_service.dart';
import 'package:fluttemp/Utils/constants.dart';
import 'package:flutter/material.dart';

class ShowsViewModel extends ChangeNotifier {
  bool isLoading = false;
  final ApiService apiService = ApiService();
  List<Show> allShows = [];
  List<Show> searchedShows = [];
  Future<void> getAllShows() async {
    allShows = await apiService.fetchShows('$baseUrl${searchEndPoint}all');
    isLoading = true;
    notifyListeners();
  }

  Future<void> getSearchedShows(String query) async {
    searchedShows =
        await ApiService().fetchShows(baseUrl + searchEndPoint + query);
    notifyListeners();
  }
}
