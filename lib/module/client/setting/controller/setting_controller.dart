import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:desktop_cashier/riverpod_util.dart';
import '../view/setting_view.dart';

class SettingController extends ChangeNotifier implements HyperController {
  SettingView? view;
}

final settingController =
    ChangeNotifierProvider<SettingController>((ref) {
  return SettingController();
});