import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:desktop_cashier/riverpod_util.dart';
import '../view/promos_view.dart';

class PromosController extends ChangeNotifier implements HyperController {
  PromosView? view;
}

final promosController =
    ChangeNotifierProvider<PromosController>((ref) {
  return PromosController();
});