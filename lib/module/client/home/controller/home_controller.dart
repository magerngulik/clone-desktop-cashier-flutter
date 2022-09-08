import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:desktop_cashier/riverpod_util.dart';
import '../view/home_view.dart';

class HomeController extends ChangeNotifier implements HyperController {
  HomeView? view;
}

final homeController =
    ChangeNotifierProvider<HomeController>((ref) {
  return HomeController();
});