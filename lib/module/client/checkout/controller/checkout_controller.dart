import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:desktop_cashier/riverpod_util.dart';
import '../view/checkout_view.dart';
import 'package:flutter/material.dart';

class CheckoutController extends ChangeNotifier implements HyperController {
  CheckoutView? view;
  List checkoutItem = [
    {
      "img":
          "https://images.unsplash.com/photo-1572490122747-3968b75cc699?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
      "title": "Carammel Frappuccino",
      "qty": 1,
      "price": "Rp. 20.000"
    },
    {
      "img":
          "https://images.unsplash.com/photo-1627998792088-f8016b438988?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
      "title": "Chocolate Frappuccino",
      "qty": 1,
      "price": "Rp. 15.000"
    },
    {
      "img":
          "https://images.unsplash.com/photo-1594261956806-3ad03785c9b4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
      "title": "Coffe Latte Frappuccino",
      "qty": 1,
      "price": "Rp. 20.000"
    }
  ];

  List payment = [
    {"icon": Icons.money_outlined, "title": "Cash"},
    {"icon": Icons.calendar_view_day, "title": "Debit"},
    {"icon": Icons.qr_code, "title": "E-Wallet"},
  ];
}

final checkoutController = ChangeNotifierProvider<CheckoutController>((ref) {
  return CheckoutController();
});
