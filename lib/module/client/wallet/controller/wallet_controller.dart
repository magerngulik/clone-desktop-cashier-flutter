import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:desktop_cashier/riverpod_util.dart';
import '../view/wallet_view.dart';

class WalletController extends ChangeNotifier implements HyperController {
  WalletView? view;
}

final walletController =
    ChangeNotifierProvider<WalletController>((ref) {
  return WalletController();
});