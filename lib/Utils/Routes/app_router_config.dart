import 'dart:convert';

import 'package:fluttemp/Models/show.dart';
import 'package:fluttemp/View/Pages/Details%20Screen/details_screen.dart';
import 'package:fluttemp/View/Pages/HomeScreen/home.dart';
import 'package:fluttemp/View/Pages/Search%20Screen/search_screen.dart';
import 'package:fluttemp/View/Pages/homepagewithBottomNavBar.dart';

import 'package:go_router/go_router.dart';

class AppRouter {
  static final GoRouter router = GoRouter(routes: [
    GoRoute(
        path: '/',
        builder: (context, state) {
          return const MainPage();
        },
        routes: [
          GoRoute(
              path: 'details',
              builder: (context, state) {
                Show selectedShow = state.extra as Show;

                return DetailScreen(showDetails: selectedShow);
              }),
          GoRoute(
              path: 'search',
              builder: (context, state) {
                return const SearchScreen();
              })
        ])
  ]);
}
