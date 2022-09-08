import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:desktop_cashier/riverpod_util.dart';
import '../view/history_view.dart';

class HistoryController extends ChangeNotifier implements HyperController {
  HistoryView? view;
}

final historyController =
    ChangeNotifierProvider<HistoryController>((ref) {
  return HistoryController();
});