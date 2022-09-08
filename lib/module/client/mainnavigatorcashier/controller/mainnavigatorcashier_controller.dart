import 'package:desktop_cashier/module/client/history/view/history_view.dart';
import 'package:desktop_cashier/module/client/home/view/home_view.dart';
import 'package:desktop_cashier/module/client/menu/view/menu_view.dart';
import 'package:desktop_cashier/module/client/promos/view/promos_view.dart';
import 'package:desktop_cashier/module/client/wallet/view/wallet_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:desktop_cashier/riverpod_util.dart';
import '../view/mainnavigatorcashier_view.dart';
import 'package:flutter/material.dart';

class MainnavigatorcashierController extends ChangeNotifier
    implements HyperController {
  MainnavigatorcashierView? view;

  List manu = [
    {"name": "Home", "icon": Icons.home, "screen": HomeView()},
    {
      "name": "Menu",
      "icon": Icons.food_bank,
      "screen": MenuView(),
      "selected": true
    },
    {
      "name": "History",
      "icon": Icons.history_toggle_off_outlined,
      "screen": HistoryView()
    },
    {"name": "Wallet", "icon": Icons.wallet, "screen": WalletView()},
    {"name": "Promos", "icon": Icons.discount_outlined, "screen": PromosView()},
    {
      "name": "Setting",
      "icon": Icons.settings,
    },
  ];

  List categories = [
    {"categories": "All", "icon": "assets/icon/beer.png", "pilih": true},
    {"categories": "Coffe", "icon": "assets/icon/coffee.png"},
    {"categories": "Juice", "icon": "assets/icon/orange-juice.png"},
    {"categories": "Milk Based", "icon": "assets/icon/milk.png"},
    {"categories": "Snack", "icon": "assets/icon/nachos.png"},
    {"categories": "Rice", "icon": "assets/icon/rice.png"},
    {"categories": "Dessert", "icon": "assets/icon/pancakes.png"},
  ];

  List product = [
    {
      "name": "Carammel Frappuccino",
      "img":
          "https://images.unsplash.com/photo-1572490122747-3968b75cc699?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
      "deskripsi":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      "price": "Rp. 20000"
    },
    {
      "name": "Chocolate Frappuccino",
      "img":
          "https://images.unsplash.com/photo-1627998792088-f8016b438988?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
      "deskripsi":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      "price": "Rp. 20000"
    },
    {
      "name": "Coffe Latte Frappuccino",
      "img":
          "https://images.unsplash.com/photo-1594261956806-3ad03785c9b4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
      "deskripsi":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      "price": "Rp. 20000"
    },
    {
      "name": "Pepermine Macchiato",
      "img":
          "https://images.unsplash.com/photo-1639088644813-0b637985b881?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
      "deskripsi":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      "price": "Rp. 20000"
    },
    {
      "name": "Esspresso",
      "img":
          "https://images.unsplash.com/photo-1642694227014-3736f7dcb64a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=711&q=80",
      "deskripsi":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      "price": "Rp. 20000"
    },
    {
      "name": "Iced Salted Caramel Macchiato",
      "img":
          "https://images.unsplash.com/photo-1662047102608-a6f2e492411f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
      "deskripsi":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      "price": "Rp. 20000"
    },
  ];
}

final mainnavigatorcashierController =
    ChangeNotifierProvider<MainnavigatorcashierController>((ref) {
  return MainnavigatorcashierController();
});
